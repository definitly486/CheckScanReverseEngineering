package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzin;
import com.google.android.gms.measurement.internal.zzal;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzou;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class brb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ brb(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj2;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzgl zzglVarJ;
        switch (this.b) {
            case 0:
                zzpg zzpgVar = ((zzjd) this.d).a;
                zzpgVar.Q();
                zzr zzrVar = (zzr) this.c;
                zzpgVar.zzaX().zzg();
                zzpgVar.Z();
                Preconditions.checkNotNull(zzrVar);
                String str = zzrVar.zza;
                Preconditions.checkNotEmpty(str);
                int i = 0;
                if (zzpgVar.zzd().zzp(null, zzfy.zzay)) {
                    long jCurrentTimeMillis = zzpgVar.zzba().currentTimeMillis();
                    int iZzm = zzpgVar.zzd().zzm(null, zzfy.zzah);
                    zzpgVar.zzd();
                    long jZzF = jCurrentTimeMillis - zzal.zzF();
                    while (i < iZzm && zzpgVar.C(jZzF, null)) {
                        i++;
                    }
                } else {
                    zzpgVar.zzd();
                    long jZzH = zzal.zzH();
                    while (i < jZzH && zzpgVar.C(0L, str)) {
                        i++;
                    }
                }
                if (zzpgVar.zzd().zzp(null, zzfy.zzaz)) {
                    zzpgVar.zzaX().zzg();
                    zzpgVar.B();
                }
                zzou zzouVar = zzpgVar.j;
                zzin zzinVarZzb = zzin.zzb(zzrVar.zzE);
                zzouVar.zzg();
                if (zzinVarZzb != zzin.CLIENT_UPLOAD_ELIGIBLE || zzou.b(str) || (zzglVarJ = zzouVar.b.zzh().j(str)) == null || !zzglVarJ.zzp() || zzglVarJ.zzq().zzd().isEmpty()) {
                    return;
                }
                zzpgVar.zzaW().zzk().zzb("[sgtm] Going background, trigger client side upload. appId", str);
                zzpgVar.m(zzpgVar.zzba().currentTimeMillis(), str);
                return;
            default:
                AtomicReference atomicReference = (AtomicReference) this.c;
                synchronized (atomicReference) {
                    try {
                        try {
                            zzlj zzljVar = (zzlj) this.d;
                            atomicReference.set(Long.valueOf(zzljVar.a.zzc().zzl(zzljVar.a.zzv().zzj(), zzfy.zzac)));
                            ((AtomicReference) this.c).notify();
                        } catch (Throwable th) {
                            ((AtomicReference) this.c).notify();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
        }
    }
}
