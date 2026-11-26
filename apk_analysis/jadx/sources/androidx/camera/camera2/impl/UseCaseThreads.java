package androidx.camera.camera2.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.p01;
import defpackage.pg8;
import defpackage.r22;
import defpackage.r57;
import defpackage.rm9;
import defpackage.u96;
import defpackage.vh;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yp1;
import defpackage.z22;
import defpackage.zi2;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseThreads {
    private final r22 backgroundDispatcher;
    private final Executor backgroundExecutor;
    private final ThreadLocal<Boolean> isSequentialThread;
    private final Handler mainHandler;
    private final y22 scope;
    private final r22 sequentialDispatcher;
    private final Executor sequentialExecutor;
    private final Executor sequentialExecutorDelegate;
    private y22 sequentialScope;

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseThreads$confineDeferred$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseThreads$confineDeferred$1", f = "UseCaseThreads.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ ll3<mk2<T>> $block;
        final /* synthetic */ xp1<T> $signal;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(ll3<? extends mk2<? extends T>> ll3Var, xp1<T> xp1Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$block = ll3Var;
            this.$signal = xp1Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$block, this.$signal, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CoroutineAdaptersKt.propagateTo((mk2) this.$block.invoke(), this.$signal);
            return j59.a;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            CoroutineAdaptersKt.propagateTo((mk2) this.$block.invoke(), this.$signal);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseThreads$confineDeferredList$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseThreads$confineDeferredList$1", f = "UseCaseThreads.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04021 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ ll3<List<mk2<T>>> $block;
        final /* synthetic */ List<xp1<T>> $deferredList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04021(ll3<? extends List<? extends mk2<? extends T>>> ll3Var, List<? extends xp1<T>> list, e02<? super C04021> e02Var) {
            super(2, e02Var);
            this.$block = ll3Var;
            this.$deferredList = list;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04021(this.$block, this.$deferredList, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04021) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Iterable iterable = (Iterable) this.$block.invoke();
            List<xp1<T>> list = this.$deferredList;
            int i = 0;
            for (Object obj2 : iterable) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                CoroutineAdaptersKt.propagateTo((mk2) obj2, (xp1) list.get(i));
                i = i2;
            }
            return j59.a;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            Iterable iterable = (Iterable) this.$block.invoke();
            List<xp1<T>> list = this.$deferredList;
            int i = 0;
            for (Object obj2 : iterable) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                CoroutineAdaptersKt.propagateTo((mk2) obj2, (xp1) list.get(Integer.valueOf(i).intValue()));
                j59 j59Var = j59.a;
                i = i2;
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseThreads$confineDeferredListSuspend$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseThreads$confineDeferredListSuspend$1", f = "UseCaseThreads.kt", l = {WebmConstants.MkvEbmlElement.CUE_TIME}, m = "invokeSuspend", v = 1)
    public static final class C04031 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ nl3<e02<? super List<? extends mk2<? extends T>>>, Object> $block;
        final /* synthetic */ List<xp1<T>> $deferredList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04031(nl3<? super e02<? super List<? extends mk2<? extends T>>>, ? extends Object> nl3Var, List<? extends xp1<T>> list, e02<? super C04031> e02Var) {
            super(2, e02Var);
            this.$block = nl3Var;
            this.$deferredList = list;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04031(this.$block, this.$deferredList, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04031) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.camera.camera2.impl.UseCaseThreads$confineDeferredListSuspend$1 for r4v3 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L14
                if (r1 != r3) goto Le
                defpackage.r57.b(r5)
                goto L22
            Le:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                return r2
            L14:
                defpackage.r57.b(r5)
                nl3<e02<? super java.util.List<? extends mk2<? extends T>>>, java.lang.Object> r5 = r4.$block
                r4.label = r3
                java.lang.Object r5 = r5.invoke(r4)
                if (r5 != r0) goto L22
                return r0
            L22:
                java.lang.Iterable r5 = (java.lang.Iterable) r5
                java.util.List<xp1<T>> r4 = r4.$deferredList
                java.util.Iterator r5 = r5.iterator()
                r0 = 0
            L2b:
                boolean r1 = r5.hasNext()
                if (r1 == 0) goto L4a
                java.lang.Object r1 = r5.next()
                int r3 = r0 + 1
                if (r0 < 0) goto L46
                mk2 r1 = (defpackage.mk2) r1
                java.lang.Object r0 = r4.get(r0)
                xp1 r0 = (defpackage.xp1) r0
                androidx.camera.camera2.adapter.CoroutineAdaptersKt.propagateTo(r1, r0)
                r0 = r3
                goto L2b
            L46:
                defpackage.u96.o()
                throw r2
            L4a:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseThreads.C04031.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.camera.camera2.impl.UseCaseThreads$confineDeferredListSuspend$1 for r3v3 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        public final java.lang.Object invokeSuspend$$forInline(java.lang.Object r4) {
            /*
                r3 = this;
                nl3<e02<? super java.util.List<? extends mk2<? extends T>>>, java.lang.Object> r4 = r3.$block
                java.lang.Object r4 = r4.invoke(r3)
                java.lang.Iterable r4 = (java.lang.Iterable) r4
                java.util.List<xp1<T>> r3 = r3.$deferredList
                java.util.Iterator r4 = r4.iterator()
                r0 = 0
            Lf:
                boolean r1 = r4.hasNext()
                if (r1 == 0) goto L39
                java.lang.Object r1 = r4.next()
                int r2 = r0 + 1
                if (r0 < 0) goto L34
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                mk2 r1 = (defpackage.mk2) r1
                int r0 = r0.intValue()
                java.lang.Object r0 = r3.get(r0)
                xp1 r0 = (defpackage.xp1) r0
                androidx.camera.camera2.adapter.CoroutineAdaptersKt.propagateTo(r1, r0)
                j59 r0 = defpackage.j59.a
                r0 = r2
                goto Lf
            L34:
                defpackage.u96.o()
                r3 = 0
                throw r3
            L39:
                j59 r3 = defpackage.j59.a
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseThreads.C04031.invokeSuspend$$forInline(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseThreads$confineDeferredSuspend$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseThreads$confineDeferredSuspend$1", f = "UseCaseThreads.kt", l = {152}, m = "invokeSuspend", v = 1)
    public static final class C04041 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ nl3<e02<? super mk2<? extends T>>, Object> $block;
        final /* synthetic */ xp1<T> $signal;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04041(nl3<? super e02<? super mk2<? extends T>>, ? extends Object> nl3Var, xp1<T> xp1Var, e02<? super C04041> e02Var) {
            super(2, e02Var);
            this.$block = nl3Var;
            this.$signal = xp1Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04041(this.$block, this.$signal, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04041) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.camera.camera2.impl.UseCaseThreads$confineDeferredSuspend$1 for r3v3 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r4) {
            /*
                r3 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r3.label
                r2 = 1
                if (r1 == 0) goto L14
                if (r1 != r2) goto Ld
                defpackage.r57.b(r4)
                goto L22
            Ld:
                java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r3)
                r3 = 0
                return r3
            L14:
                defpackage.r57.b(r4)
                nl3<e02<? super mk2<? extends T>>, java.lang.Object> r4 = r3.$block
                r3.label = r2
                java.lang.Object r4 = r4.invoke(r3)
                if (r4 != r0) goto L22
                return r0
            L22:
                mk2 r4 = (defpackage.mk2) r4
                xp1<T> r3 = r3.$signal
                androidx.camera.camera2.adapter.CoroutineAdaptersKt.propagateTo(r4, r3)
                j59 r3 = defpackage.j59.a
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseThreads.C04041.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.camera.camera2.impl.UseCaseThreads$confineDeferredSuspend$1 for r0v3 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        public final java.lang.Object invokeSuspend$$forInline(java.lang.Object r1) {
            /*
                r0 = this;
                nl3<e02<? super mk2<? extends T>>, java.lang.Object> r1 = r0.$block
                java.lang.Object r1 = r1.invoke(r0)
                mk2 r1 = (defpackage.mk2) r1
                xp1<T> r0 = r0.$signal
                androidx.camera.camera2.adapter.CoroutineAdaptersKt.propagateTo(r1, r0)
                j59 r0 = defpackage.j59.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseThreads.C04041.invokeSuspend$$forInline(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseThreads$confineLaunch$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseThreads$confineLaunch$1", f = "UseCaseThreads.kt", l = {194}, m = "invokeSuspend", v = 1)
    public static final class C04051 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ nl3<e02<? super j59>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04051(nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super C04051> e02Var) {
            super(2, e02Var);
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C04051(this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04051) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                nl3<e02<? super j59>, Object> nl3Var = this.$block;
                this.label = 1;
                if (nl3Var.invoke(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            this.$block.invoke(this);
            return j59.a;
        }
    }

    public UseCaseThreads(y22 y22Var, Executor executor, r22 r22Var) {
        y22Var.getClass();
        executor.getClass();
        r22Var.getClass();
        this.scope = y22Var;
        this.backgroundExecutor = executor;
        this.backgroundDispatcher = r22Var;
        this.mainHandler = new Handler(Looper.getMainLooper());
        Executor executorNewSequentialExecutor = CameraXExecutors.newSequentialExecutor(executor);
        executorNewSequentialExecutor.getClass();
        this.sequentialExecutorDelegate = executorNewSequentialExecutor;
        this.isSequentialThread = new ThreadLocal<>();
        zi2 zi2Var = new zi2(this, 1);
        this.sequentialExecutor = zi2Var;
        r22 r22VarX = aq5.x(zi2Var);
        this.sequentialDispatcher = r22VarX;
        this.sequentialScope = z22.a(y22Var.getCoroutineContext().plus(rm9.b()).plus(r22VarX));
    }

    public static List confineDeferredListSuspend$default(UseCaseThreads useCaseThreads, int i, c32 c32Var, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c32Var = c32.DEFAULT;
        }
        c32Var.getClass();
        nl3Var.getClass();
        ArrayList arrayList = new ArrayList(i);
        for (int i3 = 0; i3 < i; i3++) {
            arrayList.add(new yp1());
        }
        av0.c(useCaseThreads.getSequentialScope(), null, c32Var, new C04031(nl3Var, arrayList, null), 1);
        return arrayList;
    }

    public static mk2 confineDeferredSuspend$default(UseCaseThreads useCaseThreads, nl3 nl3Var, c32 c32Var, int i, Object obj) {
        if ((i & 2) != 0) {
            c32Var = c32.DEFAULT;
        }
        nl3Var.getClass();
        c32Var.getClass();
        yp1 yp1Var = new yp1();
        av0.c(useCaseThreads.getSequentialScope(), null, c32Var, new C04041(nl3Var, yp1Var, null), 1);
        return yp1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sequentialExecutor$lambda$0(UseCaseThreads useCaseThreads, Runnable runnable) {
        useCaseThreads.sequentialExecutorDelegate.execute(new p01(5, useCaseThreads, runnable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sequentialExecutor$lambda$0$0(UseCaseThreads useCaseThreads, Runnable runnable) {
        useCaseThreads.isSequentialThread.set(Boolean.TRUE);
        try {
            runnable.run();
        } finally {
            useCaseThreads.isSequentialThread.remove();
        }
    }

    public final void checkOnSequentialThread() {
        if (isOnSequentialThread()) {
            return;
        }
        vh.e(Thread.currentThread().getName(), "Thread check failed: This method must be called from the UseCaseThreads sequential scope. Current thread: ");
    }

    public final <T> mk2<T> confineDeferred(ll3<? extends mk2<? extends T>> ll3Var) {
        ll3Var.getClass();
        yp1 yp1Var = new yp1();
        av0.c(getSequentialScope(), null, null, new AnonymousClass1(ll3Var, yp1Var, null), 3);
        return yp1Var;
    }

    public final <T> List<mk2<T>> confineDeferredList(int i, ll3<? extends List<? extends mk2<? extends T>>> ll3Var) {
        ll3Var.getClass();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(new yp1());
        }
        av0.c(getSequentialScope(), null, null, new C04021(ll3Var, arrayList, null), 3);
        return arrayList;
    }

    public final <T> List<mk2<T>> confineDeferredListSuspend(int i, c32 c32Var, nl3<? super e02<? super List<? extends mk2<? extends T>>>, ? extends Object> nl3Var) {
        c32Var.getClass();
        nl3Var.getClass();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(new yp1());
        }
        av0.c(getSequentialScope(), null, c32Var, new C04031(nl3Var, arrayList, null), 1);
        return arrayList;
    }

    public final <T> mk2<T> confineDeferredSuspend(nl3<? super e02<? super mk2<? extends T>>, ? extends Object> nl3Var, c32 c32Var) {
        nl3Var.getClass();
        c32Var.getClass();
        yp1 yp1Var = new yp1();
        av0.c(getSequentialScope(), null, c32Var, new C04041(nl3Var, yp1Var, null), 1);
        return yp1Var;
    }

    public final mb4 confineLaunch(nl3<? super e02<? super j59>, ? extends Object> nl3Var) {
        nl3Var.getClass();
        return av0.c(getSequentialScope(), null, null, new C04051(nl3Var, null), 3);
    }

    public final r22 getBackgroundDispatcher() {
        return this.backgroundDispatcher;
    }

    public final Executor getBackgroundExecutor() {
        return this.backgroundExecutor;
    }

    public final Handler getMainHandler() {
        return this.mainHandler;
    }

    public final y22 getScope() {
        return this.scope;
    }

    public final Executor getSequentialExecutor() {
        return this.sequentialExecutor;
    }

    public final y22 getSequentialScope() {
        return this.sequentialScope;
    }

    public final boolean isOnSequentialThread() {
        return aa4.e(this.isSequentialThread.get(), Boolean.TRUE);
    }

    public final void setSequentialScope(y22 y22Var) {
        y22Var.getClass();
        this.sequentialScope = y22Var;
    }
}
