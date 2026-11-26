package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class h5b extends cbb {
    public final /* synthetic */ Boolean f;
    public final /* synthetic */ zzez g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h5b(zzez zzezVar, Boolean bool) {
        super(zzezVar, true);
        this.f = bool;
        this.g = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.g.h)).setMeasurementEnabled(this.f.booleanValue(), this.b);
    }
}
