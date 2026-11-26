package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import defpackage.joa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzg extends joa {
    public final /* synthetic */ BaseGmsClient e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(BaseGmsClient baseGmsClient, int i, Bundle bundle) {
        super(baseGmsClient, i, bundle);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.e = baseGmsClient;
    }

    @Override // defpackage.joa
    public final boolean b() {
        this.e.zzc.onReportServiceBinding(ConnectionResult.RESULT_SUCCESS);
        return true;
    }

    @Override // defpackage.joa
    public final void c(ConnectionResult connectionResult) {
        BaseGmsClient baseGmsClient = this.e;
        if (baseGmsClient.enableLocalFallback() && baseGmsClient.zzg()) {
            baseGmsClient.zzf(16);
        } else {
            baseGmsClient.zzc.onReportServiceBinding(connectionResult);
            baseGmsClient.onConnectionFailed(connectionResult);
        }
    }
}
