package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzpl;
import com.google.android.gms.measurement.internal.zzr;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class j4c implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ zzr d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ zzcs f;
    public final /* synthetic */ zznl g;

    public j4c(zznl zznlVar, String str, String str2, zzr zzrVar, boolean z, zzcs zzcsVar) {
        this.b = str;
        this.c = str2;
        this.d = zzrVar;
        this.e = z;
        this.f = zzcsVar;
        this.g = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String str = this.b;
        zzcs zzcsVar = this.f;
        zznl zznlVar = this.g;
        zzic zzicVar = zznlVar.a;
        Bundle bundle = new Bundle();
        try {
            try {
                zzgb zzgbVar = zznlVar.d;
                String str2 = this.c;
                if (zzgbVar == null) {
                    zzicVar.zzaW().zzb().zzc("Failed to get user properties; not connected to service", str, str2);
                    zzicVar.zzk().zzat(zzcsVar, bundle);
                    return;
                }
                zzr zzrVar = this.d;
                Preconditions.checkNotNull(zzrVar);
                List<zzpl> listZzp = zzgbVar.zzp(str, str2, this.e, zzrVar);
                Bundle bundle2 = new Bundle();
                if (listZzp != null) {
                    for (zzpl zzplVar : listZzp) {
                        String str3 = zzplVar.zze;
                        if (str3 != null) {
                            bundle2.putString(zzplVar.zzb, str3);
                        } else {
                            Long l = zzplVar.zzd;
                            if (l != null) {
                                bundle2.putLong(zzplVar.zzb, l.longValue());
                            } else {
                                Double d = zzplVar.zzg;
                                if (d != null) {
                                    bundle2.putDouble(zzplVar.zzb, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    zznlVar.g();
                    zzicVar.zzk().zzat(zzcsVar, bundle2);
                } catch (RemoteException e) {
                    e = e;
                    bundle = bundle2;
                    zzicVar.zzaW().zzb().zzc("Failed to get user properties; remote exception", str, e);
                    zzicVar.zzk().zzat(zzcsVar, bundle);
                } catch (Throwable th) {
                    th = th;
                    bundle = bundle2;
                    zzicVar.zzk().zzat(zzcsVar, bundle);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (RemoteException e2) {
            e = e2;
        }
    }
}
