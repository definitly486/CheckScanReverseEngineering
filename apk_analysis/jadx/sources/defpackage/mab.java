package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class mab extends cbb {
    public final /* synthetic */ jbb f;
    public final /* synthetic */ zzez g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mab(zzez zzezVar, jbb jbbVar) {
        super(zzezVar, true);
        this.f = jbbVar;
        this.g = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.g.h)).setEventInterceptor(this.f);
    }
}
