package defpackage;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.zap;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class vla implements Runnable {
    public final qla b;
    public final /* synthetic */ zap c;

    public vla(zap zapVar, qla qlaVar) {
        this.c = zapVar;
        this.b = qlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zap zapVar = this.c;
        if (zapVar.c) {
            qla qlaVar = this.b;
            ConnectionResult connectionResult = qlaVar.b;
            int errorCode = connectionResult.getErrorCode();
            GoogleApiAvailability googleApiAvailability = zapVar.f;
            if (!googleApiAvailability.zaj(errorCode)) {
                Log.w("BaseLifecycleHelper", "Not showing dialog since ConnectionResult is not user-facing: ".concat(String.valueOf(connectionResult)));
                int i = qlaVar.a;
                zapVar.d.set(null);
                zapVar.b(connectionResult, i);
                return;
            }
            if (connectionResult.hasResolution()) {
                zapVar.b.startActivityForResult(GoogleApiActivity.zaa(zapVar.getActivity(), (PendingIntent) Preconditions.checkNotNull(connectionResult.getResolution()), qlaVar.a, false), 1);
                return;
            }
            if (googleApiAvailability.getErrorResolutionIntent(zapVar.getActivity(), connectionResult.getErrorCode(), null) != null) {
                googleApiAvailability.zab(zapVar.getActivity(), zapVar.b, connectionResult.getErrorCode(), 2, zapVar);
                googleApiAvailability.zae(zapVar.getActivity().getApplicationContext(), connectionResult, true);
            } else if (connectionResult.getErrorCode() == 18) {
                googleApiAvailability.zag(zapVar.getActivity().getApplicationContext(), new sla(this, googleApiAvailability.zaf(zapVar.getActivity(), zapVar)));
                googleApiAvailability.zae(zapVar.getActivity().getApplicationContext(), connectionResult, true);
            } else {
                int i2 = qlaVar.a;
                zapVar.d.set(null);
                zapVar.b(connectionResult, i2);
            }
        }
    }
}
