package yads;

import android.content.Context;
import androidx.work.WorkRequest;
import defpackage.jd8;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class ig {
    public static final long f = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
    public final kg a;
    public final vg b;
    public final defpackage.y22 c;
    public volatile fg d;
    public final defpackage.yg5 e;

    public ig(Context context) {
        kg kgVar = new kg();
        vg vgVarA = dg.a(context);
        i90 i90Var = new i90();
        jd8 jd8VarB = rm9.b();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.kz1 kz1VarA = defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(i90Var));
        this.a = kgVar;
        this.b = vgVarA;
        this.c = kz1VarA;
        this.e = new defpackage.ch5();
    }
}
