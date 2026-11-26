package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import android.view.Choreographer;
import android.view.Display;
import android.view.View;
import androidx.compose.ui.util.AndroidTrace_androidKt;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.lj;
import java.util.PriorityQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidPrefetchScheduler implements PrefetchScheduler, PriorityPrefetchScheduler, View.OnAttachStateChangeListener, Runnable, Choreographer.FrameCallback {
    private static long frameIntervalNs;
    private long frameStartTimeNanos;
    private boolean isActive;
    private boolean prefetchScheduled;
    private final View view;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private final PriorityQueue<PriorityTask> prefetchRequests = new PriorityQueue<>(11, new lj());
    private final Choreographer choreographer = Choreographer.getInstance();
    private final PrefetchRequestScopeImpl scope = new PrefetchRequestScopeImpl();

    public static final class PrefetchRequestScopeImpl implements PrefetchRequestScope {
        public static final int $stable = 8;
        private boolean isFrameIdle;
        private long nextFrameTimeNs;

        @Override // androidx.compose.foundation.lazy.layout.PrefetchRequestScope
        public long availableTimeNanos() {
            if (this.isFrameIdle) {
                return Long.MAX_VALUE;
            }
            return Math.max(0L, this.nextFrameTimeNs - System.nanoTime());
        }

        public final long getNextFrameTimeNs() {
            return this.nextFrameTimeNs;
        }

        public final boolean isFrameIdle() {
            return this.isFrameIdle;
        }

        public final void setFrameIdle(boolean z) {
            this.isFrameIdle = z;
        }

        public final void setNextFrameTimeNs(long j) {
            this.nextFrameTimeNs = j;
        }
    }

    public AndroidPrefetchScheduler(View view) {
        this.view = view;
        Companion.calculateFrameIntervalIfNeeded(view);
        view.addOnAttachStateChangeListener(this);
        if (view.isAttachedToWindow()) {
            onViewAttachedToWindow(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int prefetchRequests$lambda$0(PriorityTask priorityTask, PriorityTask priorityTask2) {
        return aa4.f(priorityTask2.getPriority(), priorityTask.getPriority());
    }

    private final boolean runRequest() {
        long jAvailableTimeNanos = this.scope.availableTimeNanos();
        AndroidTrace_androidKt.traceValue("compose:lazy:prefetch:available_time_nanos", jAvailableTimeNanos);
        boolean z = true;
        if (jAvailableTimeNanos > 0) {
            PriorityTask priorityTaskPeek = this.prefetchRequests.peek();
            priorityTaskPeek.getClass();
            if (!priorityTaskPeek.getRequest().execute(this.scope)) {
                this.prefetchRequests.poll();
                z = false;
            }
            this.scope.setFrameIdle(false);
        }
        return z;
    }

    private final void startExecution() {
        if (this.prefetchScheduled) {
            return;
        }
        this.prefetchScheduled = true;
        this.view.post(this);
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        if (this.isActive) {
            this.frameStartTimeNanos = j;
            this.view.post(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.isActive = true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.isActive = false;
        this.view.removeCallbacks(this);
        this.choreographer.removeFrameCallback(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.prefetchRequests.isEmpty() || !this.prefetchScheduled || !this.isActive || this.view.getWindowVisibility() != 0) {
            this.prefetchScheduled = false;
            return;
        }
        long nanos = TimeUnit.MILLISECONDS.toNanos(this.view.getDrawingTime());
        this.scope.setFrameIdle(System.nanoTime() > (2 * frameIntervalNs) + nanos);
        this.scope.setNextFrameTimeNs(Math.max(this.frameStartTimeNanos, nanos) + frameIntervalNs);
        boolean zRunRequest = false;
        while (!this.prefetchRequests.isEmpty() && !zRunRequest) {
            if (this.scope.isFrameIdle()) {
                Trace.beginSection("compose:lazy:prefetch:idle_frame");
                try {
                    zRunRequest = runRequest();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } else {
                zRunRequest = runRequest();
            }
        }
        if (zRunRequest) {
            this.choreographer.postFrameCallback(this);
        } else {
            this.prefetchScheduled = false;
        }
        AndroidTrace_androidKt.traceValue("compose:lazy:prefetch:available_time_nanos", 0L);
    }

    @Override // androidx.compose.foundation.lazy.layout.PriorityPrefetchScheduler
    public void scheduleHighPriorityPrefetch(PrefetchRequest prefetchRequest) {
        this.prefetchRequests.add(new PriorityTask(PriorityTask.Companion.getHigh(), prefetchRequest));
        startExecution();
    }

    @Override // androidx.compose.foundation.lazy.layout.PriorityPrefetchScheduler
    public void scheduleLowPriorityPrefetch(PrefetchRequest prefetchRequest) {
        this.prefetchRequests.add(new PriorityTask(PriorityTask.Companion.getLow(), prefetchRequest));
        startExecution();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:10:0x0021  */
        public final void calculateFrameIntervalIfNeeded(View view) {
            float refreshRate;
            if (AndroidPrefetchScheduler.frameIntervalNs == 0) {
                Display display = view.getDisplay();
                if (view.isInEditMode() || display == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                AndroidPrefetchScheduler.frameIntervalNs = (long) (1.0E9f / refreshRate);
            }
        }

        private Companion() {
        }
    }
}
