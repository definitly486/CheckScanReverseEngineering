package defpackage;

import com.google.android.gms.internal.measurement.zzlk;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzph;

/* JADX INFO: loaded from: classes4.dex */
public final class se9 implements ep2, zzph {
    public volatile Object b;
    public Object c;

    @Override // defpackage.ep2
    public mk2 a() {
        return (nk2) this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public zzpg zza(zzlk zzlkVar, String str) {
        cac cacVar = (cac) this.b;
        cac cacVar2 = zzpg.i;
        if (cacVar != cacVar2) {
            this.c = zzpg.zzd().zzc(zzlkVar, cacVar, "").a;
            this.b = cacVar2;
        }
        return (zzpg) this.c;
    }
}
