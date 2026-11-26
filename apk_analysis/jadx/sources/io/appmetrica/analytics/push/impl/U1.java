package io.appmetrica.analytics.push.impl;

import android.app.job.JobParameters;
import android.os.Bundle;
import io.appmetrica.analytics.push.internal.service.PushJobService;

/* JADX INFO: loaded from: classes5.dex */
public final class U1 implements Runnable {
    public final /* synthetic */ C a;
    public final /* synthetic */ Bundle b;
    public final /* synthetic */ JobParameters c;
    public final /* synthetic */ PushJobService d;

    public U1(PushJobService pushJobService, C c, Bundle bundle, JobParameters jobParameters) {
        this.d = pushJobService;
        this.a = c;
        this.b = bundle;
        this.c = jobParameters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a(this.d, this.b);
        this.d.jobFinished(this.c, false);
    }
}
