package com.monetization.ads.core.identifiers.ad.huawei;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements ServiceConnection {
    public final LinkedBlockingQueue a = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IInterface proxy;
        try {
            int i = OpenDeviceIdentifierService.Stub.a;
            if (iBinder == null) {
                proxy = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                proxy = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof OpenDeviceIdentifierService)) ? new OpenDeviceIdentifierService.Stub.Proxy(iBinder) : (OpenDeviceIdentifierService) iInterfaceQueryLocalInterface;
            }
            this.a.put(proxy);
        } catch (Exception unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        try {
            this.a.clear();
        } catch (UnsupportedOperationException unused) {
        }
    }
}
