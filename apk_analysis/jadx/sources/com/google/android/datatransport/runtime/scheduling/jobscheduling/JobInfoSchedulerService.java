package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.tapjoy.TJAdUnitConstants;
import defpackage.d39;
import defpackage.hz;
import defpackage.kg6;
import defpackage.q89;
import defpackage.r89;
import defpackage.s29;
import defpackage.wt;

/* JADX INFO: loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {
    public static final /* synthetic */ int b = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString(TJAdUnitConstants.String.EXTRAS);
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        d39.b(getApplicationContext());
        hz.a aVarA = s29.a();
        aVarA.b(string);
        aVarA.c = kg6.b(i);
        if (string2 != null) {
            aVarA.b = Base64.decode(string2, 0);
        }
        r89 r89Var = d39.a().d;
        r89Var.e.execute(new q89(r89Var, aVarA.a(), i2, new wt(1, this, jobParameters)));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
