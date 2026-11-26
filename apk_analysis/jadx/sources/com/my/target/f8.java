package com.my.target;

import android.content.Context;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.bv9;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public final class f8 extends LinearLayout {
    public final ImageView b;
    public final TextView c;
    public final Button d;

    public f8(Context context) {
        super(context);
        setOrientation(1);
        setGravity(17);
        setBackgroundColor(-1728053248);
        l3a l3aVar = new l3a(context);
        ImageView imageView = new ImageView(context);
        this.b = imageView;
        imageView.setAdjustViewBounds(true);
        addView(imageView, new LinearLayout.LayoutParams(l3aVar.b(80.0f), l3aVar.b(80.0f)));
        TextView textView = new TextView(context);
        this.c = textView;
        textView.setTypeface(null, 1);
        textView.setTextColor(-1);
        textView.setTextSize(1, 22.0f);
        textView.setPadding(l3aVar.b(50.0f), 0, l3aVar.b(50.0f), 0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = l3aVar.b(10.0f);
        addView(textView, layoutParams);
        Button button = new Button(context);
        this.d = button;
        button.setBackgroundColor(-16733198);
        button.setTextColor(-1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = l3aVar.b(25.0f);
        float fB = l3aVar.b(8.0f);
        button.setClipToOutline(true);
        button.setOutlineProvider(new bv9(fB));
        button.setMinimumWidth(l3aVar.b(120.0f));
        button.setMinimumHeight(l3aVar.b(44.0f));
        addView(button, layoutParams2);
    }

    public Button getCtaButton() {
        return this.d;
    }

    public ImageView getIconView() {
        return this.b;
    }

    public TextView getTitleView() {
        return this.c;
    }
}
