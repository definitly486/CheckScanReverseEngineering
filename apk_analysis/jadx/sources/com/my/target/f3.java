package com.my.target;

import android.content.Context;
import android.widget.FrameLayout;
import defpackage.ev9;
import defpackage.fo9;
import defpackage.on9;
import defpackage.xda;

/* JADX INFO: loaded from: classes4.dex */
public final class f3 {
    public final ev9 a;
    public final e3 b;
    public final Context c;
    public final on9 d;

    public f3(ev9 ev9Var, e3 e3Var, Context context) {
        this.a = ev9Var;
        this.b = e3Var;
        this.c = context;
        this.d = new on9(context);
    }

    public final hg a(xda xdaVar, bg bgVar, dg dgVar, FrameLayout frameLayout, c3 c3Var) {
        boolean zIsEmpty = xdaVar.Y.isEmpty();
        on9 on9Var = this.d;
        if (!zIsEmpty) {
            return new ig(((fo9) xdaVar.Y.get(0)).R, bgVar, dgVar, c3Var, frameLayout, on9Var, this.c);
        }
        if (xdaVar.Z == null) {
            return new jg(bgVar, dgVar, c3Var, frameLayout, on9Var, this.c);
        }
        kg kgVar = new kg(bgVar, dgVar, c3Var, frameLayout, on9Var, this.c);
        kgVar.addView(kgVar.b);
        kgVar.addView(kgVar.h);
        kgVar.addView(kgVar.i);
        kgVar.addView(kgVar.m);
        kgVar.addView(dgVar);
        return kgVar;
    }
}
