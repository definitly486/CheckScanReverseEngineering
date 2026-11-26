package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzez;

/* JADX INFO: loaded from: classes4.dex */
public final class z8b extends cbb {
    public final /* synthetic */ String f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ zzez h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z8b(zzez zzezVar, String str, Object obj) {
        super(zzezVar, false);
        this.f = str;
        this.g = obj;
        this.h = zzezVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        ((zzcp) Preconditions.checkNotNull(this.h.h)).logHealthData(5, this.f, ObjectWrapper.wrap(this.g), ObjectWrapper.wrap(null), ObjectWrapper.wrap(null));
    }
}
