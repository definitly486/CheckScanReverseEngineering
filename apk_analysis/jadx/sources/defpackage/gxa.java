package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.auth.zzbe;
import com.google.android.gms.internal.auth.zzbh;

/* JADX INFO: loaded from: classes4.dex */
public abstract class gxa extends BaseImplementation.ApiMethodImpl {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void c(Api.AnyClient anyClient) {
        zzbe zzbeVar = (zzbe) anyClient;
        zzbeVar.getContext();
        xxa xxaVar = (xxa) this;
        ((zzbh) zzbeVar.getService()).zze(new uxa(xxaVar), xxaVar.r);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new iya(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        setResult((Result) obj);
    }
}
