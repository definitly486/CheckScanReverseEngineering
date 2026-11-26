package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzec;

/* JADX INFO: loaded from: classes4.dex */
public final class gva extends mwa {
    public final /* synthetic */ boolean r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gva(zzbd zzbdVar, GoogleApiClient googleApiClient, boolean z) {
        super(googleApiClient);
        this.r = z;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        zzec zzecVar = (zzec) anyClient;
        if (this.r) {
            zzecVar.zzy(zzbd.a(this));
        } else {
            zzecVar.zzz(zzbd.a(this));
        }
    }
}
