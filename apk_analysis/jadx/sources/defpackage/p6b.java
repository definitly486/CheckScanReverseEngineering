package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class p6b extends cbb {
    public final /* synthetic */ String f;
    public final /* synthetic */ zzez g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p6b(zzez zzezVar, String str) {
        super(zzezVar, true);
        this.f = str;
        this.g = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.g.h)).beginAdUnitExposure(this.f, this.c);
    }
}
