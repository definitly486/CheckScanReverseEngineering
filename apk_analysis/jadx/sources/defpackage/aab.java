package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class aab extends cbb {
    public final /* synthetic */ zzcm f;
    public final /* synthetic */ int g;
    public final /* synthetic */ zzez h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aab(zzez zzezVar, zzcm zzcmVar, int i) {
        super(zzezVar, true);
        this.f = zzcmVar;
        this.g = i;
        this.h = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.h.h)).getTestFlag(this.f, this.g);
    }

    @Override // defpackage.cbb
    public final void b() {
        this.f.zzb(null);
    }
}
