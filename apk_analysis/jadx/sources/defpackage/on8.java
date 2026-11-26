package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.domain.interactor.TaskInteractor$claimRewardedSubTaskMultiTaskReward$1", f = "TaskInteractor.kt", l = {50, ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG, 52}, m = "invokeSuspend")
public final class on8 extends pg8 implements bm3<id3<? super b36<? extends kk1, ? extends k77>>, e02<? super j59>, Object> {
    public kk1 l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ vn8 o;
    public final /* synthetic */ int p;
    public final /* synthetic */ int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public on8(vn8 vn8Var, int i, int i2, e02<? super on8> e02Var) {
        super(2, e02Var);
        this.o = vn8Var;
        this.p = i;
        this.q = i2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        on8 on8Var = new on8(this.o, this.p, this.q, e02Var);
        on8Var.n = obj;
        return on8Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super b36<? extends kk1, ? extends k77>> id3Var, e02<? super j59> e02Var) {
        return ((on8) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
    
        if (r3.emit(r4, r9) == r0) goto L22;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r9.m
            r2 = 0
            int r3 = r9.p
            vn8 r4 = r9.o
            r5 = 3
            r6 = 2
            r7 = 1
            if (r1 == 0) goto L30
            if (r1 == r7) goto L28
            if (r1 == r6) goto L1e
            if (r1 != r5) goto L18
            defpackage.r57.b(r10)
            goto L72
        L18:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r2
        L1e:
            kk1 r1 = r9.l
            java.lang.Object r3 = r9.n
            id3 r3 = (defpackage.id3) r3
            defpackage.r57.b(r10)
            goto L5e
        L28:
            java.lang.Object r1 = r9.n
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r10)
            goto L49
        L30:
            defpackage.r57.b(r10)
            java.lang.Object r10 = r9.n
            id3 r10 = (defpackage.id3) r10
            ap8 r1 = r4.a
            r9.n = r10
            r9.m = r7
            int r7 = r9.q
            java.lang.Object r1 = r1.o(r3, r7, r9)
            if (r1 != r0) goto L46
            goto L71
        L46:
            r8 = r1
            r1 = r10
            r10 = r8
        L49:
            kk1 r10 = (defpackage.kk1) r10
            ap8 r4 = r4.a
            r9.n = r1
            r9.l = r10
            r9.m = r6
            java.lang.Object r3 = r4.p(r3, r9)
            if (r3 != r0) goto L5a
            goto L71
        L5a:
            r8 = r1
            r1 = r10
            r10 = r3
            r3 = r8
        L5e:
            k77 r10 = (defpackage.k77) r10
            b36 r4 = new b36
            r4.<init>(r1, r10)
            r9.n = r2
            r9.l = r2
            r9.m = r5
            java.lang.Object r9 = r3.emit(r4, r9)
            if (r9 != r0) goto L72
        L71:
            return r0
        L72:
            j59 r9 = defpackage.j59.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.on8.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
