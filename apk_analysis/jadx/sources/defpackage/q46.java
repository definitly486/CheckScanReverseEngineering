package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class q46 implements v48 {
    public final wu0 b;
    public final bu0 c;
    public gl7 d;
    public int e;
    public boolean f;
    public long g;

    public q46(wu0 wu0Var) {
        this.b = wu0Var;
        bu0 buffer = wu0Var.getBuffer();
        this.c = buffer;
        gl7 gl7Var = buffer.b;
        this.d = gl7Var;
        this.e = gl7Var != null ? gl7Var.b : -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f = true;
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return this.b.r();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r3 == r5.b) goto L15;
     */
    @Override // defpackage.v48
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long t0(defpackage.bu0 r9, long r10) {
        /*
            r8 = this;
            r9.getClass()
            r0 = 0
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 < 0) goto L65
            boolean r3 = r8.f
            if (r3 != 0) goto L5f
            gl7 r3 = r8.d
            bu0 r4 = r8.c
            if (r3 == 0) goto L27
            gl7 r5 = r4.b
            if (r3 != r5) goto L21
            int r3 = r8.e
            r5.getClass()
            int r5 = r5.b
            if (r3 != r5) goto L21
            goto L27
        L21:
            java.lang.String r8 = "Peek source is invalid because upstream source was used"
            defpackage.ah.f(r8)
            return r0
        L27:
            if (r2 != 0) goto L2a
            return r0
        L2a:
            long r0 = r8.g
            r2 = 1
            long r0 = r0 + r2
            wu0 r2 = r8.b
            boolean r0 = r2.request(r0)
            if (r0 != 0) goto L3a
            r8 = -1
            return r8
        L3a:
            gl7 r0 = r8.d
            if (r0 != 0) goto L48
            gl7 r0 = r4.b
            if (r0 == 0) goto L48
            r8.d = r0
            int r0 = r0.b
            r8.e = r0
        L48:
            long r0 = r4.c
            long r2 = r8.g
            long r0 = r0 - r2
            long r6 = java.lang.Math.min(r10, r0)
            bu0 r2 = r8.c
            long r4 = r8.g
            r3 = r9
            r2.E(r3, r4, r6)
            long r9 = r8.g
            long r9 = r9 + r6
            r8.g = r9
            return r6
        L5f:
            java.lang.String r8 = "closed"
            defpackage.ah.f(r8)
            return r0
        L65:
            java.lang.String r8 = "byteCount < 0: "
            java.lang.String r8 = defpackage.r01.c(r10, r8)
            defpackage.c9.f(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q46.t0(bu0, long):long");
    }
}
