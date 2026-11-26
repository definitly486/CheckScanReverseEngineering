package androidx.camera.camera2.adapter;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.i22;
import defpackage.j22;
import defpackage.j59;
import defpackage.k22;
import defpackage.l22;
import defpackage.mb4;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qg;
import defpackage.r57;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yv8;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class CoroutineAdaptersKt {

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CoroutineAdaptersKt$awaitUntil$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.adapter.CoroutineAdaptersKt", f = "CoroutineAdapters.kt", l = {199}, m = "awaitUntil", v = 1)
    public static final class AnonymousClass1<T> extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CoroutineAdaptersKt.awaitUntil(null, 0L, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CoroutineAdaptersKt$awaitUntil$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.adapter.CoroutineAdaptersKt$awaitUntil$2", f = "CoroutineAdapters.kt", l = {199}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ mk2<T> $this_awaitUntil;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(mk2<? extends T> mk2Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_awaitUntil = mk2Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$this_awaitUntil, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
            mk2<T> mk2Var = this.$this_awaitUntil;
            this.label = 1;
            Object objZ = mk2Var.Z(this);
            return objZ == a32Var ? a32Var : objZ;
        }
    }

    public static final ListenableFuture<Void> asListenableFuture(mb4 mb4Var, Object obj) {
        mb4Var.getClass();
        ListenableFuture<Void> future = CallbackToFutureAdapter.getFuture(new i22(mb4Var, obj));
        future.getClass();
        return future;
    }

    public static /* synthetic */ ListenableFuture asListenableFuture$default(mb4 mb4Var, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = "Job.asListenableFuture";
        }
        return asListenableFuture(mb4Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object asListenableFuture$lambda$0(mb4 mb4Var, Object obj, CallbackToFutureAdapter.Completer completer) {
        completer.getClass();
        mb4Var.g(new j22(completer, 0));
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 asListenableFuture$lambda$0$0(CallbackToFutureAdapter.Completer completer, Throwable th) {
        if (th == null) {
            completer.set(null);
        } else if (th instanceof CancellationException) {
            completer.setCancelled();
        } else {
            completer.setException(th);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object asListenableFuture$lambda$1(mk2 mk2Var, Object obj, CallbackToFutureAdapter.Completer completer) {
        completer.getClass();
        mk2Var.g(new l22(0, completer, mk2Var));
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 asListenableFuture$lambda$1$0(CallbackToFutureAdapter.Completer completer, mk2 mk2Var, Throwable th) {
        if (th == null) {
            completer.set(mk2Var.m());
        } else if (th instanceof CancellationException) {
            completer.setCancelled();
        } else {
            completer.setException(th);
        }
        return j59.a;
    }

    public static final <T> ListenableFuture<Void> asVoidListenableFuture(mk2<? extends T> mk2Var) {
        mk2Var.getClass();
        FutureChain<T> futureChainTransform = FutureChain.from(asListenableFuture$default((mk2) mk2Var, (Object) null, 1, (Object) null)).transform(new qg(2), CameraXExecutors.directExecutor());
        futureChainTransform.getClass();
        return futureChainTransform;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void asVoidListenableFuture$lambda$0(Object obj) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object awaitUntil(mk2<? extends T> mk2Var, long j, e02<? super Boolean> e02Var) {
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
        Object objC = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objC);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(mk2Var, null);
            anonymousClass1.label = 1;
            objC = yv8.c(j, anonymousClass2, anonymousClass1);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        return Boolean.valueOf(objC != null);
    }

    public static final <T> void completeFailing(xp1<T> xp1Var, Throwable th) {
        xp1Var.getClass();
        th.getClass();
        if (th instanceof CancellationException) {
            xp1Var.cancel((CancellationException) th);
        } else {
            xp1Var.e(th);
        }
    }

    public static final <T> ListenableFuture<T> future(final y22 y22Var, final nl3<? super e02<? super T>, ? extends Object> nl3Var) {
        y22Var.getClass();
        nl3Var.getClass();
        ListenableFuture<T> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.adapter.CoroutineAdaptersKt$future$resolver$1

            /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CoroutineAdaptersKt$future$resolver$1$1, reason: invalid class name */
            @bd2(c = "androidx.camera.camera2.adapter.CoroutineAdaptersKt$future$resolver$1$1", f = "CoroutineAdapters.kt", l = {103}, m = "invokeSuspend", v = 1)
            public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ nl3<e02<? super T>, Object> $block;
                final /* synthetic */ CallbackToFutureAdapter.Completer<T> $completer;
                Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public AnonymousClass1(CallbackToFutureAdapter.Completer<T> completer, nl3<? super e02<? super T>, ? extends Object> nl3Var, e02<? super AnonymousClass1> e02Var) {
                    super(2, e02Var);
                    this.$completer = completer;
                    this.$block = nl3Var;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new AnonymousClass1(this.$completer, this.$block, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    CallbackToFutureAdapter.Completer completer;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i == 0) {
                        r57.b(obj);
                        CallbackToFutureAdapter.Completer<T> completer2 = this.$completer;
                        nl3<e02<? super T>, Object> nl3Var = this.$block;
                        this.L$0 = completer2;
                        this.label = 1;
                        Object objInvoke = nl3Var.invoke(this);
                        if (objInvoke == a32Var) {
                            return a32Var;
                        }
                        obj = objInvoke;
                        completer = completer2;
                    } else {
                        if (i != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        CallbackToFutureAdapter.Completer completer3 = (CallbackToFutureAdapter.Completer) this.L$0;
                        r57.b(obj);
                        completer = completer3;
                    }
                    completer.set(obj);
                    return j59.a;
                }

                public final Object invokeSuspend$$forInline(Object obj) {
                    this.$completer.set((T) this.$block.invoke(this));
                    return j59.a;
                }
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer<T> completer) {
                completer.getClass();
                return av0.c(y22Var, null, null, new AnonymousClass1(completer, nl3Var, null), 3);
            }
        });
        future.getClass();
        return future;
    }

    public static final <T, R> void propagateCompletion(mk2<? extends T> mk2Var, xp1<R> xp1Var, Throwable th, nl3<? super T, ? extends R> nl3Var) {
        mk2Var.getClass();
        xp1Var.getClass();
        nl3Var.getClass();
        if (th != null) {
            completeFailing(xp1Var, th);
        } else {
            xp1Var.f(nl3Var.invoke(mk2Var.m()));
        }
    }

    public static final <T, R> void propagateTo(final mk2<? extends T> mk2Var, final xp1<R> xp1Var, final nl3<? super T, ? extends R> nl3Var) {
        mk2Var.getClass();
        xp1Var.getClass();
        nl3Var.getClass();
        mk2Var.g(new nl3() { // from class: n22
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return CoroutineAdaptersKt.propagateTo$lambda$1(mk2Var, xp1Var, nl3Var, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 propagateTo$lambda$0(mk2 mk2Var, xp1 xp1Var, Throwable th) {
        propagateCompletion(mk2Var, xp1Var, th);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 propagateTo$lambda$1(mk2 mk2Var, xp1 xp1Var, nl3 nl3Var, Throwable th) {
        propagateCompletion(mk2Var, xp1Var, th, nl3Var);
        return j59.a;
    }

    public static /* synthetic */ ListenableFuture asListenableFuture$default(mk2 mk2Var, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(mk2Var, obj);
    }

    public static final <T> ListenableFuture<T> asListenableFuture(final mk2<? extends T> mk2Var, final Object obj) {
        mk2Var.getClass();
        ListenableFuture<T> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: m22
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return CoroutineAdaptersKt.asListenableFuture$lambda$1(mk2Var, obj, completer);
            }
        });
        future.getClass();
        return future;
    }

    public static final <T> void propagateTo(mk2<? extends T> mk2Var, xp1<T> xp1Var) {
        mk2Var.getClass();
        xp1Var.getClass();
        mk2Var.g(new k22(0, mk2Var, xp1Var));
    }

    public static final <T> void propagateCompletion(mk2<? extends T> mk2Var, xp1<T> xp1Var, Throwable th) {
        mk2Var.getClass();
        xp1Var.getClass();
        if (th != null) {
            completeFailing(xp1Var, th);
        } else {
            xp1Var.f(mk2Var.m());
        }
    }
}
