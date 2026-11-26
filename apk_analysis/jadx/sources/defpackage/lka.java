package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zacl;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.signin.internal.zak;

/* JADX INFO: loaded from: classes4.dex */
public final class lka implements Runnable {
    public final /* synthetic */ zak b;
    public final /* synthetic */ zacl c;

    public lka(zacl zaclVar, zak zakVar) {
        this.b = zakVar;
        this.c = zaclVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zak zakVar = this.b;
        ConnectionResult connectionResultZaa = zakVar.zaa();
        boolean zIsSuccess = connectionResultZaa.isSuccess();
        zacl zaclVar = this.c;
        if (zIsSuccess) {
            zaaa zaaaVar = (zaaa) Preconditions.checkNotNull(zakVar.zab());
            ConnectionResult connectionResultZab = zaaaVar.zab();
            if (!connectionResultZab.isSuccess()) {
                String strValueOf = String.valueOf(connectionResultZab);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(strValueOf), new Exception());
                zaclVar.p.zaa(connectionResultZab);
                zaclVar.o.disconnect();
                return;
            }
            zaclVar.p.zac(zaaaVar.zaa(), zaclVar.m);
        } else {
            zaclVar.p.zaa(connectionResultZaa);
        }
        zaclVar.o.disconnect();
    }
}
