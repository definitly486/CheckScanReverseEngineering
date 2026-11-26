package androidx.activity;

import defpackage.j59;
import defpackage.kl3;
import defpackage.ll3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class FullyDrawnReporter {
    private final Executor executor;
    private final Object lock;
    private final List<ll3<j59>> onReportCallbacks;
    private final ll3<j59> reportFullyDrawn;
    private boolean reportPosted;
    private final Runnable reportRunnable;
    private boolean reportedFullyDrawn;
    private int reporterCount;

    public FullyDrawnReporter(Executor executor, ll3<j59> ll3Var) {
        executor.getClass();
        ll3Var.getClass();
        this.executor = executor;
        this.reportFullyDrawn = ll3Var;
        this.lock = new Object();
        this.onReportCallbacks = new ArrayList();
        this.reportRunnable = new kl3(this, 0);
    }

    private final void postWhenReportersAreDone() {
        if (this.reportPosted || this.reporterCount != 0) {
            return;
        }
        this.reportPosted = true;
        this.executor.execute(this.reportRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void reportRunnable$lambda$0(FullyDrawnReporter fullyDrawnReporter) {
        synchronized (fullyDrawnReporter.lock) {
            try {
                fullyDrawnReporter.reportPosted = false;
                if (fullyDrawnReporter.reporterCount == 0 && !fullyDrawnReporter.reportedFullyDrawn) {
                    fullyDrawnReporter.reportFullyDrawn.invoke();
                    fullyDrawnReporter.fullyDrawnReported();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void addOnReportDrawnListener(ll3<j59> ll3Var) {
        boolean z;
        ll3Var.getClass();
        synchronized (this.lock) {
            if (this.reportedFullyDrawn) {
                z = true;
            } else {
                this.onReportCallbacks.add(ll3Var);
                z = false;
            }
        }
        if (z) {
            ll3Var.invoke();
        }
    }

    public final void addReporter() {
        synchronized (this.lock) {
            try {
                if (!this.reportedFullyDrawn) {
                    this.reporterCount++;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void fullyDrawnReported() {
        synchronized (this.lock) {
            try {
                this.reportedFullyDrawn = true;
                Iterator<T> it = this.onReportCallbacks.iterator();
                while (it.hasNext()) {
                    ((ll3) it.next()).invoke();
                }
                this.onReportCallbacks.clear();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean isFullyDrawnReported() {
        boolean z;
        synchronized (this.lock) {
            z = this.reportedFullyDrawn;
        }
        return z;
    }

    public final void removeOnReportDrawnListener(ll3<j59> ll3Var) {
        ll3Var.getClass();
        synchronized (this.lock) {
            this.onReportCallbacks.remove(ll3Var);
            j59 j59Var = j59.a;
        }
    }

    public final void removeReporter() {
        int i;
        synchronized (this.lock) {
            try {
                if (!this.reportedFullyDrawn && (i = this.reporterCount) > 0) {
                    this.reporterCount = i - 1;
                    postWhenReportersAreDone();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
