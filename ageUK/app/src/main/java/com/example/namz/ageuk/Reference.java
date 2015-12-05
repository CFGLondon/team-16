package com.example.namz.ageuk;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class Reference extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reference);
    }

    public void moreQuestions2(View v){
        Intent intent = new Intent(this, moreQuestions2.class);
        startActivity(intent);
        //Log.d("TAG", "In More2");
    }
}
