package defpackage;

import android.app.Activity;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzdd;

/* JADX INFO: loaded from: classes4.dex */
public final class mcb extends cbb {
    public final /* synthetic */ Activity f;
    public final /* synthetic */ zzcm g;
    public final /* synthetic */ vcb h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mcb(vcb vcbVar, Activity activity, zzcm zzcmVar) {
        super(vcbVar.b, true);
        this.f = activity;
        this.g = zzcmVar;
        this.h = vcbVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.h.b.h)).onActivitySaveInstanceStateByScionActivityInfo(zzdd.zza(this.f), this.g, this.c);
    }
}
