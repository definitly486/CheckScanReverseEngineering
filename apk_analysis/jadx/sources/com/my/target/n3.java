package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.my.target.n3;
import com.my.target.o;
import defpackage.ko9;
import defpackage.ve1;
import defpackage.y14;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class n3 extends l2 {
    public static final /* synthetic */ int o = 0;
    public TextView n;

    @Override // com.my.target.h0
    public final void a(String str, String str2, String str3, String str4, ArrayList arrayList) {
        TextView textView = this.n;
        if (textView != null) {
            if (TextUtils.isEmpty(str)) {
                str = "Жалоба";
            }
            textView.setText(str);
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = "Уточните причину";
        }
        this.f.setText(str3);
        if (TextUtils.isEmpty(str4)) {
            str4 = "Отправить жалобу";
        }
        Button button = this.d;
        button.setText(str4);
        c(arrayList);
        button.setOnClickListener(new View.OnClickListener() { // from class: u2a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = n3.o;
                n3 n3Var = this.b;
                s95 s95Var = n3Var.i;
                if (s95Var != null) {
                    ((o) n3Var.k.b).c(s95Var);
                }
            }
        });
        try {
            y0 y0Var = new y0(this, getContext());
            this.b = new WeakReference(y0Var);
            y0Var.show();
        } catch (Throwable th) {
            th.printStackTrace();
            y14.u(null, "AdChoicesOptionsController: Unable to start adchoices dialog");
            m();
        }
    }

    @Override // com.my.target.l2
    public final LinearLayout.LayoutParams d() {
        int i = ko9.d;
        ko9 ko9Var = this.c;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, ko9Var.a.get(i));
        int i2 = ko9Var.a.get(ko9.g);
        int i3 = ko9Var.a.get(ko9.r);
        layoutParams.setMargins(i3, i2, i3, 0);
        return layoutParams;
    }

    @Override // com.my.target.h0
    public final void dismiss() {
        y0 y0Var;
        WeakReference weakReference = this.b;
        if (weakReference == null || (y0Var = (y0) weakReference.get()) == null) {
            return;
        }
        y0Var.dismiss();
    }

    @Override // com.my.target.l2
    public final LinearLayout f(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.addView(this.g);
        this.n = e(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        this.n.setLayoutParams(layoutParams);
        linearLayout.addView(this.n);
        return linearLayout;
    }

    @Override // com.my.target.l2
    public String getActionText() {
        return "Объявление скрыто";
    }

    @Override // com.my.target.l2, android.view.View.OnClickListener
    public final void onClick(View view) {
        ve1 ve1Var;
        super.onClick(view);
        if (view != this.g || (ve1Var = this.l.f) == null) {
            return;
        }
        ((w1) ve1Var.b).resume();
    }
}
