package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zac implements Callable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ zzpg c;

    public zac(zzpg zzpgVar, zzr zzrVar) {
        this.b = zzrVar;
        Objects.requireNonNull(zzpgVar);
        this.c = zzpgVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzr zzrVar = this.b;
        String str = (String) Preconditions.checkNotNull(zzrVar.zza);
        zzpg zzpgVar = this.c;
        zzjl zzjlVarA = zzpgVar.a(str);
        zzjk zzjkVar = zzjk.ANALYTICS_STORAGE;
        if (zzjlVarA.zzo(zzjkVar) && zzjl.zzf(zzrVar.zzs, 100).zzo(zzjkVar)) {
            return zzpgVar.X(zzrVar).n();
        }
        zzpgVar.zzaW().zzk().zza("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
