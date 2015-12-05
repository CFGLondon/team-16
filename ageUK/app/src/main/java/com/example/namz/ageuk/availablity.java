package com.example.namz.ageuk;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class availablity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_availability);
    }

    public void interests(View v) {
        Intent intent = new Intent(this, interests.class);
        startActivity(intent);
    }
}
