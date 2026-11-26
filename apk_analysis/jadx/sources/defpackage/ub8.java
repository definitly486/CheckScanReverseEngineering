package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ub8<T> implements id3<T> {
    public final id3<T> b;
    public final bm3<id3<? super T>, e02<? super j59>, Object> c;

    /* JADX WARN: Multi-variable type inference failed */
    public ub8(id3<? super T> id3Var, bm3<? super id3<? super T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.b = id3Var;
        this.c = bm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005c  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        if (((defpackage.ub8) r4).c(r0) == r1) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(defpackage.f02 r9) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r9 instanceof defpackage.tb8
            if (r0 == 0) goto L13
            r0 = r9
            tb8 r0 = (defpackage.tb8) r0
            int r1 = r0.o
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.o = r1
            goto L18
        L13:
            tb8 r0 = new tb8
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.m
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.o
            r3 = 0
            id3<T> r4 = r8.b
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3b
            if (r2 == r6) goto L33
            if (r2 != r5) goto L2d
            defpackage.r57.b(r9)
            goto L69
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r3
        L33:
            pb7 r8 = r0.l
            defpackage.r57.b(r9)     // Catch: java.lang.Throwable -> L39
            goto L55
        L39:
            r9 = move-exception
            goto L73
        L3b:
            defpackage.r57.b(r9)
            pb7 r9 = new pb7
            o22 r2 = r0.getContext()
            r9.<init>(r4, r2)
            bm3<id3<? super T>, e02<? super j59>, java.lang.Object> r8 = r8.c     // Catch: java.lang.Throwable -> L6f
            r0.l = r9     // Catch: java.lang.Throwable -> L6f
            r0.o = r6     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r8 = r8.invoke(r9, r0)     // Catch: java.lang.Throwable -> L6f
            if (r8 != r1) goto L54
            goto L68
        L54:
            r8 = r9
        L55:
            r8.releaseIntercepted()
            boolean r8 = r4 instanceof defpackage.ub8
            if (r8 == 0) goto L6c
            ub8 r4 = (defpackage.ub8) r4
            r0.l = r3
            r0.o = r5
            java.lang.Object r8 = r4.c(r0)
            if (r8 != r1) goto L69
        L68:
            return r1
        L69:
            j59 r8 = defpackage.j59.a
            return r8
        L6c:
            j59 r8 = defpackage.j59.a
            return r8
        L6f:
            r8 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        L73:
            r8.releaseIntercepted()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ub8.c(f02):java.lang.Object");
    }

    @Override // defpackage.id3
    public final Object emit(T t, e02<? super j59> e02Var) {
        return this.b.emit(t, e02Var);
    }
}
