package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class sd3 {

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", f = "Channels.kt", l = {32, 33}, m = "emitAllImpl$FlowKt__ChannelsKt", v = 1)
    public static final class a<T> extends f02 {
        public id3 l;
        public qz6 m;
        public k91 n;
        public boolean o;
        public /* synthetic */ Object p;
        public int q;

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.p = obj;
            this.q |= Integer.MIN_VALUE;
            return sd3.b(null, null, false, this);
        }
    }

    public static final z81 a(qz6 qz6Var) {
        return new z81(qz6Var, true);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0064  */
    /* JADX WARN: Code duplicated, block: B:28:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0071 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x002f, B:25:0x0054, B:29:0x0069, B:31:0x0071, B:20:0x0045, B:24:0x0050), top: B:50:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x0088  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
    
        if (r2.emit(r10, r0) == r1) goto L33;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0083 -> B:14:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object b(defpackage.id3<? super T> r7, defpackage.qz6<? extends T> r8, boolean r9, defpackage.e02<? super defpackage.j59> r10) {
        /*
            boolean r0 = r10 instanceof sd3.a
            if (r0 == 0) goto L13
            r0 = r10
            sd3$a r0 = (sd3.a) r0
            int r1 = r0.q
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.q = r1
            goto L18
        L13:
            sd3$a r0 = new sd3$a
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.p
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.q
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L37
            boolean r9 = r0.o
            k91 r7 = r0.n
            qz6 r8 = r0.m
            id3 r2 = r0.l
            defpackage.r57.b(r10)     // Catch: java.lang.Throwable -> L35
        L32:
            r10 = r7
            r7 = r2
            goto L54
        L35:
            r7 = move-exception
            goto L8e
        L37:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r5
        L3d:
            boolean r9 = r0.o
            k91 r7 = r0.n
            qz6 r8 = r0.m
            id3 r2 = r0.l
            defpackage.r57.b(r10)     // Catch: java.lang.Throwable -> L35
            goto L69
        L49:
            defpackage.r57.b(r10)
            boolean r10 = r7 instanceof defpackage.yt8
            if (r10 != 0) goto La5
            k91 r10 = r8.iterator()     // Catch: java.lang.Throwable -> L35
        L54:
            r0.l = r7     // Catch: java.lang.Throwable -> L35
            r0.m = r8     // Catch: java.lang.Throwable -> L35
            r0.n = r10     // Catch: java.lang.Throwable -> L35
            r0.o = r9     // Catch: java.lang.Throwable -> L35
            r0.q = r4     // Catch: java.lang.Throwable -> L35
            java.lang.Object r2 = r10.b(r0)     // Catch: java.lang.Throwable -> L35
            if (r2 != r1) goto L65
            goto L85
        L65:
            r6 = r2
            r2 = r7
            r7 = r10
            r10 = r6
        L69:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L35
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r10 == 0) goto L86
            java.lang.Object r10 = r7.next()     // Catch: java.lang.Throwable -> L35
            r0.l = r2     // Catch: java.lang.Throwable -> L35
            r0.m = r8     // Catch: java.lang.Throwable -> L35
            r0.n = r7     // Catch: java.lang.Throwable -> L35
            r0.o = r9     // Catch: java.lang.Throwable -> L35
            r0.q = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r10 = r2.emit(r10, r0)     // Catch: java.lang.Throwable -> L35
            if (r10 != r1) goto L32
        L85:
            return r1
        L86:
            if (r9 == 0) goto L8b
            r8.cancel(r5)
        L8b:
            j59 r7 = defpackage.j59.a
            return r7
        L8e:
            throw r7     // Catch: java.lang.Throwable -> L8f
        L8f:
            r10 = move-exception
            if (r9 == 0) goto La4
            boolean r9 = r7 instanceof java.util.concurrent.CancellationException
            if (r9 == 0) goto L99
            r5 = r7
            java.util.concurrent.CancellationException r5 = (java.util.concurrent.CancellationException) r5
        L99:
            if (r5 != 0) goto La1
            java.lang.String r9 = "Channel was consumed, consumer had failed"
            java.util.concurrent.CancellationException r5 = defpackage.pib.a(r9, r7)
        La1:
            r8.cancel(r5)
        La4:
            throw r10
        La5:
            yt8 r7 = (defpackage.yt8) r7
            java.lang.Throwable r7 = r7.b
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sd3.b(id3, qz6, boolean, e02):java.lang.Object");
    }
}
