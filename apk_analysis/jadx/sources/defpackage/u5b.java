package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class u5b extends cbb {
    public final /* synthetic */ zzez f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u5b(zzez zzezVar) {
        super(zzezVar, true);
        this.f = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        zzez zzezVar = this.f;
        long j = zzezVar.i;
        zzcp zzcpVar = zzezVar.h;
        if (j >= 170) {
            ((zzcp) Preconditions.checkNotNull(zzcpVar)).resetAnalyticsDataWithElapsedTime(this.b, this.c);
        } else {
            ((zzcp) Preconditions.checkNotNull(zzcpVar)).resetAnalyticsData(this.b);
        }
    }
}
