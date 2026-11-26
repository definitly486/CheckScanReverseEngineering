package androidx.compose.foundation.lazy.layout;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class PriorityTask {
    private static final int Low = 0;
    private final int priority;
    private final PrefetchRequest request;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final int High = 1;

    public PriorityTask(int i, PrefetchRequest prefetchRequest) {
        this.priority = i;
        this.request = prefetchRequest;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final PrefetchRequest getRequest() {
        return this.request;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final int getHigh() {
            return PriorityTask.High;
        }

        public final int getLow() {
            return PriorityTask.Low;
        }

        private Companion() {
        }
    }
}
