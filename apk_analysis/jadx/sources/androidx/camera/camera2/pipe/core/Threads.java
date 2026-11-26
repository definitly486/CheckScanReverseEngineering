package androidx.camera.camera2.pipe.core;

import android.os.Handler;
import defpackage.a32;
import defpackage.ah;
import defpackage.ap1;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bv0;
import defpackage.cl4;
import defpackage.e02;
import defpackage.fh8;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r22;
import defpackage.r57;
import defpackage.ro4;
import defpackage.y22;
import defpackage.yv8;
import java.util.concurrent.Executor;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class Threads {
    private final cl4<Executor> _camera2Executor;
    private final cl4<Handler> _camera2Handler;
    private final r22 backgroundDispatcher;
    private final Executor backgroundExecutor;
    private final r22 blockingDispatcher;
    private final Executor blockingExecutor;
    private final y22 cameraPipeDispatchScope;
    private final y22 cameraPipeScope;
    private final r22 lightweightDispatcher;
    private final Executor lightweightExecutor;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runAsyncSupervised$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.core.Threads$runAsyncSupervised$1", f = "Threads.kt", l = {97}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ nl3<e02<? super T>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super e02<? super T>, ? extends Object> nl3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            nl3<e02<? super T>, Object> nl3Var = this.$block;
            this.label = 1;
            Object objInvoke = nl3Var.invoke(this);
            return objInvoke == a32Var ? a32Var : objInvoke;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runBlockingChecked$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.core.Threads$runBlockingChecked$1", f = "Threads.kt", l = {65}, m = "invokeSuspend", v = 1)
    public static final class C04181<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ nl3<e02<? super T>, Object> $block;
        final /* synthetic */ long $timeoutMs;
        int label;

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runBlockingChecked$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.camera.camera2.pipe.core.Threads$runBlockingChecked$1$1", f = "Threads.kt", l = {65}, m = "invokeSuspend", v = 1)
        public static final class C00101 extends pg8 implements bm3<y22, e02<? super T>, Object> {
            final /* synthetic */ mk2<T> $result;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00101(mk2<? extends T> mk2Var, e02<? super C00101> e02Var) {
                super(2, e02Var);
                this.$result = mk2Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00101(this.$result, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
                return ((C00101) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        r57.b(obj);
                        return obj;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                mk2<T> mk2Var = this.$result;
                this.label = 1;
                Object objZ = mk2Var.Z(this);
                return objZ == a32Var ? a32Var : objZ;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04181(nl3<? super e02<? super T>, ? extends Object> nl3Var, long j, e02<? super C04181> e02Var) {
            super(2, e02Var);
            this.$block = nl3Var;
            this.$timeoutMs = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Threads.this.new C04181(this.$block, this.$timeoutMs, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((C04181) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i != 0) {
                    if (i == 1) {
                        r57.b(obj);
                        return obj;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                Threads threads = Threads.this;
                mk2 mk2VarRunAsyncSupervised = threads.runAsyncSupervised(threads.getBackgroundDispatcher(), this.$block);
                long j = this.$timeoutMs;
                C00101 c00101 = new C00101(mk2VarRunAsyncSupervised, null);
                this.label = 1;
                Object objB = yv8.b(j, c00101, this);
                return objB == a32Var ? a32Var : objB;
            } catch (TimeoutCancellationException unused) {
                Log log = Log.INSTANCE;
                long j2 = this.$timeoutMs;
                nl3<e02<? super T>, Object> nl3Var = this.$block;
                if (log.getERROR_LOGGABLE()) {
                    android.util.Log.e(Log.TAG, "Timed out after " + j2 + "ms running " + nl3Var + '!');
                }
                throw new IllegalStateException("Timed out after " + this.$timeoutMs + "ms running " + this.$block + '!');
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1", f = "Threads.kt", l = {85}, m = "invokeSuspend", v = 1)
    public static final class C04191<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ nl3<e02<? super T>, Object> $block;
        final /* synthetic */ long $timeoutMs;
        int label;

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1$1", f = "Threads.kt", l = {85}, m = "invokeSuspend", v = 1)
        public static final class C00111 extends pg8 implements bm3<y22, e02<? super T>, Object> {
            final /* synthetic */ mk2<T> $result;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00111(mk2<? extends T> mk2Var, e02<? super C00111> e02Var) {
                super(2, e02Var);
                this.$result = mk2Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00111(this.$result, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
                return ((C00111) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        r57.b(obj);
                        return obj;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                mk2<T> mk2Var = this.$result;
                this.label = 1;
                Object objZ = mk2Var.Z(this);
                return objZ == a32Var ? a32Var : objZ;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04191(nl3<? super e02<? super T>, ? extends Object> nl3Var, long j, e02<? super C04191> e02Var) {
            super(2, e02Var);
            this.$block = nl3Var;
            this.$timeoutMs = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Threads.this.new C04191(this.$block, this.$timeoutMs, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((C04191) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Threads threads = Threads.this;
            mk2 mk2VarRunAsyncSupervised = threads.runAsyncSupervised(threads.getBackgroundDispatcher(), this.$block);
            long j = this.$timeoutMs;
            C00111 c00111 = new C00111(mk2VarRunAsyncSupervised, null);
            this.label = 1;
            Object objC = yv8.c(j, c00111, this);
            return objC == a32Var ? a32Var : objC;
        }
    }

    public Threads(y22 y22Var, y22 y22Var2, Executor executor, r22 r22Var, Executor executor2, r22 r22Var2, Executor executor3, r22 r22Var3, ll3<? extends Handler> ll3Var, ll3<? extends Executor> ll3Var2) {
        y22Var.getClass();
        y22Var2.getClass();
        executor.getClass();
        r22Var.getClass();
        executor2.getClass();
        r22Var2.getClass();
        executor3.getClass();
        r22Var3.getClass();
        ll3Var.getClass();
        ll3Var2.getClass();
        this.cameraPipeScope = y22Var;
        this.cameraPipeDispatchScope = y22Var2;
        this.blockingExecutor = executor;
        this.blockingDispatcher = r22Var;
        this.backgroundExecutor = executor2;
        this.backgroundDispatcher = r22Var2;
        this.lightweightExecutor = executor3;
        this.lightweightDispatcher = r22Var3;
        this._camera2Handler = new fh8(new ro4(ll3Var, 2));
        this._camera2Executor = new fh8(new ap1(ll3Var2, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor _camera2Executor$lambda$0(ll3 ll3Var) {
        return (Executor) ll3Var.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler _camera2Handler$lambda$0(ll3 ll3Var) {
        return (Handler) ll3Var.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> mk2<T> runAsyncSupervised(r22 r22Var, nl3<? super e02<? super T>, ? extends Object> nl3Var) {
        return av0.a(this.cameraPipeDispatchScope, r22Var, null, new AnonymousClass1(nl3Var, null), 2);
    }

    public final r22 getBackgroundDispatcher() {
        return this.backgroundDispatcher;
    }

    public final Executor getBackgroundExecutor() {
        return this.backgroundExecutor;
    }

    public final r22 getBlockingDispatcher() {
        return this.blockingDispatcher;
    }

    public final Executor getBlockingExecutor() {
        return this.blockingExecutor;
    }

    public final Executor getCamera2Executor() {
        return this._camera2Executor.getValue();
    }

    public final Handler getCamera2Handler() {
        return this._camera2Handler.getValue();
    }

    public final y22 getCameraPipeScope() {
        return this.cameraPipeScope;
    }

    public final r22 getLightweightDispatcher() {
        return this.lightweightDispatcher;
    }

    public final Executor getLightweightExecutor() {
        return this.lightweightExecutor;
    }

    public final <T> T runBlockingChecked(long j, nl3<? super e02<? super T>, ? extends Object> nl3Var) {
        nl3Var.getClass();
        return (T) bv0.a(this.blockingDispatcher, new C04181(nl3Var, j, null));
    }

    public final <T> T runBlockingCheckedOrNull(long j, nl3<? super e02<? super T>, ? extends Object> nl3Var) {
        nl3Var.getClass();
        try {
            return (T) bv0.a(this.blockingDispatcher, new C04191(nl3Var, j, null));
        } catch (InterruptedException e) {
            if (!Log.INSTANCE.getINFO_LOGGABLE()) {
                return null;
            }
            android.util.Log.i(Log.TAG, "runBlockingCheckedOrNull cancelled by thread interruption", e);
            return null;
        }
    }
}
