package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r57;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class pj4 {
    public final defpackage.y22 a;
    public final t5 b;
    public final uk c;
    public final wd3 d;
    public final sc3 e;
    public final fe3 f;
    public final nl3 g;

    public pj4(Context context, defpackage.y22 y22Var, t5 t5Var) {
        uk ukVar = new uk();
        wd3 wd3Var = new wd3();
        sc3 sc3Var = new sc3(context);
        fe3 fe3Var = new fe3();
        defpackage.lk lkVar = new defpackage.lk(context, 5);
        this.a = y22Var;
        this.b = t5Var;
        this.c = ukVar;
        this.d = wd3Var;
        this.e = sc3Var;
        this.f = fe3Var;
        this.g = lkVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01c2, code lost:
    
        if (a(r10, r2, r1, r4) == r5) goto L82;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(yads.ee4 r17, yads.b05 r18, defpackage.f02 r19) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.pj4.a(yads.ee4, yads.b05, f02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Set set, b05 b05Var, ee4 ee4Var, defpackage.f02 f02Var) {
        mj4 mj4Var;
        b05 b05Var2;
        t5 t5Var;
        s5 s5Var;
        if (f02Var instanceof mj4) {
            mj4Var = (mj4) f02Var;
            int i = mj4Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                mj4Var.h = i - Integer.MIN_VALUE;
            } else {
                mj4Var = new mj4(this, f02Var);
            }
        } else {
            mj4Var = new mj4(this, f02Var);
        }
        Object obj = mj4Var.f;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = mj4Var.h;
        if (i2 == 0) {
            r57.b(obj);
            if (set.isEmpty()) {
                return j59.a;
            }
            t5 t5Var2 = this.b;
            s5 s5Var2 = s5.IMAGE_LOADING;
            t5Var2.a(s5Var2, null);
            sc3 sc3Var = this.e;
            mj4Var.b = b05Var;
            mj4Var.c = ee4Var;
            mj4Var.d = t5Var2;
            mj4Var.e = s5Var2;
            mj4Var.h = 1;
            Object objA = sc3Var.a(set, mj4Var);
            if (objA == a32Var) {
                return a32Var;
            }
            b05Var2 = b05Var;
            t5Var = t5Var2;
            obj = objA;
            s5Var = s5Var2;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            s5Var = mj4Var.e;
            t5Var = mj4Var.d;
            ee4Var = mj4Var.c;
            b05Var2 = mj4Var.b;
            r57.b(obj);
        }
        ee3 ee3Var = (ee3) obj;
        if (ee3Var instanceof de3) {
            Map map = ((de3) ee3Var).a;
            d9 d9Var = ee4Var.b;
            String str = d9Var.w;
            jj4 jj4Var = jj4.LoadingOnShow;
            if (!defpackage.aa4.e(str, "loading_on_show") && !defpackage.aa4.e(d9Var.w, "loading_on_back")) {
                wd3 wd3Var = this.d;
                wd3Var.getClass();
                Iterator it = ee4Var.a.a.iterator();
                while (it.hasNext()) {
                    List list = ((sd4) it.next()).b;
                    if (!list.isEmpty()) {
                        wd3Var.a(list, map);
                    }
                }
                uk ukVar = this.c;
                ukVar.getClass();
                for (sd4 sd4Var : ee4Var.a.a) {
                    List list2 = sd4Var.b;
                    if (!list2.isEmpty()) {
                        sd4Var.b = ukVar.a(list2, map);
                    }
                }
            }
            b05Var2.b.putAll(map);
        }
        j59 j59Var = j59.a;
        t5Var.a(s5Var);
        return j59Var;
    }

    public static final fd3 a(Context context, b05 b05Var) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        return new fd3(b05Var, zg5Var2.a(context));
    }
}
