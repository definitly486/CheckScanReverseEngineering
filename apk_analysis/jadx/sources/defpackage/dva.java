package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzec;

/* JADX INFO: loaded from: classes4.dex */
public final class dva extends mwa {
    public final /* synthetic */ PendingIntent r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dva(zzbd zzbdVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.r = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzx(this.r, zzbd.a(this), null);
    }
}
