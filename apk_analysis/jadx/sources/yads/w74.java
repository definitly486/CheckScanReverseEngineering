package yads;

import android.content.Context;
import defpackage.jd8;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.rm9;
import defpackage.zya;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class w74 {
    public final e4 a;
    public final t5 b;
    public final v24 c;
    public final n24 d;
    public final mt4 e;
    public final t24 f;
    public final zg5 g;
    public final ll3 h;
    public final nl3 i;
    public final Context j;
    public final defpackage.y22 k;
    public defpackage.mb4 l;
    public Object m;
    public nl3 n;

    public w74(Context context, e4 e4Var, bf5 bf5Var, t5 t5Var, v24 v24Var, n24 n24Var, mt4 mt4Var, t24 t24Var, hb hbVar, zg5 zg5Var, ll3 ll3Var, nl3 nl3Var) {
        this.a = e4Var;
        this.b = t5Var;
        this.c = v24Var;
        this.d = n24Var;
        this.e = mt4Var;
        this.f = t24Var;
        this.g = zg5Var;
        this.h = ll3Var;
        this.i = nl3Var;
        this.j = w60.a(context);
        Context context2 = ((do6) bf5Var).a;
        j90 j90Var = new j90(mw.a(context2, context2));
        jd8 jd8VarB = rm9.b();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        this.k = defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.uy4.a.k0()).plus(j90Var));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0056  */
    /* JADX WARN: Code duplicated, block: B:20:0x006b  */
    /* JADX WARN: Code duplicated, block: B:24:0x007c  */
    /* JADX WARN: Code duplicated, block: B:27:0x0083  */
    /* JADX WARN: Code duplicated, block: B:29:0x0086  */
    /* JADX WARN: Code duplicated, block: B:33:0x0095  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:36:0x00da  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:70:0x0134  */
    /* JADX WARN: Code duplicated, block: B:72:0x0137  */
    /* JADX WARN: Code duplicated, block: B:75:0x014b  */
    /* JADX WARN: Code duplicated, block: B:76:0x014e  */
    /* JADX WARN: Code duplicated, block: B:78:0x016b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:81:0x0171  */
    /* JADX WARN: Code duplicated, block: B:82:0x0173  */
    /* JADX WARN: Code duplicated, block: B:84:0x017d  */
    /* JADX WARN: Code duplicated, block: B:85:0x017f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x0181  */
    /* JADX WARN: Code duplicated, block: B:87:0x0186  */
    /* JADX WARN: Code duplicated, block: B:89:0x018a  */
    /* JADX WARN: Code duplicated, block: B:91:0x018d  */
    /* JADX WARN: Code duplicated, block: B:93:0x01bd  */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:75:0x014b
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(yads.w74 r20, android.content.Context r21, defpackage.nl3 r22, defpackage.f02 r23) {
        /*
            Method dump skipped, instruction units count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.w74.a(yads.w74, android.content.Context, nl3, f02):java.lang.Object");
    }

    public static final boolean a(w74 w74Var, defpackage.c31 c31Var, r74 r74Var) {
        w74Var.getClass();
        try {
            c31Var.resumeWith(r74Var);
            return true;
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    public final void a(Context context, nl3 nl3Var) {
        this.n = nl3Var;
        defpackage.mb4 mb4Var = this.l;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.l = defpackage.av0.c(this.k, null, null, new u74(this, context, nl3Var, null), 3);
    }

    public final void a(Context context) {
        l24 l24Var = (l24) this.h.invoke();
        if (l24Var != null) {
            try {
                this.c.a(l24Var.a);
            } catch (Throwable th) {
                t24 t24Var = this.f;
                x54 x54Var = l24Var.b;
                String networkName = l24Var.c.b().getNetworkName();
                Map mapSingletonMap = Collections.singletonMap("exception_in_adapter", th.toString());
                mapSingletonMap.getClass();
                Map mapSingletonMap2 = Collections.singletonMap("reason", mapSingletonMap);
                mapSingletonMap2.getClass();
                t24Var.d.a(context, e75.ADAPTER_INVALID, x54Var, networkName, mapSingletonMap2);
            }
        }
    }

    public final void a() {
        x54 x54Var;
        l24 l24Var = (l24) this.h.invoke();
        this.b.a(s5.ADAPTER_LOADING, new gb(f75.ERROR, (l24Var == null || (x54Var = l24Var.b) == null) ? null : x54Var.b), null);
    }

    public final Object a(Context context, l24 l24Var, nl3 nl3Var, x54 x54Var, String str, defpackage.f02 f02Var) throws Throwable {
        Context context2;
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(f02Var));
        c31Var.u();
        Object objInvoke = nl3Var.invoke(new q74(this, c31Var, l24Var));
        this.m = objInvoke;
        try {
            v24 v24Var = this.c;
            com.monetization.ads.mediation.base.a aVar = l24Var.a;
            Map mapA = l24Var.d.a(context);
            v34 v34Var = l24Var.d;
            x54 x54Var2 = l24Var.b;
            v34Var.getClass();
            try {
                v24Var.a(context, aVar, objInvoke, mapA, x54Var2.c);
            } catch (Throwable th) {
                th = th;
                context2 = context;
                Throwable th2 = th;
                t24 t24Var = this.f;
                Map mapSingletonMap = Collections.singletonMap("exception_in_adapter", th2.toString());
                mapSingletonMap.getClass();
                Map mapSingletonMap2 = Collections.singletonMap("reason", mapSingletonMap);
                mapSingletonMap2.getClass();
                t24Var.d.a(context2, e75.ADAPTER_INVALID, x54Var, str, mapSingletonMap2);
                a();
                a(this, c31Var, r74.FAILED);
            }
        } catch (Throwable th3) {
            th = th3;
            context2 = context;
        }
        Object objS = c31Var.s();
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        return objS;
    }
}
