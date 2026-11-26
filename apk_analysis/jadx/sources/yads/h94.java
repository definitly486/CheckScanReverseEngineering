package yads;

import android.os.Handler;
import android.os.Looper;
import defpackage.uw9;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public final class h94 {
    public final Executor a;
    public final ExecutorService b;

    public h94() {
        uw9 uw9Var = new uw9();
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(2);
        this.a = uw9Var;
        this.b = executorServiceNewFixedThreadPool;
    }

    public static final void a(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }
}
