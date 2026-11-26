package yads;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes4.dex */
public final class jg3 extends LinearLayout {
    public final pv a;
    public final TextView b;

    public jg3(Context context, ip0 ip0Var) {
        super(context);
        pv pvVar = new pv(context);
        this.a = pvVar;
        TextView textView = new TextView(context);
        this.b = textView;
        defpackage.u15 u15Var = new defpackage.u15(this, 1);
        setOrientation(0);
        int iB = defpackage.w65.b(TypedValue.applyDimension(1, 4.0f, context.getResources().getDisplayMetrics()));
        setPadding(iB, iB, iB, iB);
        pvVar.setOnClickListener(u15Var);
        addView(pvVar);
        int iB2 = defpackage.w65.b(TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics()));
        textView.setPadding(iB2, iB2, iB2, iB2);
        int iB3 = defpackage.w65.b(TypedValue.applyDimension(1, 2.0f, context.getResources().getDisplayMetrics()));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setStroke(iB3, SupportMenu.CATEGORY_MASK);
        textView.setBackgroundDrawable(gradientDrawable);
        addView(textView);
        int iB4 = defpackage.w65.b(TypedValue.applyDimension(1, 2.0f, context.getResources().getDisplayMetrics()));
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        layoutParams.getClass();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        layoutParams2.setMargins(iB4, 0, iB4, iB4);
        textView.setLayoutParams(layoutParams2);
        textView.setVisibility(8);
    }

    public static final void a(jg3 jg3Var, View view) {
        boolean zIsSelected = jg3Var.a.isSelected();
        jg3Var.a.setSelected(!zIsSelected);
        jg3Var.b.setVisibility(!zIsSelected ? 0 : 8);
    }

    public final void setDescription(String str) {
        this.b.setText(str);
    }
}
