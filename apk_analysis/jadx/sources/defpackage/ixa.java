package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.auth.zzbe;
import com.google.android.gms.internal.auth.zzbh;
import com.google.android.gms.internal.auth.zzbv;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ixa extends BaseImplementation.ApiMethodImpl {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void c(Api.AnyClient anyClient) {
        zzbe zzbeVar = (zzbe) anyClient;
        zzbeVar.getContext();
        ((zzbh) zzbeVar.getService()).zzd(new zxa((bya) this));
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzbv(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        setResult((Result) obj);
    }
}
