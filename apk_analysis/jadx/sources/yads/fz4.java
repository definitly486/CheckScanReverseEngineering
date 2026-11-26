package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.ta8;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class fz4 {
    public final n00 a;
    public final m00 b;
    public final e34 c;
    public final uy4 d;
    public final vy4 e;

    public fz4(l34 l34Var, n00 n00Var) {
        m00 m00Var = new m00();
        e34 e34Var = new e34(l34Var);
        uy4 uy4Var = new uy4();
        vy4 vy4Var = new vy4();
        this.a = n00Var;
        this.b = m00Var;
        this.c = e34Var;
        this.d = uy4Var;
        this.e = vy4Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007e, code lost:
    
        if (r0 == r11) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(yads.fz4 r15, android.content.Context r16, yads.n70 r17, yads.sl5 r18, java.util.List r19, long r20, defpackage.f02 r22) {
        /*
            r0 = r22
            r15.getClass()
            boolean r1 = r0 instanceof yads.cz4
            if (r1 == 0) goto L18
            r1 = r0
            yads.cz4 r1 = (yads.cz4) r1
            int r2 = r1.d
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L18
            int r2 = r2 - r3
            r1.d = r2
            goto L1d
        L18:
            yads.cz4 r1 = new yads.cz4
            r1.<init>(r15, r0)
        L1d:
            java.lang.Object r0 = r1.b
            a32 r11 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r1.d
            r12 = 0
            r13 = 2
            r14 = 1
            if (r2 == 0) goto L3a
            if (r2 == r14) goto L36
            if (r2 != r13) goto L30
            defpackage.r57.b(r0)
            goto L81
        L30:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r0)
            return r12
        L36:
            defpackage.r57.b(r0)
            goto L6d
        L3a:
            defpackage.r57.b(r0)
            boolean r0 = r19.isEmpty()
            if (r0 == 0) goto L53
            yads.iy4 r0 = yads.iy4.d
            yads.qy4 r0 = yads.q54.a()
            yads.ly4 r1 = new yads.ly4
            java.util.List r0 = defpackage.u96.h(r0)
            r1.<init>(r0)
            return r1
        L53:
            yads.dz4 r2 = new yads.dz4
            r7 = 0
            r9 = r15
            r5 = r16
            r8 = r17
            r10 = r18
            r6 = r19
            r3 = r20
            r2.<init>(r3, r5, r6, r7, r8, r9, r10)
            r1.d = r14
            java.lang.Object r0 = defpackage.z22.c(r2, r1)
            if (r0 != r11) goto L6d
            goto L80
        L6d:
            java.util.List r0 = (java.util.List) r0
            oi2 r2 = defpackage.qo2.a
            sh2 r2 = defpackage.sh2.c
            yads.ez4 r3 = new yads.ez4
            r3.<init>(r0, r12)
            r1.d = r13
            java.lang.Object r0 = defpackage.av0.d(r2, r3, r1)
            if (r0 != r11) goto L81
        L80:
            return r11
        L81:
            java.util.List r0 = (java.util.List) r0
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L99
            yads.iy4 r0 = yads.iy4.d
            yads.qy4 r0 = yads.q54.a()
            yads.ly4 r1 = new yads.ly4
            java.util.List r0 = defpackage.u96.h(r0)
            r1.<init>(r0)
            return r1
        L99:
            yads.ly4 r1 = new yads.ly4
            r1.<init>(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.fz4.a(yads.fz4, android.content.Context, yads.n70, yads.sl5, java.util.List, long, f02):java.lang.Object");
    }

    public static final void a(fz4 fz4Var, x54 x54Var) {
        fz4Var.getClass();
        if (ta8.D(x54Var.b, "LevelPlay", true)) {
            List listI = u96.i("app_key", TJAdUnitConstants.EXTRA_TJ_PLACEMENT_NAME);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listI) {
                if (!x54Var.c.containsKey((String) obj)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            defpackage.fg.c("Required configuration parameters are missing");
        }
    }
}
