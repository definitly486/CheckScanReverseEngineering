package defpackage;

import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.bank.BankInteractor$checkVerificationCanBeSkipped$1", f = "BankInteractor.kt", l = {122, TsExtractor.TS_STREAM_TYPE_HDMV_DTS}, m = "invokeSuspend")
public final class y90 extends pg8 implements bm3<id3<? super Boolean>, e02<? super j59>, Object> {
    public Boolean l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ ca0 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y90(ca0 ca0Var, e02<? super y90> e02Var) {
        super(2, e02Var);
        this.o = ca0Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        y90 y90Var = new y90(this.o, e02Var);
        y90Var.n = obj;
        return y90Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super Boolean> id3Var, e02<? super j59> e02Var) {
        return ((y90) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007d, code lost:
    
        if (r4.emit(r8, r7) == r0) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Throwable {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.m
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L24
            if (r1 == r4) goto L18
            if (r1 != r3) goto L12
            defpackage.r57.b(r8)
            goto L80
        L12:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L18:
            java.lang.Boolean r1 = r7.l
            java.lang.Object r4 = r7.n
            id3 r4 = (defpackage.id3) r4
            defpackage.r57.b(r8)     // Catch: java.lang.Throwable -> L22
            goto L41
        L22:
            r8 = move-exception
            goto L57
        L24:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.n
            id3 r8 = (defpackage.id3) r8
            ca0 r1 = r7.o
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            j5 r1 = r1.b     // Catch: java.lang.Throwable -> L53
            r7.n = r8     // Catch: java.lang.Throwable -> L53
            r7.l = r5     // Catch: java.lang.Throwable -> L53
            r7.m = r4     // Catch: java.lang.Throwable -> L53
            java.lang.Object r1 = r1.m(r7)     // Catch: java.lang.Throwable -> L53
            if (r1 != r0) goto L3e
            goto L7f
        L3e:
            r4 = r8
            r8 = r1
            r1 = r5
        L41:
            a57 r8 = (defpackage.a57) r8     // Catch: java.lang.Throwable -> L22
            T r8 = r8.b     // Catch: java.lang.Throwable -> L22
            r8.getClass()     // Catch: java.lang.Throwable -> L22
            rc9 r8 = (defpackage.rc9) r8     // Catch: java.lang.Throwable -> L22
            boolean r8 = r8.a()     // Catch: java.lang.Throwable -> L22
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.Throwable -> L22
            goto L5d
        L53:
            r1 = move-exception
            r4 = r8
            r8 = r1
            r1 = r5
        L57:
            k57$a r5 = new k57$a
            r5.<init>(r8)
            r8 = r5
        L5d:
            java.lang.Throwable r5 = defpackage.k57.a(r8)
            if (r5 == 0) goto L69
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 != 0) goto L68
            goto L69
        L68:
            throw r5
        L69:
            boolean r5 = r8 instanceof k57.a
            if (r5 == 0) goto L6e
            r8 = r1
        L6e:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            r8.getClass()
            r7.n = r2
            r7.l = r2
            r7.m = r3
            java.lang.Object r7 = r4.emit(r8, r7)
            if (r7 != r0) goto L80
        L7f:
            return r0
        L80:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y90.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
