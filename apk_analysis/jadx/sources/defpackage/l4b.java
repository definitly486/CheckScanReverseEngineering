package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class l4b extends LocationCallback {
    public final /* synthetic */ TaskCompletionSource b;
    public final /* synthetic */ zzec c;

    public l4b(zzec zzecVar, TaskCompletionSource taskCompletionSource) {
        this.b = taskCompletionSource;
        this.c = zzecVar;
    }

    @Override // com.google.android.gms.location.LocationCallback
    public final void onLocationResult(LocationResult locationResult) {
        this.b.trySetResult(locationResult.getLastLocation());
        try {
            this.c.zzw(ListenerHolders.createListenerKey(this, "GetCurrentLocation"), false, new TaskCompletionSource());
        } catch (RemoteException unused) {
        }
    }
}
