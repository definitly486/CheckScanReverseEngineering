package defpackage;

import com.google.android.gms.measurement.internal.zzhe;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;

/* JADX INFO: loaded from: classes4.dex */
public final class iyb implements Runnable {
    public final /* synthetic */ long b;
    public final /* synthetic */ zzlj c;

    public iyb(zzlj zzljVar, long j) {
        this.b = j;
        this.c = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzic zzicVar = this.c.a;
        zzhe zzheVar = zzicVar.zzd().k;
        long j = this.b;
        zzheVar.zzb(j);
        zzicVar.zzaW().zzj().zzb("Session timeout duration set", Long.valueOf(j));
    }
}
