package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ge3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ fm3 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", f = "Errors.kt", l = {116, 118}, m = "collect", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public id3 o;
        public Throwable p;
        public int q;
        public int r;
        public long s;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return ge3.this.collect(null, this);
        }
    }

    public ge3(hd3 hd3Var, fm3 fm3Var) {
        this.b = hd3Var;
        this.c = fm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0065  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0092 A[PHI: r0 r7 r9 r14 r15
      0x0092: PHI (r0v5 ge3$a) = (r0v3 ge3$a), (r0v8 ge3$a) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r7v3 long) = (r7v1 long), (r7v5 long) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r9v2 id3<? super java.lang.Object>) = (r9v0 id3<? super java.lang.Object>), (r9v3 id3<? super java.lang.Object>) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r14v4 int) = (r14v1 int), (r14v6 int) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r15v8 int) = (r15v3 int), (r15v13 int) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:32:0x0099  */
    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006a -> B:29:0x0092). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0083 -> B:26:0x0086). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.hd3
    public final java.lang.Object collect(defpackage.id3<? super java.lang.Object> r14, defpackage.e02<? super defpackage.j59> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof ge3.a
            if (r0 == 0) goto L13
            r0 = r15
            ge3$a r0 = (ge3.a) r0
            int r1 = r0.m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.m = r1
            goto L18
        L13:
            ge3$a r0 = new ge3$a
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.l
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.m
            r3 = 0
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4a
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L34
            long r7 = r0.s
            int r14 = r0.q
            java.lang.Throwable r2 = r0.p
            id3 r9 = r0.o
            defpackage.r57.b(r15)
            goto L86
        L34:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r13)
            return r6
        L3a:
            int r14 = r0.r
            long r7 = r0.s
            int r2 = r0.q
            id3 r9 = r0.o
            defpackage.r57.b(r15)
            r12 = r15
            r15 = r14
            r14 = r2
            r2 = r12
            goto L68
        L4a:
            defpackage.r57.b(r15)
            r7 = 0
            r15 = r3
        L50:
            r0.o = r14
            r0.p = r6
            r0.q = r15
            r0.s = r7
            r0.r = r3
            r0.m = r5
            hd3 r2 = r13.b
            java.io.Serializable r2 = defpackage.he3.a(r2, r14, r0)
            if (r2 != r1) goto L65
            goto L85
        L65:
            r9 = r14
            r14 = r15
            r15 = r3
        L68:
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            if (r2 == 0) goto L92
            java.lang.Long r10 = new java.lang.Long
            r10.<init>(r7)
            r0.o = r9
            r0.p = r2
            r0.q = r14
            r0.s = r7
            r0.r = r15
            r0.m = r4
            fm3 r15 = r13.c
            java.lang.Object r15 = r15.invoke(r9, r2, r10, r0)
            if (r15 != r1) goto L86
        L85:
            return r1
        L86:
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r15 = r15.booleanValue()
            if (r15 == 0) goto L96
            r10 = 1
            long r7 = r7 + r10
            r15 = r5
        L92:
            r2 = r0
            r0 = r14
            r14 = r9
            goto L97
        L96:
            throw r2
        L97:
            if (r15 != 0) goto L9c
            j59 r13 = defpackage.j59.a
            return r13
        L9c:
            r15 = r0
            r0 = r2
            goto L50
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ge3.collect(id3, e02):java.lang.Object");
    }
}
