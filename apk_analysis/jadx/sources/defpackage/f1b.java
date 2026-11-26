package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.location.zzcr;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.location.zzel;

/* JADX INFO: loaded from: classes4.dex */
public final class f1b extends p1b {
    public final /* synthetic */ PendingIntent r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f1b(zzcr zzcrVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.r = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzF(zzel.zzb(this.r), zzcr.a(this));
    }
}
