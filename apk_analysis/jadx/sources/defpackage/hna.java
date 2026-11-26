package defpackage;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.auth.api.signin.internal.zbe;
import com.google.android.gms.auth.api.signin.internal.zbs;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public final class hna extends mna {
    public final /* synthetic */ Context r;
    public final /* synthetic */ GoogleSignInOptions s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hna(GoogleApiClient googleApiClient, Context context, GoogleSignInOptions googleSignInOptions) {
        super(googleApiClient);
        this.r = context;
        this.s = googleSignInOptions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        zbs zbsVar = (zbs) ((zbe) anyClient).getService();
        Context context = this.r;
        GoogleSignInOptions googleSignInOptions = this.s;
        zbsVar.zbc(new gna(this, context, googleSignInOptions), googleSignInOptions);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new GoogleSignInResult(null, status);
    }
}
