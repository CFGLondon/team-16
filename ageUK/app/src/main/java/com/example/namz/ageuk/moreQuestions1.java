package com.example.namz.ageuk;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class moreQuestions1 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_more_questions1);
    }


    public void reference(View v){
        Intent intent = new Intent(this, Reference.class);
        startActivity(intent);
        //Log.d("TAG", "In More");
    }
}
