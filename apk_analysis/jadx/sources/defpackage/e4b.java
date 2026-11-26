package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class e4b extends cbb {
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ Object h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ zzez j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e4b(zzez zzezVar, String str, String str2, Object obj, boolean z) {
        super(zzezVar, true);
        this.f = str;
        this.g = str2;
        this.h = obj;
        this.i = z;
        this.j = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.j.h)).setUserProperty(this.f, this.g, ObjectWrapper.wrap(this.h), this.i, this.b);
    }
}
