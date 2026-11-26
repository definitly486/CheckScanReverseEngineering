package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$alfaTransferCashback$1", f = "BalanceInteractor.kt", l = {175, WebmConstants.MkvEbmlElement.PIXEL_WIDTH, 177}, m = "invokeSuspend")
public final class c40 extends pg8 implements bm3<id3<? super a40>, e02<? super j59>, Object> {
    public kc l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ b40 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c40(b40 b40Var, e02<? super c40> e02Var) {
        super(2, e02Var);
        this.o = b40Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        c40 c40Var = new c40(this.o, e02Var);
        c40Var.n = obj;
        return c40Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super a40> id3Var, e02<? super j59> e02Var) {
        return ((c40) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b7  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ca, code lost:
    
        if (r1.emit(r6, r14) == r0) goto L31;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c40.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
