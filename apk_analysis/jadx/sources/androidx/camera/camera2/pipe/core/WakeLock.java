package androidx.camera.camera2.pipe.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.ht;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes.dex */
public final class WakeLock {
    private final ll3<j59> callback;
    private boolean closed;
    private int count;
    private final Object lock;
    private final y22 scope;
    private final boolean startTimeoutOnCreation;
    private final long timeout;
    private mb4 timeoutJob;

    public final class WakeLockToken implements Token {
        private final ht _released = kt.a(false);

        public WakeLockToken() {
        }

        @Override // androidx.camera.camera2.pipe.core.Token
        public boolean getReleased() {
            return this._released.b();
        }

        @Override // androidx.camera.camera2.pipe.core.Token
        public boolean release() {
            if (!this._released.a()) {
                return false;
            }
            WakeLock.this.releaseToken$camera_camera2_pipe();
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.WakeLock$release$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.core.WakeLock$release$2", f = "WakeLock.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return WakeLock.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            WakeLock.this.callback.invoke();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.WakeLock$startTimeout$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.core.WakeLock$startTimeout$1", f = "WakeLock.kt", l = {116}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return WakeLock.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long j = WakeLock.this.timeout;
                this.label = 1;
                if (yk2.b(j, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            Object obj2 = WakeLock.this.lock;
            WakeLock wakeLock = WakeLock.this;
            synchronized (obj2) {
                if (!wakeLock.closed && wakeLock.count == 0) {
                    wakeLock.timeoutJob = null;
                    wakeLock.closed = true;
                    j59 j59Var = j59.a;
                    WakeLock.this.callback.invoke();
                    return j59.a;
                }
                return j59.a;
            }
        }
    }

    public WakeLock(y22 y22Var, long j, boolean z, ll3<j59> ll3Var) {
        y22Var.getClass();
        ll3Var.getClass();
        this.scope = y22Var;
        this.timeout = j;
        this.startTimeoutOnCreation = z;
        this.callback = ll3Var;
        Object obj = new Object();
        this.lock = obj;
        if (z) {
            synchronized (obj) {
                startTimeout();
                j59 j59Var = j59.a;
            }
        }
    }

    private final void startTimeout() {
        this.timeoutJob = av0.c(this.scope, null, null, new AnonymousClass1(null), 3);
    }

    public final Token acquire() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return null;
                }
                int i = this.count + 1;
                this.count = i;
                if (i == 1) {
                    mb4 mb4Var = this.timeoutJob;
                    if (mb4Var != null) {
                        mb4Var.cancel(null);
                    }
                    this.timeoutJob = null;
                }
                j59 j59Var = j59.a;
                return new WakeLockToken();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean release() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return false;
                }
                this.closed = true;
                mb4 mb4Var = this.timeoutJob;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                this.timeoutJob = null;
                j59 j59Var = j59.a;
                av0.c(this.scope, null, null, new AnonymousClass2(null), 3);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void releaseToken$camera_camera2_pipe() {
        synchronized (this.lock) {
            try {
                int i = this.count - 1;
                this.count = i;
                if (i == 0 && !this.closed) {
                    startTimeout();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ WakeLock(y22 y22Var, long j, boolean z, ll3 ll3Var, int i, jh2 jh2Var) {
        this(y22Var, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? false : z, ll3Var);
    }
}
