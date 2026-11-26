package androidx.camera.camera2.pipe.core;

import com.yalantis.ucrop.UCrop;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yg5;
import defpackage.z22;
import defpackage.zya;

/* JADX INFO: loaded from: classes.dex */
public final class MutexesKt {

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.MutexesKt$acquireToken$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.core.MutexesKt", f = "Mutexes.kt", l = {98}, m = "acquireToken", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MutexesKt.acquireToken(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.MutexesKt$acquireTokenAndSuspend$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.core.MutexesKt", f = "Mutexes.kt", l = {107}, m = "acquireTokenAndSuspend", v = 1)
    public static final class C04151 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C04151(e02<? super C04151> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MutexesKt.acquireTokenAndSuspend(null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.MutexesKt$withLockAsync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.core.MutexesKt$withLockAsync$1", f = "Mutexes.kt", l = {177, UCrop.REQUEST_CROP}, m = "invokeSuspend", v = 1)
    public static final class C04161<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ bm3<y22, e02<? super T>, Object> $block;
        final /* synthetic */ CoroutineMutex $this_withLockAsync;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04161(CoroutineMutex coroutineMutex, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super C04161> e02Var) {
            super(2, e02Var);
            this.$this_withLockAsync = coroutineMutex;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04161 c04161 = new C04161(this.$this_withLockAsync, this.$block, e02Var);
            c04161.L$0 = obj;
            return c04161;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((C04161) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            yg5 mutex$camera_camera2_pipe;
            bm3<y22, e02<? super T>, Object> bm3Var;
            Throwable th;
            yg5 yg5Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    z22.d((y22) this.L$0);
                    mutex$camera_camera2_pipe = this.$this_withLockAsync.getMutex$camera_camera2_pipe();
                    bm3Var = this.$block;
                    this.L$0 = mutex$camera_camera2_pipe;
                    this.L$1 = bm3Var;
                    this.label = 1;
                    if (MutexesKt.lockAndSuspend(mutex$camera_camera2_pipe, this) != a32Var) {
                    }
                    return a32Var;
                }
                if (i != 1) {
                    if (i != 2) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    yg5Var = (yg5) this.L$0;
                    try {
                        r57.b(obj);
                        yg5Var.unlock(null);
                        return obj;
                    } catch (Throwable th2) {
                        th = th2;
                        yg5Var.unlock(null);
                        throw th;
                    }
                }
                bm3Var = (bm3) this.L$1;
                yg5 yg5Var2 = (yg5) this.L$0;
                r57.b(obj);
                mutex$camera_camera2_pipe = yg5Var2;
                this.L$0 = mutex$camera_camera2_pipe;
                this.L$1 = null;
                this.label = 2;
                Object objC = z22.c(bm3Var, this);
                if (objC != a32Var) {
                    yg5 yg5Var3 = mutex$camera_camera2_pipe;
                    obj = objC;
                    yg5Var = yg5Var3;
                    yg5Var.unlock(null);
                    return obj;
                }
                return a32Var;
            } catch (Throwable th3) {
                yg5 yg5Var4 = mutex$camera_camera2_pipe;
                th = th3;
                yg5Var = yg5Var4;
                yg5Var.unlock(null);
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.MutexesKt$withLockLaunch$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.core.MutexesKt$withLockLaunch$1", f = "Mutexes.kt", l = {177, 90}, m = "invokeSuspend", v = 1)
    public static final class C04171 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ bm3<y22, e02<? super j59>, Object> $block;
        final /* synthetic */ CoroutineMutex $this_withLockLaunch;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C04171(CoroutineMutex coroutineMutex, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super C04171> e02Var) {
            super(2, e02Var);
            this.$this_withLockLaunch = coroutineMutex;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04171 c04171 = new C04171(this.$this_withLockLaunch, this.$block, e02Var);
            c04171.L$0 = obj;
            return c04171;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04171) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            yg5 mutex$camera_camera2_pipe;
            bm3<y22, e02<? super j59>, Object> bm3Var;
            Throwable th;
            yg5 yg5Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    z22.d((y22) this.L$0);
                    mutex$camera_camera2_pipe = this.$this_withLockLaunch.getMutex$camera_camera2_pipe();
                    bm3Var = this.$block;
                    this.L$0 = mutex$camera_camera2_pipe;
                    this.L$1 = bm3Var;
                    this.label = 1;
                    if (MutexesKt.lockAndSuspend(mutex$camera_camera2_pipe, this) != a32Var) {
                    }
                    return a32Var;
                }
                if (i != 1) {
                    if (i != 2) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    yg5Var = (yg5) this.L$0;
                    try {
                        r57.b(obj);
                        j59 j59Var = j59.a;
                        yg5Var.unlock(null);
                        return j59.a;
                    } catch (Throwable th2) {
                        th = th2;
                        yg5Var.unlock(null);
                        throw th;
                    }
                }
                bm3Var = (bm3) this.L$1;
                yg5 yg5Var2 = (yg5) this.L$0;
                r57.b(obj);
                mutex$camera_camera2_pipe = yg5Var2;
                this.L$0 = mutex$camera_camera2_pipe;
                this.L$1 = null;
                this.label = 2;
                if (z22.c(bm3Var, this) != a32Var) {
                    yg5Var = mutex$camera_camera2_pipe;
                    j59 j59Var2 = j59.a;
                    yg5Var.unlock(null);
                    return j59.a;
                }
                return a32Var;
            } catch (Throwable th3) {
                yg5 yg5Var3 = mutex$camera_camera2_pipe;
                th = th3;
                yg5Var = yg5Var3;
                yg5Var.unlock(null);
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object acquireToken(yg5 yg5Var, e02<? super Token> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            anonymousClass1.L$0 = yg5Var;
            anonymousClass1.label = 1;
            if (yg5Var.lock(null, anonymousClass1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5Var = (yg5) anonymousClass1.L$0;
            r57.b(obj);
        }
        return new MutexToken(yg5Var);
    }

    private static final Object acquireToken$$forInline(yg5 yg5Var, e02<? super Token> e02Var) {
        yg5Var.lock(null, e02Var);
        return new MutexToken(yg5Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object acquireTokenAndSuspend(yg5 yg5Var, e02<? super Token> e02Var) {
        C04151 c04151;
        if (e02Var instanceof C04151) {
            c04151 = (C04151) e02Var;
            int i = c04151.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04151.label = i - Integer.MIN_VALUE;
            } else {
                c04151 = new C04151(e02Var);
            }
        } else {
            c04151 = new C04151(e02Var);
        }
        Object obj = c04151.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04151.label;
        if (i2 == 0) {
            r57.b(obj);
            c04151.L$0 = yg5Var;
            c04151.label = 1;
            if (lockAndSuspend(yg5Var, c04151) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5Var = (yg5) c04151.L$0;
            r57.b(obj);
        }
        return new MutexToken(yg5Var);
    }

    private static final Object acquireTokenAndSuspend$$forInline(yg5 yg5Var, e02<? super Token> e02Var) {
        lockAndSuspend(yg5Var, e02Var);
        return new MutexToken(yg5Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object lockAndSuspend(yg5 yg5Var, e02<? super j59> e02Var) {
        Object objC = zya.c(MutexesKt$lockAndSuspend$lockFn$1.INSTANCE, yg5Var, e02Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (objC != a32Var) {
            zya.b(e02Var).resumeWith(j59.a);
        }
        e02Var.getClass();
        return a32Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object lockWithoutOwner(yg5 yg5Var, e02<? super j59> e02Var) {
        Object objLock = yg5Var.lock(null, e02Var);
        return objLock == a32.COROUTINE_SUSPENDED ? objLock : j59.a;
    }

    public static final Token tryAcquireToken(yg5 yg5Var) {
        yg5Var.getClass();
        if (yg5Var.tryLock(null)) {
            return new MutexToken(yg5Var);
        }
        return null;
    }

    public static final <T> mk2<T> withLockAsync(CoroutineMutex coroutineMutex, y22 y22Var, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var) {
        coroutineMutex.getClass();
        y22Var.getClass();
        bm3Var.getClass();
        return av0.a(y22Var, null, c32.UNDISPATCHED, new C04161(coroutineMutex, bm3Var, null), 1);
    }

    public static final mb4 withLockLaunch(CoroutineMutex coroutineMutex, y22 y22Var, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var) {
        coroutineMutex.getClass();
        y22Var.getClass();
        bm3Var.getClass();
        return av0.c(y22Var, null, c32.UNDISPATCHED, new C04171(coroutineMutex, bm3Var, null), 1);
    }

    private static final <T> Object withLockSuspend(yg5 yg5Var, ll3<? extends T> ll3Var, e02<? super T> e02Var) {
        lockAndSuspend(yg5Var, e02Var);
        try {
            return ll3Var.invoke();
        } finally {
            yg5Var.unlock(null);
        }
    }
}
