package defpackage;

import com.warefly.checkscan.tasks.presentation.adResult.DailyBonusPoints;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.domain.interactor.TaskInteractor$sendAdWatched$1", f = "TaskInteractor.kt", l = {57, 56}, m = "invokeSuspend")
public final class un8 extends pg8 implements bm3<id3<? super DailyBonusPoints>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ vn8 n;
    public final /* synthetic */ String o;
    public final /* synthetic */ String p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public un8(vn8 vn8Var, String str, String str2, e02<? super un8> e02Var) {
        super(2, e02Var);
        this.n = vn8Var;
        this.o = str;
        this.p = str2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        un8 un8Var = new un8(this.n, this.o, this.p, e02Var);
        un8Var.m = obj;
        return un8Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super DailyBonusPoints> id3Var, e02<? super j59> e02Var) {
        return ((un8) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
    
        if (r1.emit(r9, r8) == r0) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r8.l
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r9)
            goto L4a
        L11:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r2
        L17:
            java.lang.Object r1 = r8.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r9)
            goto L3f
        L1f:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.m
            r1 = r9
            id3 r1 = (defpackage.id3) r1
            vn8 r9 = r8.n
            ap8 r9 = r9.a
            j8 r5 = new j8
            java.lang.String r6 = r8.o
            java.lang.String r7 = r8.p
            r5.<init>(r6, r7)
            r8.m = r1
            r8.l = r4
            java.lang.Object r9 = r9.f(r5, r8)
            if (r9 != r0) goto L3f
            goto L49
        L3f:
            r8.m = r2
            r8.l = r3
            java.lang.Object r8 = r1.emit(r9, r8)
            if (r8 != r0) goto L4a
        L49:
            return r0
        L4a:
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.un8.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
