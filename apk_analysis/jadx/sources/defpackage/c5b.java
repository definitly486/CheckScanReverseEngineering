package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class c5b extends cbb {
    public final /* synthetic */ zzdd f;
    public final /* synthetic */ String g;
    public final /* synthetic */ String h;
    public final /* synthetic */ zzez i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c5b(zzez zzezVar, zzdd zzddVar, String str, String str2) {
        super(zzezVar, true);
        this.f = zzddVar;
        this.g = str;
        this.h = str2;
        this.i = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.i.h)).setCurrentScreenByScionActivityInfo(this.f, this.g, this.h, this.b);
    }
}
