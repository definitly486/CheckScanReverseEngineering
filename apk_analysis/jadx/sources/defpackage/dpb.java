package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzhz;

/* JADX INFO: loaded from: classes4.dex */
public final class dpb implements Thread.UncaughtExceptionHandler {
    public final String b;
    public final /* synthetic */ zzhz c;

    public dpb(zzhz zzhzVar, String str) {
        this.c = zzhzVar;
        Preconditions.checkNotNull(str);
        this.b = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.c.a.zzaW().zzb().zzb(this.b, th);
    }
}
