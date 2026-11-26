package defpackage;

import com.google.android.gms.internal.measurement.zzxp;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s3c implements Runnable {
    public final /* synthetic */ Level b;
    public final /* synthetic */ Throwable c;
    public final /* synthetic */ String d;
    public final /* synthetic */ Object[] e;

    public /* synthetic */ s3c(Level level, Throwable th, String str, Object[] objArr) {
        this.b = level;
        this.c = th;
        this.d = str;
        this.e = objArr;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        ((zzxp) ((zzxp) o3c.a.zze(this.b).zzo(this.c)).zzn("com/google/android/libraries/phenotype/client/Phlogger", "logInternal", 44, "Phlogger.java")).zzp(this.d, this.e);
    }
}
