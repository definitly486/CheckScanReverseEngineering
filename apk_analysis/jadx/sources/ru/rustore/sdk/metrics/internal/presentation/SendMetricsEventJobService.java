package ru.rustore.sdk.metrics.internal.presentation;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import defpackage.d18;
import defpackage.d31;
import defpackage.f18;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jo2;
import defpackage.k08;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.po2;
import defpackage.ql9;
import defpackage.vz7;

/* JADX INFO: loaded from: classes2.dex */
public final class SendMetricsEventJobService extends JobService {
    public final fh8 b = new fh8(new a());
    public d18 c;
    public volatile boolean d;

    public static final class a extends gh4 implements ll3<ql9> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final ql9 invoke() {
            return ql9.c.a(SendMetricsEventJobService.this);
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            ((ql9) SendMetricsEventJobService.this.b.getValue()).a.a();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public final /* synthetic */ JobParameters g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(JobParameters jobParameters) {
            super(0);
            this.g = jobParameters;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            SendMetricsEventJobService sendMetricsEventJobService = SendMetricsEventJobService.this;
            JobParameters jobParameters = this.g;
            if (!sendMetricsEventJobService.d) {
                sendMetricsEventJobService.jobFinished(jobParameters, false);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ JobParameters g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(JobParameters jobParameters) {
            super(1);
            this.g = jobParameters;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            SendMetricsEventJobService sendMetricsEventJobService = SendMetricsEventJobService.this;
            JobParameters jobParameters = this.g;
            if (!sendMetricsEventJobService.d) {
                sendMetricsEventJobService.jobFinished(jobParameters, false);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<j59, j59> {
        public final /* synthetic */ JobParameters g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(JobParameters jobParameters) {
            super(1);
            this.g = jobParameters;
        }

        @Override // defpackage.nl3
        public final j59 invoke(j59 j59Var) {
            j59Var.getClass();
            SendMetricsEventJobService sendMetricsEventJobService = SendMetricsEventJobService.this;
            JobParameters jobParameters = this.g;
            if (!sendMetricsEventJobService.d) {
                sendMetricsEventJobService.jobFinished(jobParameters, false);
            }
            return j59.a;
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        jobParameters.getClass();
        k08 k08Var = new k08(new b());
        jo2 jo2VarA = po2.a();
        jo2VarA.getClass();
        this.c = d31.r(new vz7(new f18(k08Var, jo2VarA), new c(jobParameters)), new d(jobParameters), new e(jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        this.d = true;
        d18 d18Var = this.c;
        if (d18Var != null) {
            d18Var.dispose();
        }
        if (Build.VERSION.SDK_INT >= 31 && jobParameters != null) {
            int stopReason = jobParameters.getStopReason();
            Integer numValueOf = Integer.valueOf(stopReason);
            if (stopReason != 3) {
                numValueOf = null;
            }
            if (numValueOf != null) {
                jobParameters.getExtras().getInt("pending_jobs_count");
            }
        }
        return true;
    }
}
