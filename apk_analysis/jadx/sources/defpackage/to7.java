package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class to7 {
    public final d16 a;

    public to7(d16 d16Var) {
        this.a = d16Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0076, code lost:
    
        if (r6.c(r2, r0) == r1) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.f02 r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof defpackage.so7
            if (r0 == 0) goto L13
            r0 = r7
            so7 r0 = (defpackage.so7) r0
            int r1 = r0.n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.n = r1
            goto L18
        L13:
            so7 r0 = new so7
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.l
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.n
            r3 = 2
            r4 = 1
            d16 r6 = r6.a
            if (r2 == 0) goto L37
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2c
            defpackage.r57.b(r7)
            goto L79
        L2c:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L33:
            defpackage.r57.b(r7)
            goto L43
        L37:
            defpackage.r57.b(r7)
            r0.n = r4
            java.lang.Object r7 = r6.b(r0)
            if (r7 != r1) goto L43
            goto L78
        L43:
            java.util.List r7 = (java.util.List) r7
            r2 = r7
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto L7c
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r7 = r7.iterator()
        L59:
            boolean r4 = r7.hasNext()
            if (r4 == 0) goto L70
            java.lang.Object r4 = r7.next()
            r5 = r4
            java.lang.String r5 = (java.lang.String) r5
            boolean r5 = r6.a(r5)
            if (r5 == 0) goto L59
            r2.add(r4)
            goto L59
        L70:
            r0.n = r3
            java.lang.Object r6 = r6.c(r2, r0)
            if (r6 != r1) goto L79
        L78:
            return r1
        L79:
            j59 r6 = defpackage.j59.a
            return r6
        L7c:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.to7.a(f02):java.lang.Object");
    }
}
