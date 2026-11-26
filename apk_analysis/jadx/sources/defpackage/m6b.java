package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.DeviceOrientation;
import com.google.android.gms.location.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class m6b extends zzr {
    public ListenerHolder a;

    @Override // com.google.android.gms.location.zzs
    public final void zzd(DeviceOrientation deviceOrientation) {
        ListenerHolder listenerHolder;
        synchronized (this) {
            listenerHolder = this.a;
        }
        listenerHolder.notifyListener(new f6b(this, deviceOrientation));
    }
}
