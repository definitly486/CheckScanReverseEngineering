package defpackage;

import com.google.android.gms.internal.measurement.zzao;
import com.google.android.gms.internal.measurement.zzg;

/* JADX INFO: loaded from: classes4.dex */
public final class zwa implements twa {
    public final zzg b;
    public final String c;

    public zwa(zzg zzgVar, String str) {
        this.b = zzgVar;
        this.c = str;
    }

    @Override // defpackage.twa
    public final zzg a(zzao zzaoVar) {
        String str = this.c;
        zzg zzgVar = this.b;
        zzgVar.zzf(str, zzaoVar);
        return zzgVar;
    }
}
