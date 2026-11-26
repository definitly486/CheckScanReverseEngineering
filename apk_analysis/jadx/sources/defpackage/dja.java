package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.signin.internal.zak;

/* JADX INFO: loaded from: classes4.dex */
public final class dja extends pja {
    public final /* synthetic */ zaar b;
    public final /* synthetic */ zak c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dja(eja ejaVar, zaar zaarVar, zaar zaarVar2, zak zakVar) {
        super(zaarVar);
        this.b = zaarVar2;
        this.c = zakVar;
    }

    @Override // defpackage.pja
    public final void a() {
        zaar zaarVar = this.b;
        if (zaarVar.g(0)) {
            zak zakVar = this.c;
            ConnectionResult connectionResultZaa = zakVar.zaa();
            if (!connectionResultZaa.isSuccess()) {
                if (!zaarVar.l || connectionResultZaa.hasResolution()) {
                    zaarVar.e(connectionResultZaa);
                    return;
                } else {
                    zaarVar.d();
                    zaarVar.a();
                    return;
                }
            }
            zaaa zaaaVar = (zaaa) Preconditions.checkNotNull(zakVar.zab());
            ConnectionResult connectionResultZab = zaaaVar.zab();
            if (!connectionResultZab.isSuccess()) {
                String strValueOf = String.valueOf(connectionResultZab);
                Log.wtf("GACConnecting", "Sign-in succeeded with resolve account failure: ".concat(strValueOf), new Exception());
                zaarVar.e(connectionResultZab);
                return;
            }
            zaarVar.n = true;
            zaarVar.o = (IAccountAccessor) Preconditions.checkNotNull(zaaaVar.zaa());
            zaarVar.p = zaaaVar.zac();
            zaarVar.q = zaaaVar.zad();
            zaarVar.a();
        }
    }
}
