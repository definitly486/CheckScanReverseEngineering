package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.PersistableBundle;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import ru.rustore.sdk.metrics.MetricsException;
import ru.rustore.sdk.metrics.internal.presentation.SendMetricsEventJobService;

/* JADX INFO: loaded from: classes2.dex */
public final class s1a extends gh4 implements ll3<j59> {
    public final /* synthetic */ x2a f;
    public final /* synthetic */ ya5 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s1a(x2a x2aVar, ya5 ya5Var) {
        super(0);
        this.f = x2aVar;
        this.g = ya5Var;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0082  */
    /* JADX WARN: Code duplicated, block: B:23:0x008d  */
    /* JADX WARN: Code duplicated, block: B:51:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0087 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    @Override // defpackage.ll3
    public final j59 invoke() throws MetricsException.SaveMetricsEventError {
        ComponentName componentName;
        List<JobInfo> allPendingJobs;
        Iterator<T> it;
        int i;
        x2a x2aVar = this.f;
        if (!x2aVar.e) {
            k08 k08Var = new k08(new mv9(x2aVar));
            jo2 jo2VarA = po2.a();
            jo2VarA.getClass();
            d31.r(new f18(k08Var, jo2VarA), new ae1(x2aVar, 1), new o0a(1));
            Context context = x2aVar.c.a;
            Object systemService = context.getSystemService((Class<Object>) JobScheduler.class);
            systemService.getClass();
            JobScheduler jobScheduler = (JobScheduler) systemService;
            List<JobInfo> allPendingJobs2 = jobScheduler.getAllPendingJobs();
            allPendingJobs2.getClass();
            if ((allPendingJobs2 instanceof Collection) && allPendingJobs2.isEmpty()) {
                componentName = new ComponentName(context, (Class<?>) SendMetricsEventJobService.class);
                allPendingJobs = jobScheduler.getAllPendingJobs();
                allPendingJobs.getClass();
                if (allPendingJobs instanceof Collection) {
                    it = allPendingJobs.iterator();
                    i = 0;
                    while (it.hasNext()) {
                        if (!aa4.e(((JobInfo) it.next()).getService(), componentName)) {
                        }
                    }
                } else {
                    it = allPendingJobs.iterator();
                    i = 0;
                    while (it.hasNext()) {
                        if (!aa4.e(((JobInfo) it.next()).getService(), componentName)) {
                        }
                    }
                }
                JobInfo.Builder builder = new JobInfo.Builder(88123556, componentName);
                wt2.a aVar = wt2.c;
                JobInfo.Builder persisted = builder.setPeriodic(wt2.e(yt2.e(Integer.parseInt("1440"), au2.MINUTES))).setPersisted(true);
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putInt("pending_jobs_count", i);
                jobScheduler.schedule(persisted.setExtras(persistableBundle).build());
            } else {
                Iterator<T> it2 = allPendingJobs2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        componentName = new ComponentName(context, (Class<?>) SendMetricsEventJobService.class);
                        allPendingJobs = jobScheduler.getAllPendingJobs();
                        allPendingJobs.getClass();
                        if ((allPendingJobs instanceof Collection) || !allPendingJobs.isEmpty()) {
                            it = allPendingJobs.iterator();
                            i = 0;
                            while (it.hasNext()) {
                                if (!aa4.e(((JobInfo) it.next()).getService(), componentName) && (i = i + 1) < 0) {
                                    u96.n();
                                    throw null;
                                }
                            }
                        } else {
                            i = 0;
                        }
                        JobInfo.Builder builder2 = new JobInfo.Builder(88123556, componentName);
                        wt2.a aVar2 = wt2.c;
                        JobInfo.Builder persisted2 = builder2.setPeriodic(wt2.e(yt2.e(Integer.parseInt("1440"), au2.MINUTES))).setPersisted(true);
                        PersistableBundle persistableBundle2 = new PersistableBundle();
                        persistableBundle2.putInt("pending_jobs_count", i);
                        jobScheduler.schedule(persisted2.setExtras(persistableBundle2).build());
                    } else if (((JobInfo) it2.next()).getId() == 88123556) {
                    }
                }
            }
            x2aVar.e = true;
        }
        ya5 ya5Var = this.g;
        new k1a(ya5Var);
        th5 th5Var = (th5) x2aVar.b.a;
        new jy4(ya5Var, 0);
        String string = UUID.randomUUID().toString();
        string.getClass();
        byte[] bytes = w8a.a(ya5Var).getBytes(ha1.b);
        bytes.getClass();
        ab4 ab4Var = new ab4(string, bytes);
        fh8 fh8Var = ((nz3) th5Var.b).b;
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.UUID, string);
        contentValues.put("metrics_event", bytes);
        try {
            ((SQLiteDatabase) fh8Var.getValue()).beginTransactionNonExclusive();
            long jInsert = ((SQLiteDatabase) fh8Var.getValue()).insert("metrics_event_table", null, contentValues);
            ((SQLiteDatabase) fh8Var.getValue()).setTransactionSuccessful();
            ((SQLiteDatabase) fh8Var.getValue()).endTransaction();
            if (jInsert != -1) {
                new lz3(ab4Var);
                return j59.a;
            }
            StringBuilder sb = new StringBuilder("Saving error ");
            sb.append((Object) ("MetricsEventUuid(value=" + string + ')'));
            String string2 = sb.toString();
            new kz3(string2);
            throw new MetricsException.SaveMetricsEventError(string2, null);
        } catch (Throwable th) {
            try {
                throw new MetricsException.MetricsDbError("Interaction with database failed", th);
            } catch (Throwable th2) {
                ((SQLiteDatabase) fh8Var.getValue()).endTransaction();
                throw th2;
            }
        }
    }
}
