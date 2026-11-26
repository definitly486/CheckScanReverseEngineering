package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class orb implements Runnable {
    public final /* synthetic */ zzah b;
    public final /* synthetic */ zzjd c;

    public orb(zzjd zzjdVar, zzah zzahVar) {
        this.b = zzahVar;
        this.c = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.c.a;
        zzpgVar.Q();
        zzah zzahVar = this.b;
        if (zzahVar.zzc.zza() == null) {
            zzpgVar.getClass();
            zzr zzrVarK = zzpgVar.K((String) Preconditions.checkNotNull(zzahVar.zza));
            if (zzrVarK != null) {
                zzpgVar.V(zzahVar, zzrVarK);
                return;
            }
            return;
        }
        zzpgVar.getClass();
        zzr zzrVarK2 = zzpgVar.K((String) Preconditions.checkNotNull(zzahVar.zza));
        if (zzrVarK2 != null) {
            zzpgVar.U(zzahVar, zzrVarK2);
        }
    }
}
