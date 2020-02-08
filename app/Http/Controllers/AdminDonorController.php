<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminDonorController extends CBController {


    public function cbInit()
    {
        $this->setTable("donor");
        $this->setPermalink("donor");
        $this->setPageTitle("Donor");

        $this->addNumber("Donor","donor_id");
		$this->addText("Donor Name","donor_name")->strLimit(150)->maxLength(255);
		$this->addText("Address","address")->strLimit(150)->maxLength(255);
		$this->addEmail("Email","email");
		$this->addNumber("Phone","phone");
		$this->addText("User Name","user_name")->strLimit(150)->maxLength(255);
		$this->addPassword("Password","password");
		$this->addNumber("Transiction","transiction_id");
		$this->addText("Account Name","account_name")->strLimit(150)->maxLength(255);
		$this->addNumber("Account Number","account_number");
		$this->addMoney("Donation Amount","donation_amount");
		$this->addFile("Photo","photo")->encrypt(true);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		

    }
}
