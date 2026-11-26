package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.CurrentLocationRequest;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lxa implements RemoteCall {
    public final /* synthetic */ CurrentLocationRequest b;
    public final /* synthetic */ CancellationToken c;

    public /* synthetic */ lxa(CurrentLocationRequest currentLocationRequest, CancellationToken cancellationToken) {
        this.b = currentLocationRequest;
        this.c = cancellationToken;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* synthetic */ void accept(Object obj, Object obj2) {
        Api.ClientKey clientKey = zzcg.a;
        ((zzec) obj).zzr(this.b, this.c, (TaskCompletionSource) obj2);
    }
}
