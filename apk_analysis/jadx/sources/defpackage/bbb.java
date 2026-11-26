package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class bbb extends cbb {
    public final /* synthetic */ Long f;
    public final /* synthetic */ Long g;
    public final /* synthetic */ String h;
    public final /* synthetic */ String i;
    public final /* synthetic */ Bundle j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ zzez m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bbb(zzez zzezVar, Long l, Long l2, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(zzezVar, true);
        this.f = l;
        this.g = l2;
        this.h = str;
        this.i = str2;
        this.j = bundle;
        this.k = z;
        this.l = z2;
        this.m = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        Long l = this.f;
        ((zzcp) Preconditions.checkNotNull(this.m.h)).logEventWithElapsedTime(this.h, this.i, this.j, this.k, this.l, l == null ? this.b : l.longValue(), this.g == null ? this.c : 0L);
    }
}
