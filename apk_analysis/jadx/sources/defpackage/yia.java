package defpackage;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class yia implements BaseGmsClient.ConnectionProgressReportCallbacks {
    public final WeakReference a;
    public final Api b;
    public final boolean c;

    public yia(zaar zaarVar, Api api, boolean z) {
        this.a = new WeakReference(zaarVar);
        this.b = api;
        this.c = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        zaar zaarVar = (zaar) this.a.get();
        if (zaarVar == null) {
            return;
        }
        Lock lock = zaarVar.b;
        Preconditions.checkState(Looper.myLooper() == zaarVar.a.w.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        lock.lock();
        try {
            if (zaarVar.g(0)) {
                if (!connectionResult.isSuccess()) {
                    zaarVar.c(connectionResult, this.b, this.c);
                }
                if (zaarVar.h()) {
                    zaarVar.a();
                }
            }
        } finally {
            lock.unlock();
        }
    }
}
