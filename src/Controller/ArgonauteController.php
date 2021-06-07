<?php

namespace App\Controller;

use App\Entity\Argonaute;
use App\Form\ArgonauteFormType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ArgonauteController extends AbstractController
{
    /**
     * @Route("/", name="argonaute")
     */
    public function index(Argonaute $argonaute = null, Request $request, EntityManagerInterface $manager): Response
    {
        // Searching all argonautes in databse
        $argonautes = $this->getDoctrine()
            ->getRepository(Argonaute::class)
            ->findAll();

        $numberOfArgonautes = $this->getDoctrine()
        ->getRepository(Argonaute::class)
        ->findNumberOfArgonautes();

        // Creating a new object of class Argonaute
        $argonaute = new Argonaute();

        // Creating a form for adding argonaute
        $form = $this->createFormBuilder($argonaute)
            ->add('nom', TextType::class, [
                'label' => 'Prénom',
                'attr' => array(
                    'pattern' => '[a-zA-ZáàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ]*'
                )
            ])
            ->add('submit', SubmitType::class)
            ->getForm();
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid() && $numberOfArgonautes < 50) {
            $manager->persist($argonaute);
            $manager->flush();

            $this->addFlash('success', 'Argonaute ajouté à l\'équipage !');

            return $this->redirectToRoute('argonaute');
        } else if ($numberOfArgonautes >= 50) {
            $this->addFlash('danger', 'L\'équipage est au complet !');
        }

        return $this->render('argonaute/index.html.twig', [
            'argonautes' => $argonautes,
            'numberOfArgonautes' => $numberOfArgonautes,
            "form_argonaute" => $form->createView(),
            'controller_name' => 'ArgonauteController',
        ]);
    }
}
