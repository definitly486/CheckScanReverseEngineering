package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class us extends mi0 {
    public long i;
    public int j;
    public int k;

    public us() {
        super(2);
        this.k = 32;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
    
        if ((r0.remaining() + r3.position()) > 3072000) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(yads.mi0 r6) {
        /*
            r5 = this;
            r0 = 1073741824(0x40000000, float:2.0)
            boolean r0 = r6.b(r0)
            r1 = 0
            if (r0 != 0) goto L7f
            r0 = 268435456(0x10000000, float:2.5243549E-29)
            boolean r0 = r6.b(r0)
            if (r0 != 0) goto L7b
            r0 = 4
            boolean r0 = r6.b(r0)
            if (r0 != 0) goto L77
            int r0 = r5.j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 <= 0) goto L45
            int r3 = r5.k
            if (r0 < r3) goto L23
            goto L44
        L23:
            boolean r0 = r6.b(r2)
            boolean r3 = r5.b(r2)
            if (r0 == r3) goto L2e
            goto L44
        L2e:
            java.nio.ByteBuffer r0 = r6.d
            if (r0 == 0) goto L45
            java.nio.ByteBuffer r3 = r5.d
            if (r3 == 0) goto L45
            int r3 = r3.position()
            int r0 = r0.remaining()
            int r0 = r0 + r3
            r3 = 3072000(0x2ee000, float:4.304789E-39)
            if (r0 <= r3) goto L45
        L44:
            return r1
        L45:
            int r0 = r5.j
            int r1 = r0 + 1
            r5.j = r1
            r1 = 1
            if (r0 != 0) goto L5a
            long r3 = r6.f
            r5.f = r3
            boolean r0 = r6.b(r1)
            if (r0 == 0) goto L5a
            r5.b = r1
        L5a:
            boolean r0 = r6.b(r2)
            if (r0 == 0) goto L62
            r5.b = r2
        L62:
            java.nio.ByteBuffer r0 = r6.d
            if (r0 == 0) goto L72
            int r2 = r0.remaining()
            r5.c(r2)
            java.nio.ByteBuffer r2 = r5.d
            r2.put(r0)
        L72:
            long r2 = r6.f
            r5.i = r2
            return r1
        L77:
            defpackage.mi2.b()
            return r1
        L7b:
            defpackage.mi2.b()
            return r1
        L7f:
            defpackage.mi2.b()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.us.a(yads.mi0):boolean");
    }

    @Override // yads.mi0
    public final void b() {
        super.b();
        this.j = 0;
    }
}
