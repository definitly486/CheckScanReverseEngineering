package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class j9b extends cbb {
    public final /* synthetic */ Bundle f;
    public final /* synthetic */ zzcm g;
    public final /* synthetic */ zzez h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j9b(zzez zzezVar, Bundle bundle, zzcm zzcmVar) {
        super(zzezVar, true);
        this.f = bundle;
        this.g = zzcmVar;
        this.h = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.h.h)).performAction(this.f, this.g, this.b);
    }

    @Override // defpackage.cbb
    public final void b() {
        this.g.zzb(null);
    }
}
