package androidx.work.impl.background.systemjob;

import android.app.job.JobScheduler;

/* JADX INFO: loaded from: classes3.dex */
final class JobScheduler34 {
    public static final JobScheduler34 INSTANCE = new JobScheduler34();

    private JobScheduler34() {
    }

    public final JobScheduler forNamespace(JobScheduler jobScheduler) {
        jobScheduler.getClass();
        JobScheduler jobSchedulerForNamespace = jobScheduler.forNamespace(JobSchedulerExtKt.WORKMANAGER_NAMESPACE);
        jobSchedulerForNamespace.getClass();
        return jobSchedulerForNamespace;
    }
}
