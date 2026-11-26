package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class r4b extends cbb {
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ zzcm h;
    public final /* synthetic */ zzez i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r4b(zzez zzezVar, String str, String str2, zzcm zzcmVar) {
        super(zzezVar, true);
        this.f = str;
        this.g = str2;
        this.h = zzcmVar;
        this.i = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.i.h)).getConditionalUserProperties(this.f, this.g, this.h);
    }

    @Override // defpackage.cbb
    public final void b() {
        this.h.zzb(null);
    }
}
