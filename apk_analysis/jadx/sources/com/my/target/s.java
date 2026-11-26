package com.my.target;

import android.content.Context;
import defpackage.ho9;
import defpackage.xda;

/* JADX INFO: loaded from: classes4.dex */
public final class s {
    public final e3 a;
    public final Context b;

    public s(e3 e3Var, Context context) {
        this.b = context;
        this.a = e3Var;
    }

    public final z0 a(xda xdaVar, z1 z1Var, z1.a aVar, z1 z1Var2, z1 z1Var3) {
        boolean zIsEmpty = xdaVar.Y.isEmpty();
        Context context = this.b;
        if (!zIsEmpty && xdaVar.L) {
            return new eb(context, z1Var, z1Var3, z1Var2);
        }
        if (!xdaVar.Y.isEmpty()) {
            return new ca(z1Var, z1Var2, context);
        }
        if (xdaVar.Z == null || aVar == null) {
            return new fb(new i0(context), new r1(context), new i6(context), null, z1Var, this.b);
        }
        i0 i0Var = new i0(context);
        r1 r1Var = new r1(context);
        f0 f0Var = new f0(context);
        return new nb(i0Var, r1Var, new yj(ho9.a(f0Var.getContext(), true), f0Var, context, aVar), null, z1Var, aVar, this.b);
    }
}
