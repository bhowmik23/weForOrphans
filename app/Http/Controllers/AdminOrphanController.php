<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminOrphanController extends CBController {


    public function cbInit()
    {
        $this->setTable("orphan");
        $this->setPermalink("orphan");
        $this->setPageTitle("Orphan");

        $this->addImage("Photo","photo")->encrypt(true);
		$this->addText("Name","name")->strLimit(150)->maxLength(255);
		$this->addText("Father Name","father_name")->required(false)->strLimit(150)->maxLength(255);
		$this->addText("Mother Name","mother_name")->required(false)->strLimit(150)->maxLength(255);
		$this->addText("Gardian Info","gardian_info")->required(false)->strLimit(150)->maxLength(255);
		$this->addText("Roll","roll")->strLimit(150)->maxLength(255);
		$this->addText("Attendance","attendance")->required(false)->strLimit(150)->maxLength(255);
		$this->addText("Result","result")->required(false)->strLimit(150)->maxLength(255);
		$this->addText("Feedback","feedback")->required(false)->strLimit(150)->maxLength(255);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		

    }
}
