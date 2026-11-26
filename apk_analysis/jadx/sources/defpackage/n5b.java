package defpackage;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class n5b extends cbb {
    public final /* synthetic */ int f = 0;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n5b(vcb vcbVar, Activity activity) {
        super(vcbVar.b, true);
        this.g = activity;
        this.h = vcbVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        switch (this.f) {
            case 0:
                ((zzcp) Preconditions.checkNotNull(((zzez) this.h).h)).setConsentThirdParty((Bundle) this.g, this.b);
                break;
            default:
                ((zzcp) Preconditions.checkNotNull(((vcb) this.h).b.h)).onActivityStoppedByScionActivityInfo(zzdd.zza((Activity) this.g), this.c);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n5b(zzez zzezVar, Bundle bundle) {
        super(zzezVar, true);
        this.g = bundle;
        this.h = zzezVar;
    }
}
