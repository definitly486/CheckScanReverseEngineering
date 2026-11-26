package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class bz2 {
    public final vy2 a;
    public final rz2 b;

    public bz2(Context context) {
        vy2 vy2Var = new vy2(context);
        rz2 rz2Var = new rz2(context);
        this.a = vy2Var;
        this.b = rz2Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
    
        if (defpackage.av0.d(defpackage.sh2.c, new yads.az2((byte[]) r10, r8, r2, null), r0) == r1) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(yads.c65 r9, defpackage.f02 r10) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r10 instanceof yads.xy2
            if (r0 == 0) goto L13
            r0 = r10
            yads.xy2 r0 = (yads.xy2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            yads.xy2 r0 = new yads.xy2
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.c
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.e
            r3 = 0
            r4 = 0
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3a
            if (r2 == r6) goto L34
            if (r2 != r5) goto L2e
            yads.c65 r9 = r0.b
            defpackage.r57.b(r10)     // Catch: java.lang.Exception -> L8c
            goto L77
        L2e:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r3
        L34:
            yads.c65 r9 = r0.b
            defpackage.r57.b(r10)     // Catch: java.lang.Exception -> L8c
            goto L5d
        L3a:
            defpackage.r57.b(r10)
            yads.cz2 r10 = r9.a()
            yads.rz2 r2 = r8.b
            android.graphics.Typeface r10 = r2.a(r10)
            if (r10 == 0) goto L4c
            java.lang.Boolean r8 = java.lang.Boolean.TRUE
            return r8
        L4c:
            yads.vy2 r10 = r8.a     // Catch: java.lang.Exception -> L8c
            java.lang.String r2 = r9.b()     // Catch: java.lang.Exception -> L8c
            r0.b = r9     // Catch: java.lang.Exception -> L8c
            r0.e = r6     // Catch: java.lang.Exception -> L8c
            java.lang.Object r10 = r10.a(r2, r0)     // Catch: java.lang.Exception -> L8c
            if (r10 != r1) goto L5d
            goto L76
        L5d:
            byte[] r10 = (byte[]) r10     // Catch: java.lang.Exception -> L8c
            yads.cz2 r2 = r9.a()     // Catch: java.lang.Exception -> L8c
            r0.b = r9     // Catch: java.lang.Exception -> L8c
            r0.e = r5     // Catch: java.lang.Exception -> L8c
            oi2 r5 = defpackage.qo2.a     // Catch: java.lang.Exception -> L8c
            sh2 r5 = defpackage.sh2.c     // Catch: java.lang.Exception -> L8c
            yads.az2 r7 = new yads.az2     // Catch: java.lang.Exception -> L8c
            r7.<init>(r10, r8, r2, r3)     // Catch: java.lang.Exception -> L8c
            java.lang.Object r10 = defpackage.av0.d(r5, r7, r0)     // Catch: java.lang.Exception -> L8c
            if (r10 != r1) goto L77
        L76:
            return r1
        L77:
            yads.rz2 r8 = r8.b     // Catch: java.lang.Exception -> L8c
            yads.cz2 r10 = r9.a()     // Catch: java.lang.Exception -> L8c
            android.graphics.Typeface r8 = r8.a(r10)     // Catch: java.lang.Exception -> L8c
            if (r8 == 0) goto L85
            r4 = r6
            goto L8c
        L85:
            yads.cz2 r8 = r9.a()     // Catch: java.lang.Exception -> L8c
            r8.name()     // Catch: java.lang.Exception -> L8c
        L8c:
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r4)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.bz2.a(yads.c65, f02):java.lang.Object");
    }
}
