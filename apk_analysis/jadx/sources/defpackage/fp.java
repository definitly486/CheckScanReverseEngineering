package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fp implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fp(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x008f, code lost:
    
        if (r9.n <= 0) goto L46;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r9 = this;
            int r0 = r9.b
            java.lang.Object r9 = r9.c
            switch(r0) {
                case 0: goto Laf;
                case 1: goto La9;
                case 2: goto Ld;
                default: goto L7;
            }
        L7:
            yads.wn r9 = (yads.wn) r9
            yads.wn.b(r9)
            return
        Ld:
            com.my.target.w1 r9 = (com.my.target.w1) r9
            java.util.List r0 = r9.f
            boolean r1 = r9.E()
            r2 = 0
            r4 = 200(0xc8, double:9.9E-322)
            r6 = 1
            if (r1 == 0) goto L67
            int r1 = r9.q
            if (r1 != r6) goto L33
            boolean r1 = r9.D()
            if (r1 != 0) goto L33
            int r1 = r0.size()
            int r7 = r9.t
            if (r1 <= r7) goto L33
            long r7 = r9.u
            long r7 = r7 - r4
            r9.u = r7
        L33:
            long r7 = r9.u
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 > 0) goto L67
            kha r0 = r9.e
            if (r0 == 0) goto L63
            boolean r0 = r0.Y
            if (r0 != 0) goto L46
            boolean r0 = r9.s
            if (r0 != 0) goto L46
            goto L63
        L46:
            com.my.target.z0 r0 = r9.m
            if (r0 == 0) goto La8
            boolean r0 = r9.D()
            if (r0 == 0) goto L56
            com.my.target.z0 r9 = r9.m
            r9.b()
            goto La8
        L56:
            com.my.target.z0 r0 = r9.m
            r0.d()
            android.os.Handler r0 = r9.j
            fp r9 = r9.o
            r0.removeCallbacks(r9)
            goto La8
        L63:
            r9.A()
            goto La8
        L67:
            boolean r1 = r9.C()
            if (r1 == 0) goto L95
            boolean r1 = r9.r
            if (r1 != 0) goto L95
            int r1 = r9.q
            if (r1 != 0) goto L76
            goto L91
        L76:
            if (r1 != r6) goto L8b
            boolean r1 = r9.D()
            if (r1 != 0) goto L86
            int r0 = r0.size()
            int r1 = r9.t
            if (r0 < r1) goto L8b
        L86:
            long r0 = r9.n
            long r0 = r0 - r4
            r9.n = r0
        L8b:
            long r0 = r9.n
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 > 0) goto L95
        L91:
            r9.B()
            goto La8
        L95:
            boolean r0 = r9.E()
            if (r0 != 0) goto La5
            boolean r0 = r9.C()
            if (r0 == 0) goto La8
            boolean r0 = r9.r
            if (r0 != 0) goto La8
        La5:
            r9.v()
        La8:
            return
        La9:
            com.tapjoy.TJSetUserIDListener r9 = (com.tapjoy.TJSetUserIDListener) r9
            com.tapjoy.TJUser.a(r9)
            return
        Laf:
            android.content.Context r9 = (android.content.Context) r9
            androidx.appcompat.app.AppCompatDelegate.a(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fp.run():void");
    }
}
