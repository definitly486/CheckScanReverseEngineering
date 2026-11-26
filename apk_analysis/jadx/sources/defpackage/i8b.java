package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class i8b extends cbb {
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ zzcm i;
    public final /* synthetic */ zzez j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i8b(zzez zzezVar, String str, String str2, boolean z, zzcm zzcmVar) {
        super(zzezVar, true);
        this.f = str;
        this.g = str2;
        this.h = z;
        this.i = zzcmVar;
        this.j = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.j.h)).getUserProperties(this.f, this.g, this.h, this.i);
    }

    @Override // defpackage.cbb
    public final void b() {
        this.i.zzb(null);
    }
}
