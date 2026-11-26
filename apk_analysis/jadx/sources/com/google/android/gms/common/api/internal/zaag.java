package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.qja;
import defpackage.wia;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zaag implements zaba {
    public final zabd a;
    public boolean b = false;

    public zaag(zabd zabdVar) {
        this.a = zabdVar;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaa() {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zac(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final BaseImplementation.ApiMethodImpl zac(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zabd zabdVar = this.a;
        try {
            zaaz zaazVar = zabdVar.w;
            zact zactVar = zaazVar.y;
            zactVar.a.add(apiMethodImpl);
            apiMethodImpl.zan(zactVar.b);
            Api.Client client = (Api.Client) zaazVar.p.get(apiMethodImpl.getClientKey());
            Preconditions.checkNotNull(client, "Appropriate Api was not requested.");
            if (client.isConnected() || !zabdVar.p.containsKey(apiMethodImpl.getClientKey())) {
                apiMethodImpl.run(client);
                return apiMethodImpl;
            }
            apiMethodImpl.setFailedResult(new Status(17));
            return apiMethodImpl;
        } catch (DeadObjectException unused) {
            a aVar = new a(this, this);
            qja qjaVar = zabdVar.n;
            qjaVar.sendMessage(qjaVar.obtainMessage(1, aVar));
            return apiMethodImpl;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final boolean zad() {
        if (this.b) {
            return false;
        }
        zabd zabdVar = this.a;
        HashSet hashSet = zabdVar.w.x;
        if (hashSet == null || hashSet.isEmpty()) {
            zabdVar.a(null);
            return true;
        }
        this.b = true;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((zacr) it.next()).c = null;
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zae() {
        if (this.b) {
            this.b = false;
            wia wiaVar = new wia(this, this);
            qja qjaVar = this.a.n;
            qjaVar.sendMessage(qjaVar.obtainMessage(1, wiaVar));
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
        zabd zabdVar = this.a;
        zabdVar.a(null);
        zabdVar.x.zac(i, this.b);
    }
}
