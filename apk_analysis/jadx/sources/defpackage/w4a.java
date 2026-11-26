package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class w4a {
    public static final Handler h;
    public static final ExecutorService a = Executors.newFixedThreadPool(6);
    public static final ExecutorService b = Executors.newSingleThreadExecutor();
    public static final ExecutorService c = Executors.newFixedThreadPool(6);
    public static final ExecutorService d = Executors.newSingleThreadExecutor();
    public static final ThreadPoolExecutor e = new ThreadPoolExecutor(1, 5, 20, TimeUnit.SECONDS, new SynchronousQueue());
    public static final ArrayList f = new ArrayList();
    public static final Handler g = new Handler(Looper.getMainLooper());
    public static final a i = new a();
    public static final AtomicBoolean j = new AtomicBoolean();

    public class a implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            w4a.g.post(runnable);
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread("MonitoringHandlerThread");
        handlerThread.start();
        h = new Handler(handlerThread.getLooper());
    }

    public static void a(Runnable runnable) {
        AtomicBoolean atomicBoolean = j;
        if (!atomicBoolean.get()) {
            ArrayList arrayList = f;
            synchronized (arrayList) {
                try {
                    if (!atomicBoolean.get()) {
                        arrayList.add(runnable);
                        y14.r("AsyncCommand", "Can't use onAdLoadExecutor - sdk initialize not finished");
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        c.execute(runnable);
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void c(Runnable runnable) {
        i.execute(runnable);
    }
}
