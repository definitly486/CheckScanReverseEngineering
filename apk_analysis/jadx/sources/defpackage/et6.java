package defpackage;

import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes5.dex */
public final class et6<T> extends d91<T> {
    public final gg3 e;

    @bd2(c = "kotlinx.coroutines.reactive.PublisherAsFlow", f = "ReactiveFlow.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS, 91}, m = "collectImpl", v = 1)
    public static final class a extends f02 {
        public id3 l;
        public ay6 m;
        public long n;
        public /* synthetic */ Object o;
        public final /* synthetic */ et6<T> p;
        public int q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(et6<T> et6Var, e02<? super a> e02Var) {
            super(e02Var);
            this.p = et6Var;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.o = obj;
            this.q |= Integer.MIN_VALUE;
            return this.p.l(null, null, this);
        }
    }

    public et6(gg3 gg3Var, o22 o22Var, int i, cu0 cu0Var) {
        super(o22Var, i, cu0Var);
        this.e = gg3Var;
    }

    @Override // defpackage.d91, defpackage.hd3
    public final Object collect(id3<? super T> id3Var, e02<? super j59> e02Var) {
        o22 context = e02Var.getContext();
        Boolean bool = Boolean.FALSE;
        it1 it1Var = new it1(1);
        o22 o22Var = this.b;
        if (aa4.e(!((Boolean) o22Var.fold(bool, it1Var)).booleanValue() ? context.plus(o22Var) : q22.a(context, o22Var, false), context)) {
            Object objL = l(context, id3Var, e02Var);
            return objL == a32.COROUTINE_SUSPENDED ? objL : j59.a;
        }
        Object objCollect = super.collect(id3Var, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    @Override // defpackage.d91
    public final Object h(ug6<? super T> ug6Var, e02<? super j59> e02Var) {
        Object objL = l(ug6Var.getCoroutineContext(), new yo7(ug6Var.getChannel()), e02Var);
        return objL == a32.COROUTINE_SUSPENDED ? objL : j59.a;
    }

    @Override // defpackage.d91
    public final d91<T> i(o22 o22Var, int i, cu0 cu0Var) {
        return new et6(this.e, o22Var, i, cu0Var);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0085  */
    /* JADX WARN: Code duplicated, block: B:31:0x008a  */
    /* JADX WARN: Code duplicated, block: B:33:0x008e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0094  */
    /* JADX WARN: Code duplicated, block: B:37:0x0098 A[Catch: all -> 0x003b, TRY_ENTER, TryCatch #0 {all -> 0x003b, blocks: (B:13:0x0035, B:40:0x00ae, B:26:0x0076, B:37:0x0098, B:42:0x00b9, B:44:0x00bd, B:45:0x00c4, B:46:0x00c7, B:20:0x004a), top: B:53:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ab, code lost:
    
        if (r13.emit(r1, r2) == r3) goto L39;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v4, types: [id3] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7, types: [id3] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [ay6] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [ay6] */
    /* JADX WARN: Type inference failed for: r4v6, types: [ay6] */
    /* JADX WARN: Type inference failed for: r4v7, types: [ay6] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00ab -> B:14:0x0038). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(defpackage.o22 r17, defpackage.id3<? super T> r18, defpackage.e02<? super defpackage.j59> r19) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.et6.l(o22, id3, e02):java.lang.Object");
    }

    public final long m() {
        if (this.d != cu0.SUSPEND) {
            return Long.MAX_VALUE;
        }
        int i = this.c;
        if (i == -2) {
            x81.s1.getClass();
            return x81.a.b;
        }
        if (i == 0) {
            return 1L;
        }
        if (i == Integer.MAX_VALUE) {
            return Long.MAX_VALUE;
        }
        long j = i;
        if (j >= 1) {
            return j;
        }
        ah.f("Check failed.");
        return 0L;
    }
}
