package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import defpackage.l3a;
import defpackage.rk3;

/* JADX INFO: loaded from: classes4.dex */
public class fj extends ViewGroup {
    public final TextView b;
    public final q1 c;
    public final int d;
    public final int e;

    public fj(Context context) {
        super(context);
        TextView textView = new TextView(context);
        this.b = textView;
        q1 q1Var = new q1(context);
        this.c = q1Var;
        q1Var.setLines(1);
        textView.setTextSize(2, 18.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setMaxLines(1);
        textView.setTextColor(-1);
        this.d = (int) TypedValue.applyDimension(1, 4.0f, context.getResources().getDisplayMetrics());
        this.e = (int) rk3.b(context, 1, 2.0f);
        l3a.n(textView, "title_text");
        l3a.n(q1Var, "age_bordering");
        addView(textView);
        addView(q1Var);
    }

    public TextView getLeftText() {
        return this.b;
    }

    public q1 getRightBorderedView() {
        return this.c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TextView textView = this.b;
        int measuredWidth = textView.getMeasuredWidth();
        int measuredHeight = textView.getMeasuredHeight();
        q1 q1Var = this.c;
        int measuredWidth2 = q1Var.getMeasuredWidth();
        int measuredHeight2 = q1Var.getMeasuredHeight();
        int measuredHeight3 = getMeasuredHeight();
        int i5 = (measuredHeight3 - measuredHeight) / 2;
        int i6 = (measuredHeight3 - measuredHeight2) / 2;
        int i7 = this.d + measuredWidth;
        textView.layout(0, i5, measuredWidth, measuredHeight + i5);
        q1Var.layout(i7, i6, measuredWidth2 + i7, measuredHeight2 + i6);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
        int i3 = this.e;
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - (i3 * 2), Integer.MIN_VALUE);
        q1 q1Var = this.c;
        q1Var.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int i4 = size / 2;
        if (q1Var.getMeasuredWidth() > i4) {
            q1Var.measure(View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2 - (i3 * 2), Integer.MIN_VALUE));
        }
        int measuredWidth = size - q1Var.getMeasuredWidth();
        int i5 = this.d;
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth - i5, Integer.MIN_VALUE);
        int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(size2 - (i3 * 2), Integer.MIN_VALUE);
        TextView textView = this.b;
        textView.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
        setMeasuredDimension(q1Var.getMeasuredWidth() + textView.getMeasuredWidth() + i5, Math.max(textView.getMeasuredHeight(), q1Var.getMeasuredHeight()));
    }
}
