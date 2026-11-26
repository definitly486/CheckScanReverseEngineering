package com.my.target;

import android.R;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.StateSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public class a extends LinearLayout {
    public a(Context context) {
        super(context);
        TextView textView = new TextView(context);
        View zhVar = new zh(context);
        l3a l3aVar = new l3a(context);
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{-1157627904, -1157627904});
        gradientDrawable.setStroke(l3aVar.b(1.0f), -1157627904);
        gradientDrawable.setCornerRadius(l3aVar.b(10.0f));
        GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, new int[]{-1157627904, -1157627904});
        gradientDrawable2.setStroke(l3aVar.b(1.0f), -1157627904);
        gradientDrawable2.setCornerRadius(l3aVar.b(10.0f));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        int iB = l3aVar.b(6.0f);
        int iB2 = l3aVar.b(12.0f);
        textView.setTextColor(-1);
        textView.setTextSize(18.0f);
        textView.setMaxLines(5);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        int iD = l3a.d(32, context);
        setPadding(iB2, iB, iB2, iB);
        setBackgroundDrawable(stateListDrawable);
        setGravity(16);
        setOrientation(0);
        l3a.n(zhVar, "ctc_icon");
        addView(zhVar, iD, iD);
        l3a.n(textView, "ctc_text");
        addView(textView, new LinearLayout.LayoutParams(-2, -2));
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
