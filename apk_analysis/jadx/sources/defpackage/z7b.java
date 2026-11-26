package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class z7b extends cbb {
    public final /* synthetic */ zzcm f;
    public final /* synthetic */ zzez g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z7b(zzez zzezVar, zzcm zzcmVar) {
        super(zzezVar, true);
        this.f = zzcmVar;
        this.g = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.g.h)).getCurrentScreenName(this.f);
    }

    @Override // defpackage.cbb
    public final void b() {
        this.f.zzb(null);
    }
}
