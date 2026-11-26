package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class m4b extends cbb {
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ Bundle h;
    public final /* synthetic */ zzez i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m4b(zzez zzezVar, String str, String str2, Bundle bundle) {
        super(zzezVar, true);
        this.f = str;
        this.g = str2;
        this.h = bundle;
        this.i = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.i.h)).clearConditionalUserProperty(this.f, this.g, this.h);
    }
}
