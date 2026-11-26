package defpackage;

import androidx.compose.ui.spatial.RectListKt;

/* JADX INFO: loaded from: classes5.dex */
public final class oe3<T> implements id3 {
    public final /* synthetic */ p07 b;
    public final /* synthetic */ id3<T> c;
    public final /* synthetic */ Object d;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1", f = "Limit.kt", l = {59, RectListKt.BitOffsetForFocusable}, m = "emit", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public final /* synthetic */ oe3<T> m;
        public int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(oe3<? super T> oe3Var, e02<? super a> e02Var) {
            super(e02Var);
            this.m = oe3Var;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.n |= Integer.MIN_VALUE;
            return this.m.emit(null, this);
        }
    }

    public oe3(p07 p07Var, id3 id3Var, Object obj) {
        this.b = p07Var;
        this.c = id3Var;
        this.d = obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
    
        if (r7.emit(r6, r0) == r1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
    
        if (defpackage.km1.b(r7, r6, r5.d, r0) == r1) goto L25;
     */
    @Override // defpackage.id3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r6, defpackage.e02<? super defpackage.j59> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof oe3.a
            if (r0 == 0) goto L13
            r0 = r7
            oe3$a r0 = (oe3.a) r0
            int r1 = r0.n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.n = r1
            goto L18
        L13:
            oe3$a r0 = new oe3$a
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.l
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.n
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            defpackage.r57.b(r7)
            goto L5a
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L31:
            defpackage.r57.b(r7)
            goto L4c
        L35:
            defpackage.r57.b(r7)
            p07 r7 = r5.b
            int r2 = r7.b
            int r2 = r2 + r4
            r7.b = r2
            id3<T> r7 = r5.c
            if (r2 >= r4) goto L4f
            r0.n = r4
            java.lang.Object r5 = r7.emit(r6, r0)
            if (r5 != r1) goto L4c
            goto L59
        L4c:
            j59 r5 = defpackage.j59.a
            return r5
        L4f:
            r0.n = r3
            java.lang.Object r5 = r5.d
            a32 r5 = defpackage.km1.b(r7, r6, r5, r0)
            if (r5 != r1) goto L5a
        L59:
            return r1
        L5a:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.oe3.emit(java.lang.Object, e02):java.lang.Object");
    }
}
