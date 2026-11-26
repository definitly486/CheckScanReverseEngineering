package defpackage;

import com.google.android.gms.internal.play_billing.zzo;
import com.google.android.gms.internal.play_billing.zzp;

/* JADX INFO: loaded from: classes4.dex */
public final class pdc extends zzo {
    public final /* synthetic */ zdc i;

    public pdc(zdc zdcVar) {
        this.i = zdcVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzo
    public final String a() {
        zzp zzpVar = (zzp) this.i.b.get();
        return zzpVar == null ? "Completer object has been garbage collected, future will fail soon" : me0.c("tag=[", String.valueOf(zzpVar.a), "]");
    }
}
