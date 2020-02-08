<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTeacherController extends CBController {


    public function cbInit()
    {
        $this->setTable("teacher");
        $this->setPermalink("teacher");
        $this->setPageTitle("Teacher");

        $this->addNumber("Teacher","teacher_id");
		$this->addText("Teacher Name","teacher_name")->strLimit(150)->maxLength(255);
		$this->addEmail("Email","email");
		$this->addNumber("Phone","phone");
		$this->addText("Present Address","present_address")->strLimit(150)->maxLength(255);
		$this->addText("Permanent Address","permanent_address")->strLimit(150)->maxLength(255);
		$this->addImage("Photo","photo")->encrypt(true);
		$this->addText("User Name","user_name")->strLimit(150)->maxLength(255);
		$this->addText("Password","password")->strLimit(150)->maxLength(255);
		

    }
}
