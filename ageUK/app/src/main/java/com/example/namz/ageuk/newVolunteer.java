package com.example.namz.ageuk;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class newVolunteer extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_new_volunteer);
    }

    public void newVolunteer(View v){
        Intent intent = new Intent(this, v_personal_Info.class);
        startActivity(intent);
    }

    public void VolunteerSignUp(View v){
        Intent intent = new Intent(this, VolunteerSignupActivity.class);
        startActivity(intent);
    }

}
