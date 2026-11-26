package yads;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import defpackage.dea;
import defpackage.fh8;
import defpackage.jp7;
import defpackage.nl3;
import defpackage.z98;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.TimeUnit;
import yads.uh;

/* JADX INFO: loaded from: classes6.dex */
public final class uh {
    public final Context a;
    public final defpackage.cl4 b = new fh8(new defpackage.z12(this, 5));

    public uh(Context context) {
        this.a = context;
    }

    public static final ff a(uh uhVar, ApplicationExitInfo applicationExitInfo) {
        uhVar.getClass();
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream == null) {
                return null;
            }
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(traceInputStream));
                try {
                    String strB = z98.b(bufferedReader);
                    bufferedReader.close();
                    traceInputStream.close();
                    long timestamp = applicationExitInfo.getTimestamp();
                    String description = applicationExitInfo.getDescription();
                    if (description == null) {
                        description = "ANR";
                    }
                    int importance = applicationExitInfo.getImportance();
                    int pid = applicationExitInfo.getPid();
                    long pss = applicationExitInfo.getPss();
                    long rss = applicationExitInfo.getRss();
                    String processName = applicationExitInfo.getProcessName();
                    applicationExitInfo.getReason();
                    return new ff(timestamp, description, strB, importance, pid, pss, rss, processName, applicationExitInfo.getStatus(), applicationExitInfo.getRealUid());
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        defpackage.m96.c(bufferedReader, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    defpackage.m96.c(traceInputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final boolean b(long j, ApplicationExitInfo applicationExitInfo) {
        return applicationExitInfo.getTimestamp() > j;
    }

    public static final ActivityManager a(uh uhVar) {
        try {
            Object systemService = uhVar.a.getSystemService("activity");
            if (systemService instanceof ActivityManager) {
                return (ActivityManager) systemService;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final boolean a(ApplicationExitInfo applicationExitInfo) {
        return applicationExitInfo.getReason() == 6;
    }

    public static final boolean a(long j, ApplicationExitInfo applicationExitInfo) {
        return applicationExitInfo.getTimestamp() > j;
    }

    public final List a(int i, int i2, final long j) {
        ActivityManager activityManager = (ActivityManager) this.b.getValue();
        List<ApplicationExitInfo> historicalProcessExitReasons = defpackage.kx2.b;
        if (activityManager == null) {
            return historicalProcessExitReasons;
        }
        try {
            historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(this.a.getPackageName(), 0, i);
        } catch (Throwable unused) {
        }
        final long jCurrentTimeMillis = System.currentTimeMillis() - TimeUnit.DAYS.toMillis(i2);
        return jp7.q(jp7.o(jp7.k(jp7.k(jp7.k(defpackage.qn1.K(historicalProcessExitReasons), new dea()), new nl3() { // from class: eea
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(uh.a(jCurrentTimeMillis, (ApplicationExitInfo) obj));
            }
        }), new nl3() { // from class: fea
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(uh.b(j, (ApplicationExitInfo) obj));
            }
        }), new nl3() { // from class: gea
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return uh.a(this.b, (ApplicationExitInfo) obj);
            }
        }));
    }
}
