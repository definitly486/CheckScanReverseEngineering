package ru.rustore.sdk.install.referrer.internal.presentation;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import defpackage.d18;
import defpackage.d31;
import defpackage.f18;
import defpackage.fh8;
import defpackage.fm9;
import defpackage.g08;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jo2;
import defpackage.k08;
import defpackage.k4a;
import defpackage.ll3;
import defpackage.lz7;
import defpackage.nl3;
import defpackage.ow9;
import defpackage.po2;
import defpackage.qda;
import defpackage.uz4;
import defpackage.vz7;
import defpackage.wl9;
import defpackage.xb9;
import defpackage.xm9;

/* JADX INFO: loaded from: classes.dex */
public final class FsaEventSenderJobService extends JobService {
    public final fh8 b = new fh8(new h());
    public final fh8 c = new fh8(new g());
    public final fh8 d = new fh8(new a());
    public d18 e;
    public volatile boolean f;

    public static final class a extends gh4 implements ll3<ow9> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final ow9 invoke() {
            return (ow9) ((xm9) FsaEventSenderJobService.this.b.getValue()).c.getValue();
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final j59 invoke() throws InterruptedException {
            qda.a.acquire();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<j59, lz7<k4a>> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final lz7<k4a> invoke(j59 j59Var) {
            j59Var.getClass();
            fm9 fm9Var = (fm9) FsaEventSenderJobService.this.c.getValue();
            fm9Var.getClass();
            return new g08(new k08(new xb9(fm9Var)), new wl9(fm9Var));
        }
    }

    public static final class d extends gh4 implements ll3<j59> {
        public static final d f = new d(0);

        @Override // defpackage.ll3
        public final j59 invoke() {
            qda.a.release();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ JobParameters g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(JobParameters jobParameters) {
            super(1);
            this.g = jobParameters;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            Throwable th2 = th;
            th2.getClass();
            qda.a.release();
            FsaEventSenderJobService fsaEventSenderJobService = FsaEventSenderJobService.this;
            ow9 ow9Var = (ow9) fsaEventSenderJobService.d.getValue();
            ow9Var.getClass();
            uz4 uz4Var = new uz4();
            uz4Var.put("error_code", String.valueOf(th2.getMessage()));
            ow9Var.b(uz4Var);
            j59 j59Var = j59.a;
            ow9Var.c("SDKInstallReferrerSendError", uz4Var.b());
            JobParameters jobParameters = this.g;
            if (!fsaEventSenderJobService.f) {
                fsaEventSenderJobService.jobFinished(jobParameters, true);
            }
            return j59Var;
        }
    }

    public static final class f extends gh4 implements nl3<k4a, j59> {
        public final /* synthetic */ JobParameters g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(JobParameters jobParameters) {
            super(1);
            this.g = jobParameters;
        }

        @Override // defpackage.nl3
        public final j59 invoke(k4a k4aVar) {
            k4a k4aVar2 = k4aVar;
            k4aVar2.getClass();
            qda.a.release();
            FsaEventSenderJobService fsaEventSenderJobService = FsaEventSenderJobService.this;
            ow9 ow9Var = (ow9) fsaEventSenderJobService.d.getValue();
            ow9Var.getClass();
            uz4 uz4Var = new uz4();
            uz4Var.put("phone", k4aVar2.a);
            ow9Var.b(uz4Var);
            j59 j59Var = j59.a;
            ow9Var.c("SDKInstallReferrerPhoneSendToFSA", uz4Var.b());
            JobParameters jobParameters = this.g;
            if (!fsaEventSenderJobService.f) {
                fsaEventSenderJobService.jobFinished(jobParameters, false);
            }
            return j59Var;
        }
    }

    public static final class g extends gh4 implements ll3<fm9> {
        public g() {
            super(0);
        }

        @Override // defpackage.ll3
        public final fm9 invoke() {
            return (fm9) ((xm9) FsaEventSenderJobService.this.b.getValue()).d.getValue();
        }
    }

    public static final class h extends gh4 implements ll3<xm9> {
        public h() {
            super(0);
        }

        @Override // defpackage.ll3
        public final xm9 invoke() {
            new xm9.h();
            Context applicationContext = FsaEventSenderJobService.this.getApplicationContext();
            applicationContext.getClass();
            return xm9.h.a(applicationContext);
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        jobParameters.getClass();
        b bVar = b.f;
        bVar.getClass();
        g08 g08Var = new g08(new k08(bVar), new c());
        jo2 jo2VarA = po2.a();
        jo2VarA.getClass();
        f18 f18Var = new f18(g08Var, jo2VarA);
        d dVar = d.f;
        dVar.getClass();
        this.e = d31.r(new vz7(f18Var, dVar), new e(jobParameters), new f(jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        this.f = true;
        d18 d18Var = this.e;
        if (d18Var != null) {
            d18Var.dispose();
        }
        return true;
    }
}
