package defpackage;

import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.domain.interactor.DailyTaskInteractor$getReward$1", f = "DailyTaskInteractor.kt", l = {70, TsExtractor.TS_SYNC_BYTE}, m = "invokeSuspend")
public final class e82 extends pg8 implements bm3<id3<? super d82.a>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ d82 n;
    public final /* synthetic */ int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e82(d82 d82Var, int i, e02<? super e82> e02Var) {
        super(2, e02Var);
        this.n = d82Var;
        this.o = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        e82 e82Var = new e82(this.n, this.o, e02Var);
        e82Var.m = obj;
        return e82Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super d82.a> id3Var, e02<? super j59> e02Var) {
        return ((e82) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
    
        if (r1.emit(r6, r5) == r0) goto L22;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.l
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r6)
            goto L58
        L11:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            return r2
        L17:
            java.lang.Object r1 = r5.m
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r6)
            goto L38
        L1f:
            defpackage.r57.b(r6)
            java.lang.Object r6 = r5.m
            r1 = r6
            id3 r1 = (defpackage.id3) r1
            d82 r6 = r5.n
            ap8 r6 = r6.a
            r5.m = r1
            r5.l = r4
            int r4 = r5.o
            java.lang.Object r6 = r6.c(r4, r5)
            if (r6 != r0) goto L38
            goto L57
        L38:
            s72 r6 = (defpackage.s72) r6
            com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult r4 = r6.b
            if (r4 == 0) goto L44
            d82$a$b r6 = new d82$a$b
            r6.<init>(r4)
            goto L4d
        L44:
            boolean r6 = r6.a
            if (r6 == 0) goto L4b
            d82$a$c r6 = d82.a.c.a
            goto L4d
        L4b:
            d82$a$a r6 = d82.a.C0178a.a
        L4d:
            r5.m = r2
            r5.l = r3
            java.lang.Object r5 = r1.emit(r6, r5)
            if (r5 != r0) goto L58
        L57:
            return r0
        L58:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e82.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
