package androidx.camera.viewfinder.core.impl;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.PixelCopy;
import android.view.Surface;
import androidx.core.os.HandlerCompat;
import androidx.core.util.Consumer;
import androidx.tracing.Trace;
import defpackage.b36;
import defpackage.bm3;
import defpackage.cl4;
import defpackage.e01;
import defpackage.fh8;
import defpackage.j59;
import defpackage.jy8;
import defpackage.kt;
import defpackage.ll3;
import defpackage.lt;
import defpackage.nl3;
import defpackage.o86;
import defpackage.xg;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.Executor;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public interface PixelCopyCompat {
    public static final Companion Companion = Companion.$$INSTANCE;

    @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface CopyResultStatus {
    }

    public static final class PixelCopyApi24Impl implements PixelCopyCompat {
        public static final long KEEP_ALIVE_MILLIS = 500;
        private static RefCounted<Handler> _backgroundHandler;
        public static final PixelCopyApi24Impl INSTANCE = new PixelCopyApi24Impl();
        private static final Object lock = new Object();

        private PixelCopyApi24Impl() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 requestImpl$lambda$9(Surface surface, final Bitmap bitmap, final Executor executor, final Consumer consumer, Handler handler, final ll3 ll3Var) {
            handler.getClass();
            ll3Var.getClass();
            PixelCopy.request(surface, bitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: androidx.camera.viewfinder.core.impl.b
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public final void onPixelCopyFinished(int i) throws Throwable {
                    PixelCopyCompat.PixelCopyApi24Impl.requestImpl$lambda$9$lambda$8(bitmap, executor, ll3Var, consumer, i);
                }
            }, handler);
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void requestImpl$lambda$9$lambda$8(Bitmap bitmap, Executor executor, ll3 ll3Var, final Consumer consumer, final int i) throws Throwable {
            Trace.endAsyncSection("PixelCopyApi24Impl.request", bitmap.hashCode());
            try {
                executor.execute(new Runnable() { // from class: androidx.camera.viewfinder.core.impl.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        PixelCopyCompat.PixelCopyApi24Impl.requestImpl$lambda$9$lambda$8$lambda$7(consumer, i);
                    }
                });
            } finally {
                ll3Var.invoke();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void requestImpl$lambda$9$lambda$8$lambda$7(Consumer consumer, int i) {
            consumer.accept(Integer.valueOf(i));
        }

        /* JADX WARN: Multi-variable type inference failed */
        private final void withHandlerScope(bm3<? super Handler, ? super ll3<j59>, j59> bm3Var) {
            b36 b36Var;
            Handler handlerAcquire;
            synchronized (lock) {
                try {
                    RefCounted<Handler> refCounted = _backgroundHandler;
                    if (refCounted == null || (handlerAcquire = refCounted.acquire()) == null) {
                        final HandlerThread handlerThread = new HandlerThread("pixelCopyRequest Thread");
                        handlerThread.start();
                        Handler handlerCreateAsync = HandlerCompat.createAsync(handlerThread.getLooper());
                        handlerCreateAsync.getClass();
                        RefCounted<Handler> refCounted2 = new RefCounted<>(false, new nl3() { // from class: androidx.camera.viewfinder.core.impl.c
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return PixelCopyCompat.PixelCopyApi24Impl.withHandlerScope$lambda$5$lambda$4$lambda$2(handlerThread, (Handler) obj);
                            }
                        });
                        refCounted2.initialize(handlerCreateAsync);
                        _backgroundHandler = refCounted2;
                        b36Var = new b36(handlerCreateAsync, refCounted2);
                    } else {
                        b36Var = new b36(handlerAcquire, refCounted);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            Handler handler = (Handler) b36Var.b;
            final RefCounted refCounted3 = (RefCounted) b36Var.c;
            refCounted3.acquire();
            if (handler.postDelayed(new Runnable() { // from class: androidx.camera.viewfinder.core.impl.d
                @Override // java.lang.Runnable
                public final void run() {
                    refCounted3.release();
                }
            }, 500L)) {
                bm3Var.invoke(handler, new PixelCopyCompat$PixelCopyApi24Impl$withHandlerScope$3(refCounted3));
            } else {
                xg.d("Handler thread killed unexpectedly.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 withHandlerScope$lambda$5$lambda$4$lambda$2(HandlerThread handlerThread, Handler handler) {
            handler.getClass();
            handlerThread.quit();
            return j59.a;
        }

        @Override // androidx.camera.viewfinder.core.impl.PixelCopyCompat
        public void requestImpl(final Surface surface, final Bitmap bitmap, final Executor executor, final Consumer<Integer> consumer) throws Throwable {
            surface.getClass();
            bitmap.getClass();
            executor.getClass();
            consumer.getClass();
            Trace.beginAsyncSection("PixelCopyApi24Impl.request", bitmap.hashCode());
            withHandlerScope(new bm3() { // from class: androidx.camera.viewfinder.core.impl.e
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return PixelCopyCompat.PixelCopyApi24Impl.requestImpl$lambda$9(surface, bitmap, executor, consumer, (Handler) obj, (ll3) obj2);
                }
            });
        }
    }

    public static final class PixelCopyApi34Impl implements PixelCopyCompat {
        public static final PixelCopyApi34Impl INSTANCE = new PixelCopyApi34Impl();

        private PixelCopyApi34Impl() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void requestImpl$lambda$0(Bitmap bitmap, Consumer consumer, PixelCopy.Result result) throws Throwable {
            Trace.endAsyncSection("PixelCopyApi34Impl.request", bitmap.hashCode());
            consumer.accept(Integer.valueOf(result.getStatus()));
        }

        @Override // androidx.camera.viewfinder.core.impl.PixelCopyCompat
        public void requestImpl(Surface surface, final Bitmap bitmap, Executor executor, final Consumer<Integer> consumer) throws Throwable {
            surface.getClass();
            bitmap.getClass();
            executor.getClass();
            consumer.getClass();
            Trace.beginAsyncSection("PixelCopyApi34Impl.request", bitmap.hashCode());
            PixelCopy.Request requestBuild = PixelCopy.Request.Builder.ofSurface(surface).setDestinationBitmap(bitmap).build();
            requestBuild.getClass();
            PixelCopy.request(requestBuild, executor, new java.util.function.Consumer() { // from class: androidx.camera.viewfinder.core.impl.f
                @Override // java.util.function.Consumer
                public final void accept(Object obj) throws Throwable {
                    PixelCopyCompat.PixelCopyApi34Impl.requestImpl$lambda$0(bitmap, consumer, (PixelCopy.Result) obj);
                }
            });
        }
    }

    public static final class PixelCopyStub implements PixelCopyCompat {
        public static final PixelCopyStub INSTANCE = new PixelCopyStub();

        private PixelCopyStub() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void requestImpl$lambda$0(Consumer consumer) {
            consumer.accept(1);
        }

        @Override // androidx.camera.viewfinder.core.impl.PixelCopyCompat
        public void requestImpl(Surface surface, Bitmap bitmap, Executor executor, final Consumer<Integer> consumer) {
            surface.getClass();
            bitmap.getClass();
            executor.getClass();
            consumer.getClass();
            executor.execute(new Runnable() { // from class: androidx.camera.viewfinder.core.impl.g
                @Override // java.lang.Runnable
                public final void run() {
                    PixelCopyCompat.PixelCopyStub.requestImpl$lambda$0(consumer);
                }
            });
        }
    }

    static void request(Surface surface, Bitmap bitmap, Executor executor, Consumer<Integer> consumer) {
        Companion.request(surface, bitmap, executor, consumer);
    }

    static int requestSync(Surface surface, Bitmap bitmap) {
        return Companion.requestSync(surface, bitmap);
    }

    void requestImpl(Surface surface, Bitmap bitmap, Executor executor, Consumer<Integer> consumer);

    static int requestSync(Surface surface, Bitmap bitmap, long j) {
        return Companion.requestSync(surface, bitmap, j);
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final cl4<PixelCopyCompat> impl$delegate = new fh8(new e01(2));

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final PixelCopyCompat getImpl() {
            return impl$delegate.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final PixelCopyCompat impl_delegate$lambda$1() {
            return Build.VERSION.SDK_INT >= 34 ? PixelCopyApi34Impl.INSTANCE : PixelCopyApi24Impl.INSTANCE;
        }

        public static /* synthetic */ int requestSync$default(Companion companion, Surface surface, Bitmap bitmap, long j, int i, Object obj) {
            if ((i & 4) != 0) {
                j = -1;
            }
            return companion.requestSync(surface, bitmap, j);
        }

        public final void request(Surface surface, Bitmap bitmap, Executor executor, Consumer<Integer> consumer) {
            surface.getClass();
            bitmap.getClass();
            executor.getClass();
            consumer.getClass();
            getImpl().requestImpl(surface, bitmap, executor, consumer);
        }

        public final int requestSync(Surface surface, Bitmap bitmap, long j) {
            surface.getClass();
            bitmap.getClass();
            Trace.beginSection("PixelCopyCompat.requestSync");
            try {
                final lt ltVarB = kt.b(2);
                final Semaphore semaphore = new Semaphore(0);
                $$INSTANCE.getImpl().requestImpl(surface, bitmap, new o86(), new Consumer() { // from class: androidx.camera.viewfinder.core.impl.PixelCopyCompat$Companion$requestSync$1$2
                    @Override // androidx.core.util.Consumer
                    public final void accept(Integer num) {
                        lt ltVar = ltVarB;
                        num.getClass();
                        ltVar.a = num.intValue();
                        jy8.a aVar = jy8.a.a;
                        semaphore.release();
                    }
                });
                if (j >= 0) {
                    semaphore.tryAcquire(j, TimeUnit.MILLISECONDS);
                } else {
                    semaphore.acquire();
                }
                return ltVarB.a;
            } finally {
                Trace.endSection();
            }
        }

        public final int requestSync(Surface surface, Bitmap bitmap) {
            surface.getClass();
            bitmap.getClass();
            return requestSync$default(this, surface, bitmap, 0L, 4, null);
        }
    }
}
