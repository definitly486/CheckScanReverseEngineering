package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class zaas implements zaba {
    public final zabd a;

    public zaas(zabd zabdVar) {
        this.a = zabdVar;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaa() {
        zabd zabdVar = this.a;
        Iterator it = zabdVar.o.values().iterator();
        while (it.hasNext()) {
            ((Api.Client) it.next()).disconnect();
        }
        zabdVar.w.q = Collections.EMPTY_SET;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        this.a.w.i.add(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final BaseImplementation.ApiMethodImpl zac(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final boolean zad() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zae() {
        zabd zabdVar = this.a;
        Lock lock = zabdVar.a;
        lock.lock();
        try {
            zabdVar.t = new zaar(zabdVar, zabdVar.q, zabdVar.r, zabdVar.m, zabdVar.s, lock, zabdVar.l);
            zabdVar.t.zaa();
            zabdVar.b.signalAll();
        } finally {
            zabdVar.a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaf(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zag(ConnectionResult connectionResult, Api api, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zah(int i) {
    }
}
