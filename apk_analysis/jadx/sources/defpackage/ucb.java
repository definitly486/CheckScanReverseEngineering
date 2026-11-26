package defpackage;

import android.app.Activity;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzdd;

/* JADX INFO: loaded from: classes4.dex */
public final class ucb extends cbb {
    public final /* synthetic */ Activity f;
    public final /* synthetic */ vcb g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ucb(vcb vcbVar, Activity activity) {
        super(vcbVar.b, true);
        this.f = activity;
        this.g = vcbVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.g.b.h)).onActivityDestroyedByScionActivityInfo(zzdd.zza(this.f), this.c);
    }
}
