package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.tapjoy.TJAdUnitConstants;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Set;
import java.util.zip.Adler32;

/* JADX INFO: loaded from: classes.dex */
public final class ob4 implements pk9 {
    public final Context a;
    public final f13 b;
    public final je7 c;

    public ob4(Context context, f13 f13Var, je7 je7Var) {
        this.a = context;
        this.b = f13Var;
        this.c = je7Var;
    }

    @Override // defpackage.pk9
    public final void a(s29 s29Var, int i) {
        b(s29Var, i, false);
    }

    @Override // defpackage.pk9
    public final void b(s29 s29Var, int i, boolean z) {
        Context context = this.a;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(s29Var.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(kg6.a(s29Var.d())).array());
        if (s29Var.c() != null) {
            adler32.update(s29Var.c());
        }
        int value = (int) adler32.getValue();
        if (!z) {
            for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
                int i2 = jobInfo.getExtras().getInt("attemptNumber");
                if (jobInfo.getId() == value) {
                    if (i2 < i) {
                        break;
                    }
                    hv4.a(s29Var, "JobInfoScheduler", "Upload for context %s is already scheduled. Returning...");
                    return;
                }
            }
        }
        long jD = this.b.D(s29Var);
        JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
        ig6 ig6VarD = s29Var.d();
        je7 je7Var = this.c;
        builder.setMinimumLatency(je7Var.b(ig6VarD, jD, i));
        Set<je7.b> setB = je7Var.c().get(ig6VarD).b();
        if (setB.contains(je7.b.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (setB.contains(je7.b.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (setB.contains(je7.b.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", s29Var.b());
        persistableBundle.putInt("priority", kg6.a(s29Var.d()));
        if (s29Var.c() != null) {
            persistableBundle.putString(TJAdUnitConstants.String.EXTRAS, Base64.encodeToString(s29Var.c(), 0));
        }
        builder.setExtras(persistableBundle);
        Object[] objArr = {s29Var, Integer.valueOf(value), Long.valueOf(je7Var.b(s29Var.d(), jD, i)), Long.valueOf(jD), Integer.valueOf(i)};
        String strConcat = "TRuntime.".concat("JobInfoScheduler");
        if (Log.isLoggable(strConcat, 3)) {
            Log.d(strConcat, String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr));
        }
        jobScheduler.schedule(builder.build());
    }
}
