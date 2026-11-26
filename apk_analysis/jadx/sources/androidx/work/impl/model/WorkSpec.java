package androidx.work.impl.model;

import androidx.arch.core.util.Function;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.OverwritingInputMerger;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import defpackage.aa4;
import defpackage.e2;
import defpackage.ej0;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx6;
import defpackage.qg;
import defpackage.tg;
import defpackage.vg;
import defpackage.xp;
import defpackage.zg;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkSpec {
    public static final Companion Companion = new Companion(null);
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    private static final String TAG;
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER;
    private Boolean backOffOnSystemInterruptions;
    public long backoffDelayDuration;
    public BackoffPolicy backoffPolicy;
    public Constraints constraints;
    public boolean expedited;
    public long flexDuration;
    private final int generation;
    public final String id;
    public long initialDelay;
    public Data input;
    public String inputMergerClassName;
    public long intervalDuration;
    public long lastEnqueueTime;
    public long minimumRetentionDuration;
    private long nextScheduleTimeOverride;
    private int nextScheduleTimeOverrideGeneration;
    public OutOfQuotaPolicy outOfQuotaPolicy;
    public Data output;
    private int periodCount;
    public int runAttemptCount;
    public long scheduleRequestedAt;
    public WorkInfo.State state;
    private final int stopReason;
    private String traceTag;
    public String workerClassName;

    public static final class IdAndState {
        public String id;
        public WorkInfo.State state;

        public IdAndState(String str, WorkInfo.State state) {
            str.getClass();
            state.getClass();
            this.id = str;
            this.state = state;
        }

        public static /* synthetic */ IdAndState copy$default(IdAndState idAndState, String str, WorkInfo.State state, int i, Object obj) {
            if ((i & 1) != 0) {
                str = idAndState.id;
            }
            if ((i & 2) != 0) {
                state = idAndState.state;
            }
            return idAndState.copy(str, state);
        }

        public final String component1() {
            return this.id;
        }

        public final WorkInfo.State component2() {
            return this.state;
        }

        public final IdAndState copy(String str, WorkInfo.State state) {
            str.getClass();
            state.getClass();
            return new IdAndState(str, state);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            return aa4.e(this.id, idAndState.id) && this.state == idAndState.state;
        }

        public int hashCode() {
            return this.state.hashCode() + (this.id.hashCode() * 31);
        }

        public String toString() {
            return "IdAndState(id=" + this.id + ", state=" + this.state + ')';
        }
    }

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("WorkSpec");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
        WORK_INFO_MAPPER = new e2();
    }

    public /* synthetic */ WorkSpec(String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool, int i6, jh2 jh2Var) {
        this(str, (i6 & 2) != 0 ? WorkInfo.State.ENQUEUED : state, str2, (i6 & 8) != 0 ? OverwritingInputMerger.class.getName() : str3, (i6 & 16) != 0 ? Data.EMPTY : data, (i6 & 32) != 0 ? Data.EMPTY : data2, (i6 & 64) != 0 ? 0L : j, (i6 & 128) != 0 ? 0L : j2, (i6 & 256) != 0 ? 0L : j3, (i6 & 512) != 0 ? Constraints.NONE : constraints, (i6 & 1024) != 0 ? 0 : i, (i6 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i6 & 4096) != 0 ? WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS : j4, (i6 & 8192) != 0 ? -1L : j5, (i6 & 16384) == 0 ? j6 : 0L, (32768 & i6) != 0 ? -1L : j7, (65536 & i6) != 0 ? false : z, (131072 & i6) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i6) != 0 ? 0 : i2, (524288 & i6) != 0 ? 0 : i3, (1048576 & i6) != 0 ? Long.MAX_VALUE : j8, (2097152 & i6) != 0 ? 0 : i4, (4194304 & i6) != 0 ? -256 : i5, (8388608 & i6) != 0 ? null : str4, (i6 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List WORK_INFO_MAPPER$lambda$1(List list) {
        if (list == null) {
            return null;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((WorkInfoPojo) it.next()).toWorkInfo());
        }
        return arrayList;
    }

    public static /* synthetic */ WorkSpec copy$default(WorkSpec workSpec, String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool, int i6, Object obj) {
        Boolean bool2;
        String str5;
        String str6 = (i6 & 1) != 0 ? workSpec.id : str;
        WorkInfo.State state2 = (i6 & 2) != 0 ? workSpec.state : state;
        String str7 = (i6 & 4) != 0 ? workSpec.workerClassName : str2;
        String str8 = (i6 & 8) != 0 ? workSpec.inputMergerClassName : str3;
        Data data3 = (i6 & 16) != 0 ? workSpec.input : data;
        Data data4 = (i6 & 32) != 0 ? workSpec.output : data2;
        long j9 = (i6 & 64) != 0 ? workSpec.initialDelay : j;
        long j10 = (i6 & 128) != 0 ? workSpec.intervalDuration : j2;
        long j11 = (i6 & 256) != 0 ? workSpec.flexDuration : j3;
        Constraints constraints2 = (i6 & 512) != 0 ? workSpec.constraints : constraints;
        int i7 = (i6 & 1024) != 0 ? workSpec.runAttemptCount : i;
        String str9 = str6;
        BackoffPolicy backoffPolicy2 = (i6 & 2048) != 0 ? workSpec.backoffPolicy : backoffPolicy;
        WorkInfo.State state3 = state2;
        long j12 = (i6 & 4096) != 0 ? workSpec.backoffDelayDuration : j4;
        long j13 = (i6 & 8192) != 0 ? workSpec.lastEnqueueTime : j5;
        long j14 = (i6 & 16384) != 0 ? workSpec.minimumRetentionDuration : j6;
        long j15 = (i6 & 32768) != 0 ? workSpec.scheduleRequestedAt : j7;
        boolean z2 = (i6 & 65536) != 0 ? workSpec.expedited : z;
        long j16 = j15;
        OutOfQuotaPolicy outOfQuotaPolicy2 = (i6 & 131072) != 0 ? workSpec.outOfQuotaPolicy : outOfQuotaPolicy;
        int i8 = (i6 & 262144) != 0 ? workSpec.periodCount : i2;
        OutOfQuotaPolicy outOfQuotaPolicy3 = outOfQuotaPolicy2;
        int i9 = (i6 & 524288) != 0 ? workSpec.generation : i3;
        int i10 = i8;
        long j17 = (i6 & 1048576) != 0 ? workSpec.nextScheduleTimeOverride : j8;
        int i11 = (i6 & 2097152) != 0 ? workSpec.nextScheduleTimeOverrideGeneration : i4;
        int i12 = (i6 & 4194304) != 0 ? workSpec.stopReason : i5;
        int i13 = i11;
        String str10 = (i6 & 8388608) != 0 ? workSpec.traceTag : str4;
        if ((i6 & 16777216) != 0) {
            str5 = str10;
            bool2 = workSpec.backOffOnSystemInterruptions;
        } else {
            bool2 = bool;
            str5 = str10;
        }
        return workSpec.copy(str9, state3, str7, str8, data3, data4, j9, j10, j11, constraints2, i7, backoffPolicy2, j12, j13, j14, j16, z2, outOfQuotaPolicy3, i10, i9, j17, i13, i12, str5, bool2);
    }

    public final long calculateNextRunTime() {
        return Companion.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
    }

    public final String component1() {
        return this.id;
    }

    public final Constraints component10() {
        return this.constraints;
    }

    public final int component11() {
        return this.runAttemptCount;
    }

    public final BackoffPolicy component12() {
        return this.backoffPolicy;
    }

    public final long component13() {
        return this.backoffDelayDuration;
    }

    public final long component14() {
        return this.lastEnqueueTime;
    }

    public final long component15() {
        return this.minimumRetentionDuration;
    }

    public final long component16() {
        return this.scheduleRequestedAt;
    }

    public final boolean component17() {
        return this.expedited;
    }

    public final OutOfQuotaPolicy component18() {
        return this.outOfQuotaPolicy;
    }

    public final int component19() {
        return this.periodCount;
    }

    public final WorkInfo.State component2() {
        return this.state;
    }

    public final int component20() {
        return this.generation;
    }

    public final long component21() {
        return this.nextScheduleTimeOverride;
    }

    public final int component22() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    public final int component23() {
        return this.stopReason;
    }

    public final String component24() {
        return this.traceTag;
    }

    public final Boolean component25() {
        return this.backOffOnSystemInterruptions;
    }

    public final String component3() {
        return this.workerClassName;
    }

    public final String component4() {
        return this.inputMergerClassName;
    }

    public final Data component5() {
        return this.input;
    }

    public final Data component6() {
        return this.output;
    }

    public final long component7() {
        return this.initialDelay;
    }

    public final long component8() {
        return this.intervalDuration;
    }

    public final long component9() {
        return this.flexDuration;
    }

    public final WorkSpec copy(String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool) {
        str.getClass();
        state.getClass();
        str2.getClass();
        str3.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
        backoffPolicy.getClass();
        outOfQuotaPolicy.getClass();
        return new WorkSpec(str, state, str2, str3, data, data2, j, j2, j3, constraints, i, backoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicy, i2, i3, j8, i4, i5, str4, bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        return aa4.e(this.id, workSpec.id) && this.state == workSpec.state && aa4.e(this.workerClassName, workSpec.workerClassName) && aa4.e(this.inputMergerClassName, workSpec.inputMergerClassName) && aa4.e(this.input, workSpec.input) && aa4.e(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && aa4.e(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation && this.nextScheduleTimeOverride == workSpec.nextScheduleTimeOverride && this.nextScheduleTimeOverrideGeneration == workSpec.nextScheduleTimeOverrideGeneration && this.stopReason == workSpec.stopReason && aa4.e(this.traceTag, workSpec.traceTag) && aa4.e(this.backOffOnSystemInterruptions, workSpec.backOffOnSystemInterruptions);
    }

    public final Boolean getBackOffOnSystemInterruptions() {
        return this.backOffOnSystemInterruptions;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    public final int getPeriodCount() {
        return this.periodCount;
    }

    public final int getStopReason() {
        return this.stopReason;
    }

    public final String getTraceTag() {
        return this.traceTag;
    }

    public final boolean hasConstraints() {
        return !aa4.e(Constraints.NONE, this.constraints);
    }

    public int hashCode() {
        int iB = ej0.b(this.stopReason, ej0.b(this.nextScheduleTimeOverrideGeneration, vg.b(ej0.b(this.generation, ej0.b(this.periodCount, (this.outOfQuotaPolicy.hashCode() + tg.c(vg.b(vg.b(vg.b(vg.b((this.backoffPolicy.hashCode() + ej0.b(this.runAttemptCount, (this.constraints.hashCode() + vg.b(vg.b(vg.b((this.output.hashCode() + ((this.input.hashCode() + zg.b(zg.b((this.state.hashCode() + (this.id.hashCode() * 31)) * 31, 31, this.workerClassName), 31, this.inputMergerClassName)) * 31)) * 31, 31, this.initialDelay), 31, this.intervalDuration), 31, this.flexDuration)) * 31, 31)) * 31, 31, this.backoffDelayDuration), 31, this.lastEnqueueTime), 31, this.minimumRetentionDuration), 31, this.scheduleRequestedAt), 31, this.expedited)) * 31, 31), 31), 31, this.nextScheduleTimeOverride), 31), 31);
        String str = this.traceTag;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.backOffOnSystemInterruptions;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public final boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public final void setBackOffOnSystemInterruptions(Boolean bool) {
        this.backOffOnSystemInterruptions = bool;
    }

    public final void setBackoffDelayDuration(long j) {
        if (j > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration exceeds maximum value");
        }
        if (j < 10000) {
            Logger.get().warning(TAG, "Backoff delay duration less than minimum value");
        }
        this.backoffDelayDuration = kx6.h(j, 10000L, WorkRequest.MAX_BACKOFF_MILLIS);
    }

    public final void setNextScheduleTimeOverride(long j) {
        this.nextScheduleTimeOverride = j;
    }

    public final void setNextScheduleTimeOverrideGeneration(int i) {
        this.nextScheduleTimeOverrideGeneration = i;
    }

    public final void setPeriodCount(int i) {
        this.periodCount = i;
    }

    public final void setPeriodic(long j, long j2) {
        long j3 = PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS;
        if (j < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        if (j >= PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            j3 = j;
        }
        this.intervalDuration = j3;
        if (j2 < 300000) {
            Logger.get().warning(TAG, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (j2 > this.intervalDuration) {
            Logger.get().warning(TAG, "Flex duration greater than interval duration; Changed to " + j);
        }
        this.flexDuration = kx6.h(j2, 300000L, this.intervalDuration);
    }

    public final void setTraceTag(String str) {
        this.traceTag = str;
    }

    public String toString() {
        return xp.e(new StringBuilder("{WorkSpec: "), this.id, '}');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final long calculateNextRunTime(boolean z, int i, BackoffPolicy backoffPolicy, long j, long j2, int i2, boolean z2, long j3, long j4, long j5, long j6) {
            backoffPolicy.getClass();
            if (j6 != Long.MAX_VALUE && z2) {
                if (i2 != 0) {
                    long j7 = j2 + PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS;
                    if (j6 < j7) {
                        return j7;
                    }
                }
                return j6;
            }
            if (z) {
                long jScalb = backoffPolicy == BackoffPolicy.LINEAR ? j * ((long) i) : (long) Math.scalb(j, i - 1);
                if (jScalb > WorkRequest.MAX_BACKOFF_MILLIS) {
                    jScalb = 18000000;
                }
                return j2 + jScalb;
            }
            if (z2) {
                long j8 = i2 == 0 ? j2 + j3 : j2 + j5;
                return (j4 == j5 || i2 != 0) ? j8 : (j5 - j4) + j8;
            }
            if (j2 == -1) {
                return Long.MAX_VALUE;
            }
            return j2 + j3;
        }

        private Companion() {
        }
    }

    public final void setPeriodic(long j) {
        if (j < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        long j2 = j < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS ? 900000L : j;
        if (j < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            j = 900000;
        }
        setPeriodic(j2, j);
    }

    public static final class WorkInfoPojo {
        private long backoffDelayDuration;
        private BackoffPolicy backoffPolicy;
        private final Constraints constraints;
        private final long flexDuration;
        private final int generation;
        private final String id;
        private final long initialDelay;
        private final long intervalDuration;
        private long lastEnqueueTime;
        private final long nextScheduleTimeOverride;
        private final Data output;
        private int periodCount;
        private final List<Data> progress;
        private final int runAttemptCount;
        private final WorkInfo.State state;
        private final int stopReason;
        private final List<String> tags;

        public /* synthetic */ WorkInfoPojo(String str, WorkInfo.State state, Data data, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, int i2, int i3, long j6, int i4, List list, List list2, int i5, jh2 jh2Var) {
            this(str, state, data, (i5 & 8) != 0 ? 0L : j, (i5 & 16) != 0 ? 0L : j2, (i5 & 32) != 0 ? 0L : j3, constraints, i, (i5 & 256) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i5 & 512) != 0 ? 30000L : j4, (i5 & 1024) != 0 ? 0L : j5, (i5 & 2048) != 0 ? 0 : i2, i3, j6, i4, list, list2);
        }

        private final long calculateNextRunTimeMillis() {
            if (this.state == WorkInfo.State.ENQUEUED) {
                return WorkSpec.Companion.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
            }
            return Long.MAX_VALUE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ WorkInfoPojo copy$default(WorkInfoPojo workInfoPojo, String str, WorkInfo.State state, Data data, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, int i2, int i3, long j6, int i4, List list, List list2, int i5, Object obj) {
            String str2 = (i5 & 1) != 0 ? workInfoPojo.id : str;
            WorkInfo.State state2 = (i5 & 2) != 0 ? workInfoPojo.state : state;
            return workInfoPojo.copy(str2, state2, (i5 & 4) != 0 ? workInfoPojo.output : data, (i5 & 8) != 0 ? workInfoPojo.initialDelay : j, (i5 & 16) != 0 ? workInfoPojo.intervalDuration : j2, (i5 & 32) != 0 ? workInfoPojo.flexDuration : j3, (i5 & 64) != 0 ? workInfoPojo.constraints : constraints, (i5 & 128) != 0 ? workInfoPojo.runAttemptCount : i, (i5 & 256) != 0 ? workInfoPojo.backoffPolicy : backoffPolicy, (i5 & 512) != 0 ? workInfoPojo.backoffDelayDuration : j4, (i5 & 1024) != 0 ? workInfoPojo.lastEnqueueTime : j5, (i5 & 2048) != 0 ? workInfoPojo.periodCount : i2, (i5 & 4096) != 0 ? workInfoPojo.generation : i3, (i5 & 8192) != 0 ? workInfoPojo.nextScheduleTimeOverride : j6, (i5 & 16384) != 0 ? workInfoPojo.stopReason : i4, (32768 & i5) != 0 ? workInfoPojo.tags : list, (i5 & 65536) != 0 ? workInfoPojo.progress : list2);
        }

        private final WorkInfo.PeriodicityInfo getPeriodicityOrNull() {
            long j = this.intervalDuration;
            if (j != 0) {
                return new WorkInfo.PeriodicityInfo(j, this.flexDuration);
            }
            return null;
        }

        public final String component1() {
            return this.id;
        }

        public final long component10() {
            return this.backoffDelayDuration;
        }

        public final long component11() {
            return this.lastEnqueueTime;
        }

        public final int component12() {
            return this.periodCount;
        }

        public final int component13() {
            return this.generation;
        }

        public final long component14() {
            return this.nextScheduleTimeOverride;
        }

        public final int component15() {
            return this.stopReason;
        }

        public final List<String> component16() {
            return this.tags;
        }

        public final List<Data> component17() {
            return this.progress;
        }

        public final WorkInfo.State component2() {
            return this.state;
        }

        public final Data component3() {
            return this.output;
        }

        public final long component4() {
            return this.initialDelay;
        }

        public final long component5() {
            return this.intervalDuration;
        }

        public final long component6() {
            return this.flexDuration;
        }

        public final Constraints component7() {
            return this.constraints;
        }

        public final int component8() {
            return this.runAttemptCount;
        }

        public final BackoffPolicy component9() {
            return this.backoffPolicy;
        }

        public final WorkInfoPojo copy(String str, WorkInfo.State state, Data data, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, int i2, int i3, long j6, int i4, List<String> list, List<Data> list2) {
            str.getClass();
            state.getClass();
            data.getClass();
            constraints.getClass();
            backoffPolicy.getClass();
            list.getClass();
            list2.getClass();
            return new WorkInfoPojo(str, state, data, j, j2, j3, constraints, i, backoffPolicy, j4, j5, i2, i3, j6, i4, list, list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            return aa4.e(this.id, workInfoPojo.id) && this.state == workInfoPojo.state && aa4.e(this.output, workInfoPojo.output) && this.initialDelay == workInfoPojo.initialDelay && this.intervalDuration == workInfoPojo.intervalDuration && this.flexDuration == workInfoPojo.flexDuration && aa4.e(this.constraints, workInfoPojo.constraints) && this.runAttemptCount == workInfoPojo.runAttemptCount && this.backoffPolicy == workInfoPojo.backoffPolicy && this.backoffDelayDuration == workInfoPojo.backoffDelayDuration && this.lastEnqueueTime == workInfoPojo.lastEnqueueTime && this.periodCount == workInfoPojo.periodCount && this.generation == workInfoPojo.generation && this.nextScheduleTimeOverride == workInfoPojo.nextScheduleTimeOverride && this.stopReason == workInfoPojo.stopReason && aa4.e(this.tags, workInfoPojo.tags) && aa4.e(this.progress, workInfoPojo.progress);
        }

        public final long getBackoffDelayDuration() {
            return this.backoffDelayDuration;
        }

        public final BackoffPolicy getBackoffPolicy() {
            return this.backoffPolicy;
        }

        public final Constraints getConstraints() {
            return this.constraints;
        }

        public final long getFlexDuration() {
            return this.flexDuration;
        }

        public final int getGeneration() {
            return this.generation;
        }

        public final String getId() {
            return this.id;
        }

        public final long getInitialDelay() {
            return this.initialDelay;
        }

        public final long getIntervalDuration() {
            return this.intervalDuration;
        }

        public final long getLastEnqueueTime() {
            return this.lastEnqueueTime;
        }

        public final long getNextScheduleTimeOverride() {
            return this.nextScheduleTimeOverride;
        }

        public final Data getOutput() {
            return this.output;
        }

        public final int getPeriodCount() {
            return this.periodCount;
        }

        public final List<Data> getProgress() {
            return this.progress;
        }

        public final int getRunAttemptCount() {
            return this.runAttemptCount;
        }

        public final WorkInfo.State getState() {
            return this.state;
        }

        public final int getStopReason() {
            return this.stopReason;
        }

        public final List<String> getTags() {
            return this.tags;
        }

        public int hashCode() {
            return this.progress.hashCode() + e2.b(this.tags, ej0.b(this.stopReason, vg.b(ej0.b(this.generation, ej0.b(this.periodCount, vg.b(vg.b((this.backoffPolicy.hashCode() + ej0.b(this.runAttemptCount, (this.constraints.hashCode() + vg.b(vg.b(vg.b((this.output.hashCode() + ((this.state.hashCode() + (this.id.hashCode() * 31)) * 31)) * 31, 31, this.initialDelay), 31, this.intervalDuration), 31, this.flexDuration)) * 31, 31)) * 31, 31, this.backoffDelayDuration), 31, this.lastEnqueueTime), 31), 31), 31, this.nextScheduleTimeOverride), 31), 31);
        }

        public final boolean isBackedOff() {
            return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
        }

        public final boolean isPeriodic() {
            return this.intervalDuration != 0;
        }

        public final void setBackoffDelayDuration(long j) {
            this.backoffDelayDuration = j;
        }

        public final void setBackoffPolicy(BackoffPolicy backoffPolicy) {
            backoffPolicy.getClass();
            this.backoffPolicy = backoffPolicy;
        }

        public final void setLastEnqueueTime(long j) {
            this.lastEnqueueTime = j;
        }

        public final void setPeriodCount(int i) {
            this.periodCount = i;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("WorkInfoPojo(id=");
            sb.append(this.id);
            sb.append(", state=");
            sb.append(this.state);
            sb.append(", output=");
            sb.append(this.output);
            sb.append(", initialDelay=");
            sb.append(this.initialDelay);
            sb.append(", intervalDuration=");
            sb.append(this.intervalDuration);
            sb.append(", flexDuration=");
            sb.append(this.flexDuration);
            sb.append(", constraints=");
            sb.append(this.constraints);
            sb.append(", runAttemptCount=");
            sb.append(this.runAttemptCount);
            sb.append(", backoffPolicy=");
            sb.append(this.backoffPolicy);
            sb.append(", backoffDelayDuration=");
            sb.append(this.backoffDelayDuration);
            sb.append(", lastEnqueueTime=");
            sb.append(this.lastEnqueueTime);
            sb.append(", periodCount=");
            sb.append(this.periodCount);
            sb.append(", generation=");
            sb.append(this.generation);
            sb.append(", nextScheduleTimeOverride=");
            sb.append(this.nextScheduleTimeOverride);
            sb.append(", stopReason=");
            sb.append(this.stopReason);
            sb.append(", tags=");
            sb.append(this.tags);
            sb.append(", progress=");
            return qg.f(sb, this.progress, ')');
        }

        public final WorkInfo toWorkInfo() {
            Data data = !this.progress.isEmpty() ? this.progress.get(0) : Data.EMPTY;
            UUID uuidFromString = UUID.fromString(this.id);
            uuidFromString.getClass();
            return new WorkInfo(uuidFromString, this.state, new HashSet(this.tags), this.output, data, this.runAttemptCount, this.generation, this.constraints, this.initialDelay, getPeriodicityOrNull(), calculateNextRunTimeMillis(), this.stopReason);
        }

        public WorkInfoPojo(String str, WorkInfo.State state, Data data, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, int i2, int i3, long j6, int i4, List<String> list, List<Data> list2) {
            str.getClass();
            state.getClass();
            data.getClass();
            constraints.getClass();
            backoffPolicy.getClass();
            list.getClass();
            list2.getClass();
            this.id = str;
            this.state = state;
            this.output = data;
            this.initialDelay = j;
            this.intervalDuration = j2;
            this.flexDuration = j3;
            this.constraints = constraints;
            this.runAttemptCount = i;
            this.backoffPolicy = backoffPolicy;
            this.backoffDelayDuration = j4;
            this.lastEnqueueTime = j5;
            this.periodCount = i2;
            this.generation = i3;
            this.nextScheduleTimeOverride = j6;
            this.stopReason = i4;
            this.tags = list;
            this.progress = list2;
        }
    }

    public WorkSpec(String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool) {
        str.getClass();
        state.getClass();
        str2.getClass();
        str3.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
        backoffPolicy.getClass();
        outOfQuotaPolicy.getClass();
        this.id = str;
        this.state = state;
        this.workerClassName = str2;
        this.inputMergerClassName = str3;
        this.input = data;
        this.output = data2;
        this.initialDelay = j;
        this.intervalDuration = j2;
        this.flexDuration = j3;
        this.constraints = constraints;
        this.runAttemptCount = i;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j4;
        this.lastEnqueueTime = j5;
        this.minimumRetentionDuration = j6;
        this.scheduleRequestedAt = j7;
        this.expedited = z;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i2;
        this.generation = i3;
        this.nextScheduleTimeOverride = j8;
        this.nextScheduleTimeOverrideGeneration = i4;
        this.stopReason = i5;
        this.traceTag = str4;
        this.backOffOnSystemInterruptions = bool;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(String str, String str2) {
        this(str, null, str2, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554426, null);
        str.getClass();
        str2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(String str, WorkSpec workSpec) {
        this(str, workSpec.state, workSpec.workerClassName, workSpec.inputMergerClassName, new Data(workSpec.input), new Data(workSpec.output), workSpec.initialDelay, workSpec.intervalDuration, workSpec.flexDuration, new Constraints(workSpec.constraints), workSpec.runAttemptCount, workSpec.backoffPolicy, workSpec.backoffDelayDuration, workSpec.lastEnqueueTime, workSpec.minimumRetentionDuration, workSpec.scheduleRequestedAt, workSpec.expedited, workSpec.outOfQuotaPolicy, workSpec.periodCount, 0, workSpec.nextScheduleTimeOverride, workSpec.nextScheduleTimeOverrideGeneration, workSpec.stopReason, workSpec.traceTag, workSpec.backOffOnSystemInterruptions, 524288, null);
        str.getClass();
        workSpec.getClass();
    }
}
