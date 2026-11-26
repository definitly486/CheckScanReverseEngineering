package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class o34 implements ho {
    public final d9 a;
    public final o54 b;

    public o34(d9 d9Var, o54 o54Var) {
        this.a = d9Var;
        this.b = o54Var;
    }

    @Override // yads.ho
    public final go a(Context context, yn ynVar, dp dpVar) {
        return new com.monetization.ads.mediation.banner.c(context, ynVar, dpVar, this.a, this.b);
    }
}
