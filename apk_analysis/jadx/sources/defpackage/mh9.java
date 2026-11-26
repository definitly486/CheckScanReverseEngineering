package defpackage;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.welcomes.WelcomeBannersInteractor$subscribeOnWelcomeBanners$1", f = "WelcomeBannersInteractor.kt", l = {29, 49}, m = "invokeSuspend")
public final class mh9 extends pg8 implements bm3<id3<? super hc0.a>, e02<? super j59>, Object> {
    public kx2 l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ nh9 o;

    public static final class a extends x39<HashMap<String, Long>> {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mh9(nh9 nh9Var, e02<? super mh9> e02Var) {
        super(2, e02Var);
        this.o = nh9Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        mh9 mh9Var = new mh9(this.o, e02Var);
        mh9Var.n = obj;
        return mh9Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super hc0.a> id3Var, e02<? super j59> e02Var) {
        return ((mh9) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b A[Catch: all -> 0x0029, LOOP:0: B:25:0x0075->B:27:0x007b, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x0029, blocks: (B:10:0x0023, B:24:0x005b, B:25:0x0075, B:27:0x007b, B:21:0x0049), top: B:69:0x000b }] */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013c, code lost:
    
        if (r8.emit(r7, r17) == r2) goto L64;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r9v0, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.util.ArrayList] */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mh9.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
