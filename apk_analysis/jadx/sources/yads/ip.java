package yads;

import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes6.dex */
public final class ip extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ pp c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ip(pp ppVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ppVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ip(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new ip(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0092, code lost:
    
        if (r8.a(r1, r7) == r0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b0, code lost:
    
        if (defpackage.av0.d(r1, r4, r7) == r0) goto L51;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.b
            r2 = 0
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L28
            if (r1 == r6) goto L24
            if (r1 == r5) goto L1f
            if (r1 == r4) goto L1a
            if (r1 != r3) goto L14
            goto L1a
        L14:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L1a:
            defpackage.r57.b(r8)
            goto Lb3
        L1f:
            defpackage.r57.b(r8)
            goto L88
        L24:
            defpackage.r57.b(r8)
            goto L3b
        L28:
            defpackage.r57.b(r8)
            yads.pp r8 = r7.c
            yads.rf5 r8 = r8.j
            yads.kg3 r1 = yads.kg3.AD
            r7.b = r6
            java.lang.Object r8 = r8.a(r1, r7)
            if (r8 != r0) goto L3b
            goto Lb2
        L3b:
            yads.gf5 r8 = (yads.gf5) r8
            boolean r1 = r8 instanceof yads.ff5
            if (r1 == 0) goto L95
            yads.pp r1 = r7.c
            yads.ff5 r8 = (yads.ff5) r8
            yads.e4 r3 = r1.c
            yads.ed r6 = r8.a
            yads.c40 r3 = r3.b
            r3.b = r6
            yads.vn2 r8 = r8.b
            r3.a = r8
            r7.b = r5
            yads.zg5 r8 = yads.zg5.l
            if (r8 != 0) goto L6d
            java.lang.Object r8 = yads.zg5.k
            monitor-enter(r8)
            yads.zg5 r3 = yads.zg5.l     // Catch: java.lang.Throwable -> L66
            if (r3 != 0) goto L68
            yads.zg5 r3 = new yads.zg5     // Catch: java.lang.Throwable -> L66
            r3.<init>()     // Catch: java.lang.Throwable -> L66
            yads.zg5.l = r3     // Catch: java.lang.Throwable -> L66
            goto L68
        L66:
            r7 = move-exception
            goto L6b
        L68:
            monitor-exit(r8)
            r8 = r3
            goto L6d
        L6b:
            monitor-exit(r8)
            throw r7
        L6d:
            android.content.Context r3 = r1.a
            yads.fe5 r8 = r8.a(r3)
            if (r8 == 0) goto L77
            yads.dt r2 = r8.e0
        L77:
            if (r2 == 0) goto L83
            java.lang.Object r8 = r1.a(r2, r7)
            if (r8 != r0) goto L80
            goto L85
        L80:
            j59 r8 = defpackage.j59.a
            goto L85
        L83:
            j59 r8 = defpackage.j59.a
        L85:
            if (r8 != r0) goto L88
            goto Lb2
        L88:
            yads.pp r8 = r7.c
            yads.xa r1 = r8.g
            r7.b = r4
            java.lang.Object r7 = r8.a(r1, r7)
            if (r7 != r0) goto Lb3
            goto Lb2
        L95:
            boolean r1 = r8 instanceof yads.ef5
            if (r1 == 0) goto Lb3
            oi2 r1 = defpackage.qo2.a
            hu3 r1 = defpackage.uy4.a
            gu3 r1 = r1.k0()
            yads.hp r4 = new yads.hp
            yads.pp r5 = r7.c
            yads.ef5 r8 = (yads.ef5) r8
            r4.<init>(r5, r8, r2)
            r7.b = r3
            java.lang.Object r7 = defpackage.av0.d(r1, r4, r7)
            if (r7 != r0) goto Lb3
        Lb2:
            return r0
        Lb3:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.ip.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
