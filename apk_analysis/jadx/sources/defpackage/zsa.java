package defpackage;

import android.accounts.Account;
import com.google.android.gms.auth.account.zze;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.auth.zzam;

/* JADX INFO: loaded from: classes4.dex */
public final class zsa extends BaseImplementation.ApiMethodImpl {
    public final /* synthetic */ Account r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zsa(Api api, GoogleApiClient googleApiClient, Account account) {
        super(api, googleApiClient);
        this.r = account;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zze) ((zzam) anyClient).getService()).zze(new asa(this), this.r);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final Result createFailedResult(Status status) {
        return new aua(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        setResult((Result) obj);
    }
}
