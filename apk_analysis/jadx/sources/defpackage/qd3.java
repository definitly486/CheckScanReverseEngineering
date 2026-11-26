package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qd3 implements hd3<Object> {
    public final /* synthetic */ Object[] b;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1", f = "Builders.kt", l = {113}, m = "collect", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public id3 o;
        public int p;
        public int q;
        public int r;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return qd3.this.collect(null, this);
        }
    }

    public qd3(Object[] objArr) {
        this.b = objArr;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0044  */
    /* JADX WARN: Code duplicated, block: B:18:0x0056 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0054 -> B:19:0x0057). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.hd3
    public final java.lang.Object collect(defpackage.id3<? super java.lang.Object> r7, defpackage.e02<? super defpackage.j59> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof qd3.a
            if (r0 == 0) goto L13
            r0 = r8
            qd3$a r0 = (qd3.a) r0
            int r1 = r0.m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.m = r1
            goto L18
        L13:
            qd3$a r0 = new qd3$a
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.l
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.m
            java.lang.Object[] r6 = r6.b
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L32
            int r7 = r0.r
            int r2 = r0.q
            int r4 = r0.p
            id3 r5 = r0.o
            defpackage.r57.b(r8)
            r8 = r5
            goto L57
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L39:
            defpackage.r57.b(r8)
            int r8 = r6.length
            r2 = 0
            r4 = r8
            r8 = r7
            r7 = r4
            r4 = r2
        L42:
            if (r2 >= r7) goto L59
            r5 = r6[r2]
            r0.o = r8
            r0.p = r4
            r0.q = r2
            r0.r = r7
            r0.m = r3
            java.lang.Object r5 = r8.emit(r5, r0)
            if (r5 != r1) goto L57
            return r1
        L57:
            int r2 = r2 + r3
            goto L42
        L59:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qd3.collect(id3, e02):java.lang.Object");
    }
}
