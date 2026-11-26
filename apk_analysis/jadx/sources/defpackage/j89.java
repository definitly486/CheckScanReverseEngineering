package defpackage;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.account.domain.useCases.UploadAvatarUseCase$invoke$1", f = "UploadAvatarUseCase.kt", l = {13, 13}, m = "invokeSuspend")
public final class j89 extends pg8 implements bm3<id3<? super lz>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ k89 n;
    public final /* synthetic */ File o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j89(k89 k89Var, File file, e02 e02Var) {
        super(2, e02Var);
        this.n = k89Var;
        this.o = file;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        j89 j89Var = new j89(this.n, this.o, e02Var);
        j89Var.m = obj;
        return j89Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super lz> id3Var, e02<? super j59> e02Var) {
        return ((j89) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
    
        if (r1.emit(r7, r6) == r0) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r6.l
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r7)
            goto L45
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r2
        L17:
            java.lang.Object r1 = r6.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r7)
            goto L3a
        L1f:
            defpackage.r57.b(r7)
            java.lang.Object r7 = r6.m
            r1 = r7
            id3 r1 = (defpackage.id3) r1
            k89 r7 = r6.n
            k5 r7 = r7.a
            r6.m = r1
            r6.l = r4
            java.lang.String r4 = "file"
            java.io.File r5 = r6.o
            java.lang.Enum r7 = r7.b(r4, r5, r6)
            if (r7 != r0) goto L3a
            goto L44
        L3a:
            r6.m = r2
            r6.l = r3
            java.lang.Object r6 = r1.emit(r7, r6)
            if (r6 != r0) goto L45
        L44:
            return r0
        L45:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j89.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
