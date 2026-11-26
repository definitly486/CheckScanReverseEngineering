package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.f;
import com.google.android.gms.common.api.internal.zabt;
import com.google.android.gms.measurement.internal.zzic;
import java.util.Map;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class ima implements zabt, m2c {
    public final /* synthetic */ Object b;

    public /* synthetic */ ima(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.m2c
    public /* synthetic */ void a(String str, int i, Throwable th, byte[] bArr, Map map) {
        ((zzic) this.b).b(i, th, bArr);
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public void zaa(Bundle bundle) {
        f fVar = (f) this.b;
        Lock lock = fVar.v;
        lock.lock();
        try {
            fVar.t = ConnectionResult.RESULT_SUCCESS;
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
            fVar.t = connectionResult;
            fVar.d();
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public void zac(int i, boolean z) {
        f fVar = (f) this.b;
        Lock lock = fVar.v;
        lock.lock();
        try {
            if (fVar.u) {
                fVar.u = false;
                fVar.b.zac(i, z);
                fVar.t = null;
                fVar.s = null;
            } else {
                fVar.u = true;
                fVar.m.onConnectionSuspended(i);
            }
        } finally {
            lock.unlock();
        }
    }
}
