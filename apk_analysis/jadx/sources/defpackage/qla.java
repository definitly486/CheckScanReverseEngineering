package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class qla {
    public final int a;
    public final ConnectionResult b;

    public qla(ConnectionResult connectionResult, int i) {
        Preconditions.checkNotNull(connectionResult);
        this.b = connectionResult;
        this.a = i;
    }
}
