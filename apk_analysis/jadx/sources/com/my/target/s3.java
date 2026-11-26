package com.my.target;

import android.content.Context;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class s3 extends LinearLayout {
    public s3(Context context) {
        super(context);
    }

    public abstract Button getCtaButton();

    public abstract TextView getDescriptionTextView();

    public abstract TextView getDomainTextView();

    public abstract zh getLogoImageView();

    public abstract TextView getTitleTextView();
}
