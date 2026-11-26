package androidx.work;

import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.DurationApi26Impl;
import defpackage.fg;
import defpackage.jh2;
import defpackage.mr7;
import defpackage.qn1;
import defpackage.ta8;
import defpackage.ua8;
import java.time.Duration;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WorkRequest {
    public static final Companion Companion = new Companion(null);
    public static final long DEFAULT_BACKOFF_DELAY_MILLIS = 30000;
    public static final long MAX_BACKOFF_MILLIS = 18000000;
    private static final int MAX_TRACE_SPAN_LENGTH = 127;
    public static final long MIN_BACKOFF_MILLIS = 10000;
    private final UUID id;
    private final Set<String> tags;
    private final WorkSpec workSpec;

    public WorkRequest(UUID uuid, WorkSpec workSpec, Set<String> set) {
        uuid.getClass();
        workSpec.getClass();
        set.getClass();
        this.id = uuid;
        this.workSpec = workSpec;
        this.tags = set;
    }

    public UUID getId() {
        return this.id;
    }

    public final String getStringId() {
        String string = getId().toString();
        string.getClass();
        return string;
    }

    public final Set<String> getTags() {
        return this.tags;
    }

    public final WorkSpec getWorkSpec() {
        return this.workSpec;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String deriveTraceTagFromClassName(String str) {
            List listY = ta8.Y(str, new String[]{"."});
            String str2 = listY.size() == 1 ? (String) listY.get(0) : (String) qn1.b0(listY);
            return str2.length() <= 127 ? str2 : ua8.l0(127, str2);
        }

        private Companion() {
        }
    }

    public static abstract class Builder<B extends Builder<B, ?>, W extends WorkRequest> {
        private boolean backoffCriteriaSet;
        private UUID id;
        private final Set<String> tags;
        private WorkSpec workSpec;
        private final Class<? extends ListenableWorker> workerClass;

        public Builder(Class<? extends ListenableWorker> cls) {
            cls.getClass();
            this.workerClass = cls;
            UUID uuidRandomUUID = UUID.randomUUID();
            uuidRandomUUID.getClass();
            this.id = uuidRandomUUID;
            String string = this.id.toString();
            string.getClass();
            this.workSpec = new WorkSpec(string, cls.getName());
            this.tags = mr7.k(cls.getName());
        }

        public final B addTag(String str) {
            str.getClass();
            this.tags.add(str);
            return (B) getThisObject$work_runtime_release();
        }

        public final W build() {
            W w = (W) buildInternal$work_runtime_release();
            Constraints constraints = this.workSpec.constraints;
            boolean z = constraints.hasContentUriTriggers() || constraints.requiresBatteryNotLow() || constraints.requiresCharging() || constraints.requiresDeviceIdle();
            WorkSpec workSpec = this.workSpec;
            if (workSpec.expedited) {
                if (z) {
                    fg.c("Expedited jobs only support network and storage constraints");
                    return null;
                }
                if (workSpec.initialDelay > 0) {
                    fg.c("Expedited jobs cannot be delayed");
                    return null;
                }
            }
            String traceTag = workSpec.getTraceTag();
            if (traceTag == null) {
                WorkSpec workSpec2 = this.workSpec;
                workSpec2.setTraceTag(WorkRequest.Companion.deriveTraceTagFromClassName(workSpec2.workerClassName));
            } else if (traceTag.length() > 127) {
                this.workSpec.setTraceTag(ua8.l0(127, traceTag));
            }
            UUID uuidRandomUUID = UUID.randomUUID();
            uuidRandomUUID.getClass();
            setId(uuidRandomUUID);
            return w;
        }

        public abstract W buildInternal$work_runtime_release();

        public final boolean getBackoffCriteriaSet$work_runtime_release() {
            return this.backoffCriteriaSet;
        }

        public final UUID getId$work_runtime_release() {
            return this.id;
        }

        public final Set<String> getTags$work_runtime_release() {
            return this.tags;
        }

        public abstract B getThisObject$work_runtime_release();

        public final WorkSpec getWorkSpec$work_runtime_release() {
            return this.workSpec;
        }

        public final Class<? extends ListenableWorker> getWorkerClass$work_runtime_release() {
            return this.workerClass;
        }

        public final B keepResultsForAtLeast(long j, TimeUnit timeUnit) {
            timeUnit.getClass();
            this.workSpec.minimumRetentionDuration = timeUnit.toMillis(j);
            return (B) getThisObject$work_runtime_release();
        }

        public final B setBackoffCriteria(BackoffPolicy backoffPolicy, long j, TimeUnit timeUnit) {
            backoffPolicy.getClass();
            timeUnit.getClass();
            this.backoffCriteriaSet = true;
            WorkSpec workSpec = this.workSpec;
            workSpec.backoffPolicy = backoffPolicy;
            workSpec.setBackoffDelayDuration(timeUnit.toMillis(j));
            return (B) getThisObject$work_runtime_release();
        }

        public final void setBackoffCriteriaSet$work_runtime_release(boolean z) {
            this.backoffCriteriaSet = z;
        }

        public final B setBackoffForSystemInterruptions() {
            this.workSpec.setBackOffOnSystemInterruptions(Boolean.TRUE);
            return (B) getThisObject$work_runtime_release();
        }

        public final B setConstraints(Constraints constraints) {
            constraints.getClass();
            this.workSpec.constraints = constraints;
            return (B) getThisObject$work_runtime_release();
        }

        public B setExpedited(OutOfQuotaPolicy outOfQuotaPolicy) {
            outOfQuotaPolicy.getClass();
            WorkSpec workSpec = this.workSpec;
            workSpec.expedited = true;
            workSpec.outOfQuotaPolicy = outOfQuotaPolicy;
            return (B) getThisObject$work_runtime_release();
        }

        public final B setId(UUID uuid) {
            uuid.getClass();
            this.id = uuid;
            String string = uuid.toString();
            string.getClass();
            this.workSpec = new WorkSpec(string, this.workSpec);
            return (B) getThisObject$work_runtime_release();
        }

        public final void setId$work_runtime_release(UUID uuid) {
            uuid.getClass();
            this.id = uuid;
        }

        public B setInitialDelay(long j, TimeUnit timeUnit) {
            timeUnit.getClass();
            this.workSpec.initialDelay = timeUnit.toMillis(j);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.workSpec.initialDelay) {
                return (B) getThisObject$work_runtime_release();
            }
            fg.c("The given initial delay is too large and will cause an overflow!");
            return null;
        }

        public final B setInitialRunAttemptCount(int i) {
            this.workSpec.runAttemptCount = i;
            return (B) getThisObject$work_runtime_release();
        }

        public final B setInitialState(WorkInfo.State state) {
            state.getClass();
            this.workSpec.state = state;
            return (B) getThisObject$work_runtime_release();
        }

        public final B setInputData(Data data) {
            data.getClass();
            this.workSpec.input = data;
            return (B) getThisObject$work_runtime_release();
        }

        public final B setLastEnqueueTime(long j, TimeUnit timeUnit) {
            timeUnit.getClass();
            this.workSpec.lastEnqueueTime = timeUnit.toMillis(j);
            return (B) getThisObject$work_runtime_release();
        }

        public final B setScheduleRequestedAt(long j, TimeUnit timeUnit) {
            timeUnit.getClass();
            this.workSpec.scheduleRequestedAt = timeUnit.toMillis(j);
            return (B) getThisObject$work_runtime_release();
        }

        public final B setTraceTag(String str) {
            str.getClass();
            this.workSpec.setTraceTag(str);
            return (B) getThisObject$work_runtime_release();
        }

        public final void setWorkSpec$work_runtime_release(WorkSpec workSpec) {
            workSpec.getClass();
            this.workSpec = workSpec;
        }

        public final B keepResultsForAtLeast(Duration duration) {
            duration.getClass();
            this.workSpec.minimumRetentionDuration = DurationApi26Impl.toMillisCompat(duration);
            return (B) getThisObject$work_runtime_release();
        }

        public final B setBackoffCriteria(BackoffPolicy backoffPolicy, Duration duration) {
            backoffPolicy.getClass();
            duration.getClass();
            this.backoffCriteriaSet = true;
            WorkSpec workSpec = this.workSpec;
            workSpec.backoffPolicy = backoffPolicy;
            workSpec.setBackoffDelayDuration(DurationApi26Impl.toMillisCompat(duration));
            return (B) getThisObject$work_runtime_release();
        }

        public B setInitialDelay(Duration duration) {
            duration.getClass();
            this.workSpec.initialDelay = DurationApi26Impl.toMillisCompat(duration);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.workSpec.initialDelay) {
                return (B) getThisObject$work_runtime_release();
            }
            fg.c("The given initial delay is too large and will cause an overflow!");
            return null;
        }
    }
}
