package defpackage;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;

/* JADX INFO: loaded from: classes4.dex */
public final class oxb implements Runnable {
    public final /* synthetic */ boolean b;
    public final /* synthetic */ zzlj c;

    public oxb(zzlj zzljVar, boolean z) {
        this.b = z;
        this.c = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.c;
        zzic zzicVar = zzljVar.a;
        boolean zZzB = zzicVar.zzB();
        boolean zZzA = zzicVar.zzA();
        boolean z = this.b;
        zzicVar.y = Boolean.valueOf(z);
        if (zZzA == z) {
            zzicVar.zzaW().zzk().zzb("Default data collection state already set to", Boolean.valueOf(z));
        }
        if (zzicVar.zzB() == zZzB || zzicVar.zzB() != zzicVar.zzA()) {
            zzicVar.zzaW().zzh().zzc("Default data collection is different than actual status", Boolean.valueOf(z), Boolean.valueOf(zZzB));
        }
        zzljVar.h();
    }
}
