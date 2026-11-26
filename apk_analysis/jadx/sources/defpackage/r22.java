package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public abstract class r22 extends b0 implements g02 {
    public static final a Key = new a(g02.a.b, new u00(1));

    @ul2
    public static final class a extends c0<g02, r22> {
    }

    public r22() {
        super(g02.a.b);
    }

    public static /* synthetic */ r22 limitedParallelism$default(r22 r22Var, int i, String str, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: limitedParallelism");
            return null;
        }
        if ((i2 & 2) != 0) {
            str = null;
        }
        return r22Var.limitedParallelism(i, str);
    }

    public abstract void dispatch(o22 o22Var, Runnable runnable);

    public void dispatchYield(o22 o22Var, Runnable runnable) {
        go2.g(this, o22Var, runnable);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to r22 for r3v3 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.b0, defpackage.o22
    public <E extends o22.a> E get(o22.b<E> r4) {
        /*
            r3 = this;
            r4.getClass()
            boolean r0 = r4 instanceof defpackage.c0
            r1 = 0
            if (r0 == 0) goto L24
            c0 r4 = (defpackage.c0) r4
            o22$b r0 = r3.getKey()
            r0.getClass()
            if (r0 == r4) goto L19
            o22$b<?> r2 = r4.c
            if (r2 != r0) goto L18
            goto L19
        L18:
            return r1
        L19:
            nl3<o22$a, E extends B> r4 = r4.b
            java.lang.Object r3 = r4.invoke(r3)
            o22$a r3 = (o22.a) r3
            if (r3 == 0) goto L29
            return r3
        L24:
            g02$a r0 = g02.a.b
            if (r0 != r4) goto L29
            return r3
        L29:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r22.get(o22$b):o22$a");
    }

    @Override // defpackage.g02
    public final <T> e02<T> interceptContinuation(e02<? super T> e02Var) {
        return new fo2(this, e02Var);
    }

    public boolean isDispatchNeeded(o22 o22Var) {
        return true;
    }

    public r22 limitedParallelism(int i, String str) {
        zd3.b(i);
        return new cq4(this, i, str);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to r22 for r2v2 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.b0, defpackage.o22
    public defpackage.o22 minusKey(o22.b<?> r3) {
        /*
            r2 = this;
            r3.getClass()
            boolean r0 = r3 instanceof defpackage.c0
            if (r0 == 0) goto L23
            c0 r3 = (defpackage.c0) r3
            o22$b r0 = r2.getKey()
            r0.getClass()
            if (r0 == r3) goto L18
            o22$b<?> r1 = r3.c
            if (r1 != r0) goto L17
            goto L18
        L17:
            return r2
        L18:
            nl3<o22$a, E extends B> r3 = r3.b
            java.lang.Object r3 = r3.invoke(r2)
            o22$a r3 = (o22.a) r3
            if (r3 == 0) goto L29
            goto L27
        L23:
            g02$a r0 = g02.a.b
            if (r0 != r3) goto L29
        L27:
            gx2 r2 = defpackage.gx2.b
        L29:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r22.minusKey(o22$b):o22");
    }

    @ul2
    public final r22 plus(r22 r22Var) {
        return r22Var;
    }

    @Override // defpackage.g02
    public final void releaseInterceptedContinuation(e02<?> e02Var) {
        Unsafe unsafe;
        long j;
        e02Var.getClass();
        fo2 fo2Var = (fo2) e02Var;
        do {
            unsafe = pz0.a;
            j = fo2.i;
        } while (unsafe.getObjectVolatile(fo2Var, j) == go2.c);
        Object objectVolatile = unsafe.getObjectVolatile(fo2Var, j);
        c31 c31Var = objectVolatile instanceof c31 ? (c31) objectVolatile : null;
        if (c31Var != null) {
            c31Var.o();
        }
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + cd2.a(this);
    }

    @ul2
    public /* synthetic */ r22 limitedParallelism(int i) {
        return limitedParallelism(i, null);
    }
}
