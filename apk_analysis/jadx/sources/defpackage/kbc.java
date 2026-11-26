package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzpg;

/* JADX INFO: loaded from: classes4.dex */
public final class kbc implements ubc {
    public final /* synthetic */ zzpg b;

    public kbc(zzpg zzpgVar) {
        this.b = zzpgVar;
    }

    @Override // defpackage.ubc
    public final void zza(String str, String str2, Bundle bundle) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        zzpg zzpgVar = this.b;
        if (!zIsEmpty) {
            zzpgVar.zzaX().zzj(new jbc(this, str, str2, bundle));
            return;
        }
        zzic zzicVar = zzpgVar.l;
        if (zzicVar != null) {
            zzicVar.zzaW().zzb().zzb("AppId not known when logging event", str2);
        }
    }
}
