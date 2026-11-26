package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.location.zzcr;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.location.zzel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class j1b extends p1b {
    public final /* synthetic */ List r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j1b(zzcr zzcrVar, GoogleApiClient googleApiClient, List list) {
        super(googleApiClient);
        this.r = list;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzF(zzel.zza(this.r), zzcr.a(this));
    }
}
