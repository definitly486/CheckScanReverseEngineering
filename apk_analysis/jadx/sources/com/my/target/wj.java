package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.my.target.p1;
import com.my.target.wj;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.hga;
import defpackage.hu2;
import defpackage.jga;
import defpackage.l3a;
import defpackage.ml0;
import defpackage.n61;
import defpackage.t2a;
import defpackage.ul0;
import defpackage.xda;

/* JADX INFO: loaded from: classes4.dex */
public class wj extends RelativeLayout {
    public static final int k = View.generateViewId();
    public static final int l = View.generateViewId();
    public final p1 b;
    public final Button c;
    public final q1 d;
    public final f5 e;
    public final l3a f;
    public final boolean g;
    public final c1 h;
    public e6a i;
    public boolean j;

    public wj(Context context, l3a l3aVar, boolean z) {
        super(context);
        this.h = new c1(new hu2(this));
        this.i = new d6a();
        this.j = false;
        this.f = l3aVar;
        this.g = z;
        f5 f5Var = new f5(context, l3aVar, z);
        this.e = f5Var;
        l3a.n(f5Var, "footer_layout");
        p1 p1Var = new p1(context, l3aVar, z);
        this.b = p1Var;
        l3a.n(p1Var, "body_layout");
        Button button = new Button(context);
        this.c = button;
        l3a.n(button, "cta_button");
        q1 q1Var = new q1(context);
        this.d = q1Var;
        l3a.n(q1Var, "age_bordering");
    }

    public final void a(final t2a t2aVar, ml0 ml0Var) {
        boolean z = t2aVar.g;
        boolean z2 = t2aVar.m;
        boolean z3 = this.j;
        q1 q1Var = this.d;
        Button button = this.c;
        p1 p1Var = this.b;
        final boolean z4 = true;
        if (!z3) {
            final hga hgaVar = new hga(0, this, ml0Var);
            p1Var.a(t2aVar, new n61(hgaVar));
            if (z2) {
                button.setOnClickListener(hgaVar);
                return;
            }
            if (z) {
                button.setOnClickListener(hgaVar);
                button.setEnabled(true);
            } else {
                button.setOnClickListener(null);
                button.setEnabled(false);
            }
            q1Var.setOnTouchListener(new View.OnTouchListener() { // from class: iga
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    int i = wj.k;
                    wj wjVar = this.b;
                    p1 p1Var2 = wjVar.b;
                    if (t2aVar.h) {
                        int action = motionEvent.getAction();
                        if (action == 0) {
                            p1Var2.setBackgroundColor(-3806472);
                            return true;
                        }
                        if (action == 1) {
                            p1Var2.setBackgroundColor(-1);
                            hgaVar.onClick(view);
                            return true;
                        }
                        if (action == 3) {
                            wjVar.setBackgroundColor(-1);
                            return true;
                        }
                    }
                    return true;
                }
            });
            return;
        }
        final jga jgaVar = new jga(this, ml0Var);
        p1Var.a(t2aVar, new ul0(ml0Var));
        c1 c1Var = this.h;
        if (z2) {
            button.setOnTouchListener(c1Var);
            button.setOnClickListener(jgaVar);
            q1Var.setOnTouchListener(new View.OnTouchListener() { // from class: kga
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    e6a d6aVar;
                    int i = wj.k;
                    wj wjVar = this.b;
                    p1 p1Var2 = wjVar.b;
                    if (z4) {
                        int action = motionEvent.getAction();
                        if (action == 0) {
                            p1Var2.setBackgroundColor(-3806472);
                            return true;
                        }
                        if (action == 1) {
                            p1Var2.setBackgroundColor(-1);
                            if (motionEvent.getAction() == 1) {
                                float x = motionEvent.getX();
                                float y = motionEvent.getY();
                                float f = view.getContext().getResources().getDisplayMetrics().widthPixels;
                                float f2 = view.getContext().getResources().getDisplayMetrics().heightPixels;
                                int[] iArr = new int[2];
                                view.getLocationOnScreen(iArr);
                                d6aVar = new o6a((iArr[0] + x) / f, (iArr[1] + y) / f2);
                            } else {
                                d6aVar = null;
                            }
                            if (d6aVar == null) {
                                d6aVar = new d6a();
                            }
                            wjVar.i = d6aVar;
                            jgaVar.onClick(view);
                            return true;
                        }
                        if (action == 3) {
                            wjVar.setBackgroundColor(-1);
                            return true;
                        }
                    }
                    return true;
                }
            });
            return;
        }
        button.setOnTouchListener(c1Var);
        if (z) {
            button.setOnClickListener(jgaVar);
            button.setEnabled(true);
        } else {
            button.setOnClickListener(null);
            button.setEnabled(false);
        }
        final boolean z5 = t2aVar.h;
        q1Var.setOnTouchListener(new View.OnTouchListener() { // from class: kga
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                e6a d6aVar;
                int i = wj.k;
                wj wjVar = this.b;
                p1 p1Var2 = wjVar.b;
                if (z5) {
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        p1Var2.setBackgroundColor(-3806472);
                        return true;
                    }
                    if (action == 1) {
                        p1Var2.setBackgroundColor(-1);
                        if (motionEvent.getAction() == 1) {
                            float x = motionEvent.getX();
                            float y = motionEvent.getY();
                            float f = view.getContext().getResources().getDisplayMetrics().widthPixels;
                            float f2 = view.getContext().getResources().getDisplayMetrics().heightPixels;
                            int[] iArr = new int[2];
                            view.getLocationOnScreen(iArr);
                            d6aVar = new o6a((iArr[0] + x) / f, (iArr[1] + y) / f2);
                        } else {
                            d6aVar = null;
                        }
                        if (d6aVar == null) {
                            d6aVar = new d6a();
                        }
                        wjVar.i = d6aVar;
                        jgaVar.onClick(view);
                        return true;
                    }
                    if (action == 3) {
                        wjVar.setBackgroundColor(-1);
                        return true;
                    }
                }
                return true;
            }
        });
    }

    public void setBanner(xda xdaVar) {
        this.b.setBanner(xdaVar);
        String strG = xdaVar.g();
        Button button = this.c;
        button.setText(strG);
        this.e.setBackgroundColor(-39322);
        this.j = xdaVar.Q.c;
        boolean zIsEmpty = TextUtils.isEmpty(xdaVar.g);
        q1 q1Var = this.d;
        if (zIsEmpty) {
            q1Var.setVisibility(8);
        } else {
            q1Var.setText(xdaVar.g);
        }
        l3a.o(button, -16733198, -16746839, this.f.b(2.0f));
        button.setTextColor(-1);
    }
}
