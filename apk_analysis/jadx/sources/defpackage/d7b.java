package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class d7b extends cbb {
    public final /* synthetic */ Runnable f;
    public final /* synthetic */ zzez g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d7b(zzez zzezVar, Runnable runnable) {
        super(zzezVar, true);
        this.f = runnable;
        this.g = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.g.h)).retrieveAndUploadBatches(new y6b(this, this.f));
    }
}
