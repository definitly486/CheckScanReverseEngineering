package defpackage;

import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.api.internal.zaaz;

/* JADX INFO: loaded from: classes4.dex */
public final class ija implements ResultCallback {
    public final /* synthetic */ StatusPendingResult a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ GoogleApiClient c;
    public final /* synthetic */ zaaz d;

    public ija(zaaz zaazVar, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.a = statusPendingResult;
        this.b = z;
        this.c = googleApiClient;
        this.d = zaazVar;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void onResult(Result result) {
        Status status = (Status) result;
        zaaz zaazVar = this.d;
        Storage.getInstance(zaazVar.g).zac();
        if (status.isSuccess() && zaazVar.isConnected()) {
            zaazVar.disconnect();
            zaazVar.connect();
        }
        this.a.setResult(status);
        if (this.b) {
            this.c.disconnect();
        }
    }
}
