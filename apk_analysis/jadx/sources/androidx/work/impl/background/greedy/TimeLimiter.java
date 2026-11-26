package androidx.work.impl.background.greedy;

import androidx.work.RunnableScheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkLauncher;
import defpackage.jh2;
import defpackage.jq;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class TimeLimiter {
    private final WorkLauncher launcher;
    private final Object lock;
    private final RunnableScheduler runnableScheduler;
    private final long timeoutMs;
    private final Map<StartStopToken, Runnable> tracked;

    public TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher workLauncher, long j) {
        runnableScheduler.getClass();
        workLauncher.getClass();
        this.runnableScheduler = runnableScheduler;
        this.launcher = workLauncher;
        this.timeoutMs = j;
        this.lock = new Object();
        this.tracked = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void track$lambda$0(TimeLimiter timeLimiter, StartStopToken startStopToken) {
        timeLimiter.launcher.stopWork(startStopToken, 3);
    }

    public final void cancel(StartStopToken startStopToken) {
        Runnable runnableRemove;
        startStopToken.getClass();
        synchronized (this.lock) {
            runnableRemove = this.tracked.remove(startStopToken);
        }
        if (runnableRemove != null) {
            this.runnableScheduler.cancel(runnableRemove);
        }
    }

    public final void track(StartStopToken startStopToken) {
        startStopToken.getClass();
        jq jqVar = new jq(1, this, startStopToken);
        synchronized (this.lock) {
            this.tracked.put(startStopToken, jqVar);
        }
        this.runnableScheduler.scheduleWithDelay(this.timeoutMs, jqVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher workLauncher) {
        this(runnableScheduler, workLauncher, 0L, 4, null);
        runnableScheduler.getClass();
        workLauncher.getClass();
    }

    public /* synthetic */ TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher workLauncher, long j, int i, jh2 jh2Var) {
        this(runnableScheduler, workLauncher, (i & 4) != 0 ? 5400000L : j);
    }
}
