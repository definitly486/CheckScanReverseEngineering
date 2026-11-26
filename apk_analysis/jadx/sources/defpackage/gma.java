package defpackage;

import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.f;
import com.google.android.gms.common.api.internal.zabt;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.tasks.OnTokenCanceledListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class gma implements zabt, RemoteCall, OnTokenCanceledListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ gma(Object obj) {
        this.b = obj;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        Api.ClientKey clientKey = zzcg.a;
        ((zzec) obj).zzA((Location) this.b, (TaskCompletionSource) obj2);
    }

    @Override // com.google.android.gms.tasks.OnTokenCanceledListener
    public /* synthetic */ void onCanceled() {
        try {
            ((ICancelToken) this.b).cancel();
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public void zaa(Bundle bundle) {
        f fVar = (f) this.b;
        Lock lock = fVar.v;
        lock.lock();
        try {
            Bundle bundle2 = fVar.r;
            if (bundle2 == null) {
                fVar.r = bundle;
            } else if (bundle != null) {
                bundle2.putAll(bundle);
            }
            fVar.s = ConnectionResult.RESULT_SUCCESS;
            fVar.d();
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public void zab(ConnectionResult connectionResult) {
        f fVar = (f) this.b;
        Lock lock = fVar.v;
        lock.lock();
        try {
            fVar.s = connectionResult;
            fVar.d();
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public void zac(int i, boolean z) {
        ConnectionResult connectionResult;
        f fVar = (f) this.b;
        Lock lock = fVar.v;
        lock.lock();
        try {
            if (fVar.u || (connectionResult = fVar.t) == null || !connectionResult.isSuccess()) {
                fVar.u = false;
                fVar.b.zac(i, z);
                fVar.t = null;
                fVar.s = null;
            } else {
                fVar.u = true;
                fVar.n.onConnectionSuspended(i);
            }
        } finally {
            lock.unlock();
        }
    }
}
