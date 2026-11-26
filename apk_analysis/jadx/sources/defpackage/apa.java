package defpackage;

import android.os.Build;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzaag;
import com.google.android.gms.internal.measurement.zzzd;
import com.google.android.gms.internal.measurement.zzzf;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class apa extends zzaag {
    public static final boolean c;
    public static final boolean d;
    public static final boolean e;
    public static final AtomicReference f;
    public static final AtomicLong g;
    public static final ConcurrentLinkedQueue h;
    public volatile zzzf b;

    static {
        String str = Build.FINGERPRINT;
        c = str == null || "robolectric".equals(str);
        String str2 = Build.HARDWARE;
        d = "goldfish".equals(str2) || "ranchu".equals(str2);
        String str3 = Build.TYPE;
        e = "eng".equals(str3) || "userdebug".equals(str3);
        f = new AtomicReference();
        g = new AtomicLong();
        h = new ConcurrentLinkedQueue();
    }

    public static void a() {
        while (true) {
            zoa zoaVar = (zoa) h.poll();
            if (zoaVar == null) {
                return;
            }
            g.getAndDecrement();
            apa apaVar = zoaVar.a;
            zzzd zzzdVar = zoaVar.b;
            if (zzzdVar.zzk() || apaVar.zzb(zzzdVar.zze())) {
                apaVar.zzc(zzzdVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final boolean zzb(Level level) {
        return this.b == null || this.b.zzb(level);
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final void zzc(zzzd zzzdVar) {
        if (this.b != null) {
            this.b.zzc(zzzdVar);
            return;
        }
        if (g.incrementAndGet() > 20) {
            h.poll();
            Log.w("ProxyAndroidLoggerBackend", "Too many Flogger logs received before configuration. Dropping old logs.");
        }
        h.offer(new zoa(this, zzzdVar));
        if (this.b != null) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaag, com.google.android.gms.internal.measurement.zzzf
    public final void zzd(RuntimeException runtimeException, zzzd zzzdVar) {
        if (this.b != null) {
            this.b.zzd(runtimeException, zzzdVar);
        } else {
            Log.e("ProxyAndroidLoggerBackend", "Internal logging error before configuration", runtimeException);
        }
    }
}
