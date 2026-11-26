package androidx.datastore.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.r57;
import defpackage.tb7;
import defpackage.yg5;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleProcessCoordinator implements InterProcessCoordinator {
    private final String filePath;
    private final yg5 mutex;
    private final hd3<j59> updateNotifications;
    private final AtomicInt version;

    /* JADX INFO: renamed from: androidx.datastore.core.SingleProcessCoordinator$lock$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.SingleProcessCoordinator", f = "SingleProcessCoordinator.kt", l = {66, 41}, m = "lock")
    public static final class AnonymousClass1<T> extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SingleProcessCoordinator.this.lock(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.SingleProcessCoordinator$tryLock$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.SingleProcessCoordinator", f = "SingleProcessCoordinator.kt", l = {50}, m = "tryLock")
    public static final class C06791<T> extends f02 {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C06791(e02<? super C06791> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SingleProcessCoordinator.this.tryLock(null, this);
        }
    }

    public SingleProcessCoordinator(String str) {
        str.getClass();
        this.filePath = str;
        this.mutex = new ch5();
        this.version = new AtomicInt(0);
        this.updateNotifications = new tb7(new SingleProcessCoordinator$updateNotifications$1(null));
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public hd3<j59> getUpdateNotifications() {
        return this.updateNotifications;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object getVersion(e02<? super Integer> e02Var) {
        return new Integer(this.version.get());
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object incrementAndGetVersion(e02<? super Integer> e02Var) {
        return new Integer(this.version.incrementAndGet());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005f, code lost:
    
        if (r8 == r1) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.datastore.core.SingleProcessCoordinator] */
    /* JADX WARN: Type inference failed for: r6v1, types: [yg5] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v4, types: [yg5] */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> java.lang.Object lock(defpackage.nl3<? super defpackage.e02<? super T>, ? extends java.lang.Object> r7, defpackage.e02<? super T> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.datastore.core.SingleProcessCoordinator.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.datastore.core.SingleProcessCoordinator$lock$1 r0 = (androidx.datastore.core.SingleProcessCoordinator.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessCoordinator$lock$1 r0 = new androidx.datastore.core.SingleProcessCoordinator$lock$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L43
            if (r2 == r4) goto L37
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$0
            yg5 r6 = (defpackage.yg5) r6
            defpackage.r57.b(r8)     // Catch: java.lang.Throwable -> L2f
            goto L62
        L2f:
            r7 = move-exception
            goto L66
        L31:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r5
        L37:
            java.lang.Object r6 = r0.L$1
            yg5 r6 = (defpackage.yg5) r6
            java.lang.Object r7 = r0.L$0
            nl3 r7 = (defpackage.nl3) r7
            defpackage.r57.b(r8)
            goto L55
        L43:
            defpackage.r57.b(r8)
            yg5 r6 = r6.mutex
            r0.L$0 = r7
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r8 = r6.lock(r5, r0)
            if (r8 != r1) goto L55
            goto L61
        L55:
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L2f
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L2f
            r0.label = r3     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r8 = r7.invoke(r0)     // Catch: java.lang.Throwable -> L2f
            if (r8 != r1) goto L62
        L61:
            return r1
        L62:
            r6.unlock(r5)
            return r8
        L66:
            r6.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessCoordinator.lock(nl3, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0056  */
    /* JADX WARN: Code duplicated, block: B:29:0x0061  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.InterProcessCoordinator
    public <T> Object tryLock(bm3<? super Boolean, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) throws Throwable {
        C06791 c06791;
        yg5 yg5Var;
        boolean z;
        Throwable th;
        if (e02Var instanceof C06791) {
            c06791 = (C06791) e02Var;
            int i = c06791.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06791.label = i - Integer.MIN_VALUE;
            } else {
                c06791 = new C06791(e02Var);
            }
        } else {
            c06791 = new C06791(e02Var);
        }
        Object obj = c06791.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06791.label;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = c06791.Z$0;
            yg5Var = (yg5) c06791.L$0;
            try {
                r57.b(obj);
                if (z) {
                    yg5Var.unlock(null);
                }
                return obj;
            } catch (Throwable th2) {
                th = th2;
                if (z) {
                    yg5Var.unlock(null);
                }
                throw th;
            }
        }
        r57.b(obj);
        yg5 yg5Var2 = this.mutex;
        boolean zTryLock = yg5Var2.tryLock(null);
        try {
            Boolean boolValueOf = Boolean.valueOf(zTryLock);
            c06791.L$0 = yg5Var2;
            c06791.Z$0 = zTryLock;
            c06791.label = 1;
            Object objInvoke = bm3Var.invoke(boolValueOf, c06791);
            if (objInvoke == a32Var) {
                return a32Var;
            }
            yg5Var = yg5Var2;
            z = zTryLock;
            obj = objInvoke;
            if (z) {
                yg5Var.unlock(null);
            }
            return obj;
        } catch (Throwable th3) {
            yg5Var = yg5Var2;
            z = zTryLock;
            th = th3;
            if (z) {
                yg5Var.unlock(null);
            }
            throw th;
        }
    }
}
