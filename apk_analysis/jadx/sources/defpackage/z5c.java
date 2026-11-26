package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzpp;
import com.google.android.gms.measurement.internal.zzr;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class z5c implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ zzr d;
    public final /* synthetic */ zzcs e;
    public final /* synthetic */ zznl f;

    public z5c(zznl zznlVar, String str, String str2, zzr zzrVar, zzcs zzcsVar) {
        this.b = str;
        this.c = str2;
        this.d = zzrVar;
        this.e = zzcsVar;
        this.f = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcs zzcsVar = this.e;
        String str = this.c;
        String str2 = this.b;
        zznl zznlVar = this.f;
        zzic zzicVar = zznlVar.a;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                zzgb zzgbVar = zznlVar.d;
                if (zzgbVar == null) {
                    zzicVar.zzaW().zzb().zzc("Failed to get conditional properties; not connected to service", str2, str);
                } else {
                    zzr zzrVar = this.d;
                    Preconditions.checkNotNull(zzrVar);
                    arrayList = zzpp.zzav(zzgbVar.zzr(str2, str, zzrVar));
                    zznlVar.g();
                }
            } catch (RemoteException e) {
                zzicVar.zzaW().zzb().zzd("Failed to get conditional properties; remote exception", str2, str, e);
            }
        } finally {
            zzicVar.zzk().zzau(zzcsVar, arrayList);
        }
    }
}
