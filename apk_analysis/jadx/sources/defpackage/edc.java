package defpackage;

import android.os.StrictMode;
import com.google.android.gms.internal.measurement.zzrh;
import com.google.android.gms.internal.measurement.zzrl;
import java.util.Iterator;
import java.util.ServiceLoader;

/* JADX INFO: loaded from: classes4.dex */
public final class edc {
    public static final zzrl a;

    static {
        zzrl zzrhVar;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Iterator it = ServiceLoader.load(zzrl.class, zzrl.class.getClassLoader()).iterator();
            if (it.hasNext()) {
                zzrhVar = (zzrl) it.next();
                o8.s(!it.hasNext(), "Expected at most one FlagsService");
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            } else {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                zzrhVar = new zzrh();
            }
            a = zzrhVar;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            throw th;
        }
    }
}
