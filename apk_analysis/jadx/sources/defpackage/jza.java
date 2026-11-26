package defpackage;

import com.google.android.gms.measurement.internal.zzd;

/* JADX INFO: loaded from: classes4.dex */
public final class jza implements Runnable {
    public final /* synthetic */ long b;
    public final /* synthetic */ zzd c;

    public jza(zzd zzdVar, long j) {
        this.b = j;
        this.c = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.c(this.b);
    }
}
