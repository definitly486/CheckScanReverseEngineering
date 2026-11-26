package defpackage;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailability;

/* JADX INFO: loaded from: classes5.dex */
public final class gi implements hm2 {
    public final Context a;
    public final ee b;

    public gi(Context context, ee eeVar) {
        this.a = context;
        this.b = eeVar;
    }

    @Override // defpackage.hm2
    public final p08 getDeviceInfo() {
        return new p08(mz7.j(new oz7(new cc(this)), new oz7(new be(this.b)), new ci(ei.f)).f(ne7.c), new di(new fi(GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.a) == 0), 0));
    }
}
