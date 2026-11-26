package io.appmetrica.analytics.push.coreutils.impl;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.utils.ConsumerWithThrowable;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements ConsumerWithThrowable {
    public final /* synthetic */ JobInfo a;
    public final /* synthetic */ Bundle b;

    public b(JobInfo jobInfo, Bundle bundle) {
        this.a = jobInfo;
        this.b = bundle;
    }

    @Override // io.appmetrica.analytics.push.coreutils.internal.utils.ConsumerWithThrowable
    public final void consume(Object obj) {
        int iSchedule = ((JobScheduler) obj).schedule(this.a);
        if (iSchedule != 1) {
            TrackersHub.getInstance().reportEvent("Scheduling job failed", new a(this, iSchedule));
        }
    }
}
