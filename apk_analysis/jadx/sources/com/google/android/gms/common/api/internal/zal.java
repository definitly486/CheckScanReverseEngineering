package com.google.android.gms.common.api.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zal {
    public int d;
    public final ArrayMap b = new ArrayMap();
    public final TaskCompletionSource c = new TaskCompletionSource();
    public boolean e = false;
    public final ArrayMap a = new ArrayMap();

    public zal(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.a.put(((HasApiKey) it.next()).getApiKey(), null);
        }
        this.d = this.a.size();
    }

    public final Set zaa() {
        return this.a.keySet();
    }

    public final Task zab() {
        return this.c.getTask();
    }

    public final void zac(ApiKey apiKey, ConnectionResult connectionResult, String str) {
        ArrayMap arrayMap = this.a;
        arrayMap.put(apiKey, connectionResult);
        ArrayMap arrayMap2 = this.b;
        arrayMap2.put(apiKey, str);
        this.d--;
        if (!connectionResult.isSuccess()) {
            this.e = true;
        }
        if (this.d == 0) {
            boolean z = this.e;
            TaskCompletionSource taskCompletionSource = this.c;
            if (z) {
                taskCompletionSource.setException(new AvailabilityException(arrayMap));
            } else {
                taskCompletionSource.setResult(arrayMap2);
            }
        }
    }
}
