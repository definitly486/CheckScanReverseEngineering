package defpackage;

import com.google.android.gms.internal.measurement.zzao;
import com.google.android.gms.internal.measurement.zzg;

/* JADX INFO: loaded from: classes4.dex */
public final class owa implements twa {
    public final zzg b;
    public final String c;

    public owa(zzg zzgVar, String str) {
        this.b = zzgVar;
        this.c = str;
    }

    @Override // defpackage.twa
    public final zzg a(zzao zzaoVar) {
        zzg zzgVarZzc = this.b.zzc();
        zzgVarZzc.zzf(this.c, zzaoVar);
        return zzgVarZzc;
    }
}
