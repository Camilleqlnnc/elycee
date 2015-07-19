<?php

namespace SpljBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Doctrine\Common\Collections\ArrayCollection;

use SpljBundle\Entity\StudentAnswer;
use SpljBundle\Entity\Score;
use SpljBundle\Form\StudentAnswerType;
use SpljBundle\Form\ScoreType;
use Symfony\Component\HttpFoundation\Request as Request;

/**
 * @Route("/dashboard-student")
 */

class StudentController extends Controller
{

    /**
    * @Route(
    *   "/student-answer/{userId}/{mcqId}",
    *   name="splj.dashStudent.answer-mcq",
    *   defaults={"userId"=null, "mcqId"=null}
    * )
    *
    * @Template("SpljBundle:DashStudent:answer-mcq.html.twig")
    */
    public function AnswerAction(Request $request, $userId, $mcqId)
    {
        $mcqCurrent = $this->loadMcq($mcqId);
        $nbQuestion = $mcqCurrent->getNbQuestions();
        $score = new Score();

        for ($i=0; $i < $nbQuestion; $i++) { 
            $studentAnswer = new StudentAnswer();
            $score->getStudentAnswers()->add($studentAnswer);
        }
            
        $form = $this->createForm(new ScoreType(), $score, array(
            'action' => $this->generateUrl('splj.dashStudent.answer-mcq'),
            'method' => 'POST'
        ));

        $form->handleRequest($request);

        return $this->render('SpljBundle:DashStudent:answer-mcq.html.twig', array(
            'form' => $form->createView(),
            'mcqCurrent' => $mcqCurrent,
        ));
    }

    public function loadMcq($id)
    {   
        $doctrine = $this->getDoctrine()->getManager();
        $src = $doctrine->getRepository('SpljBundle:Mcq');
        $mcqCurrent = $src->find($id);
        
        $qb = $this->getDoctrine()->getRepository('SpljBundle:Question')->createQueryBuilder('q');
        $qb->select(array('q'))
            ->from('SpljBundle:Question', 'question')
            ->leftJoin(
                    'SpljBundle:Mcq',
                    'm',
                    'WITH',
                    'q.idQcm = m.id')
            ->where('m =:id')
            ->setParameter('id', $id);
        $query = $qb->getQuery();
        $questions = $query->getResult();

        $arrayCollection = new ArrayCollection($questions);
        $mcqCurrent->setQuestions($arrayCollection);

        for ($i=0; $i < sizeof($questions); $i++) {

            $questionCurrent = $questions[$i]->getId();

            $qb = $this->getDoctrine()->getRepository('SpljBundle:Answer')->createQueryBuilder('a');
            $qb->select(array('a'))
                ->from('SpljBundle:Answer', 'answer')
                ->leftJoin(
                        'SpljBundle:Question',
                        'q',
                        'WITH',
                        'a.idQuestion = q.id')
                ->where('q =:id')
                ->setParameter('id', $questionCurrent);
            $query = $qb->getQuery();
            $answers = $query->getResult();

            $arrayCollection = new ArrayCollection($answers);
            $questions[$i]->setAnswers($arrayCollection);

        }
        return $mcqCurrent;
    }
}
