package androidx.camera.camera2.pipe.core;

import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.qm3;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class MutexesKt$lockAndSuspend$lockFn$1 extends qm3 implements bm3<yg5, e02<? super j59>, Object> {
    public static final MutexesKt$lockAndSuspend$lockFn$1 INSTANCE = new MutexesKt$lockAndSuspend$lockFn$1();

    public MutexesKt$lockAndSuspend$lockFn$1() {
        super(2, MutexesKt.class, "lockWithoutOwner", "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
    }

    @Override // defpackage.bm3
    public final Object invoke(yg5 yg5Var, e02<? super j59> e02Var) {
        return MutexesKt.lockWithoutOwner(yg5Var, e02Var);
    }
}
