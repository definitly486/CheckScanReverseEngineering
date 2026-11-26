package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;

/* JADX INFO: loaded from: classes4.dex */
public final class i5c implements Runnable {
    public final /* synthetic */ zzbh b;
    public final /* synthetic */ String c;
    public final /* synthetic */ zzcs d;
    public final /* synthetic */ zznl e;

    public i5c(zznl zznlVar, zzbh zzbhVar, String str, zzcs zzcsVar) {
        this.b = zzbhVar;
        this.c = str;
        this.d = zzcsVar;
        this.e = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcs zzcsVar = this.d;
        zznl zznlVar = this.e;
        zzic zzicVar = zznlVar.a;
        byte[] bArrZzk = null;
        try {
            try {
                zzgb zzgbVar = zznlVar.d;
                if (zzgbVar == null) {
                    zzicVar.zzaW().zzb().zza("Discarding data. Failed to send event to service to bundle");
                } else {
                    bArrZzk = zzgbVar.zzk(this.b, this.c);
                    zznlVar.g();
                }
            } catch (RemoteException e) {
                zzicVar.zzaW().zzb().zzb("Failed to send event to the service to bundle", e);
            }
        } finally {
            zzicVar.zzk().zzar(zzcsVar, bArrZzk);
        }
    }
}
