package com.example.namz.ageuk;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class moreQuestions2 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_more_questions2);
    }

    public void moreQuestions3(View v){
        Intent intent = new Intent(this, moreQuestions3.class);
        startActivity(intent);
    }
}
