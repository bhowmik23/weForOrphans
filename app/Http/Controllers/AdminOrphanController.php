<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminOrphanController extends CBController {


    public function cbInit()
    {
        $this->setTable("orphan");
        $this->setPermalink("orphan");
        $this->setPageTitle("Orphan");

        $this->addNumber("Student","student_id");
		$this->addText("Name","name")->strLimit(150)->maxLength(255);
		$this->addNumber("Roll","roll");
		$this->addNumber("Attendance","attendance");
		$this->addNumber("Result","result");
		$this->addText("Feedback","feedback")->strLimit(150)->maxLength(255);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		

    }
}
