package defpackage;

import com.google.android.gms.internal.measurement.zzaad;
import com.google.android.gms.internal.measurement.zzaak;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes4.dex */
public final class xoa {
    public static final zzaad a;

    static {
        zzaad zzaadVar;
        try {
            zzaadVar = zzaak.zza;
        } catch (NoClassDefFoundError unused) {
            zzaadVar = null;
        }
        if (zzaadVar == null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 3; i++) {
                String str = zzaad.a[i];
                try {
                    zzaadVar = (zzaad) Class.forName(str).getConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    th = th;
                    sb.append('\n');
                    sb.append(str);
                    sb.append(": ");
                    if (th instanceof InvocationTargetException) {
                        th = th.getCause();
                    }
                    sb.append(th);
                }
            }
            throw new IllegalStateException(sb.insert(0, "No logging platforms found:").toString());
        }
        a = zzaadVar;
    }
}
