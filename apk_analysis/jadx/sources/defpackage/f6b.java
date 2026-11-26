package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.DeviceOrientation;
import com.google.android.gms.location.DeviceOrientationListener;

/* JADX INFO: loaded from: classes4.dex */
public final class f6b implements ListenerHolder.Notifier {
    public final /* synthetic */ DeviceOrientation a;

    public f6b(m6b m6bVar, DeviceOrientation deviceOrientation) {
        this.a = deviceOrientation;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        ((DeviceOrientationListener) obj).onDeviceOrientationChanged(this.a);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
