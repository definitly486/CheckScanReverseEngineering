package yads;

import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes6.dex */
public final class kf extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ lf c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kf(lf lfVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = lfVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new kf(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new kf(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031 A[PHI: r9
      0x0031: PHI (r9v4 java.lang.Object) = (r9v3 java.lang.Object), (r9v0 java.lang.Object) binds: [B:12:0x002e, B:9:0x0014] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:16:0x003b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0043 -> B:11:0x001b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r8.b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L18
            if (r1 == r4) goto L14
            if (r1 != r3) goto Le
            goto L18
        Le:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r2
        L14:
            defpackage.r57.b(r9)
            goto L31
        L18:
            defpackage.r57.b(r9)
        L1b:
            yads.lf r9 = r8.c
            yads.df r1 = r9.e
            long r5 = r9.b
            r8.b = r4
            r22 r9 = r1.a
            yads.cf r7 = new yads.cf
            r7.<init>(r1, r5, r2)
            java.lang.Object r9 = defpackage.av0.d(r9, r7, r8)
            if (r9 != r0) goto L31
            goto L45
        L31:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            yads.lf r1 = r8.c
            if (r9 == 0) goto L46
            long r5 = r1.a
            r8.b = r3
            java.lang.Object r9 = defpackage.yk2.b(r5, r8)
            if (r9 != r0) goto L1b
        L45:
            return r0
        L46:
            yads.lf.a(r1)
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.kf.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
