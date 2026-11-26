package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zaba;

/* JADX INFO: loaded from: classes4.dex */
public final class zia extends pja {
    public final /* synthetic */ ConnectionResult b;
    public final /* synthetic */ bja c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zia(bja bjaVar, zaba zabaVar, ConnectionResult connectionResult) {
        super(zabaVar);
        this.b = connectionResult;
        this.c = bjaVar;
    }

    @Override // defpackage.pja
    public final void a() {
        this.c.e.e(this.b);
    }
}
