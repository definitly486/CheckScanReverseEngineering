package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.ah;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public class BlockingServiceConnection implements ServiceConnection {
    public boolean b = false;
    public final LinkedBlockingQueue c = new LinkedBlockingQueue();

    public IBinder getService() {
        Preconditions.checkNotMainThread("BlockingServiceConnection.getService() called on main thread");
        if (this.b) {
            ah.f("Cannot call get on this connection more than once");
            return null;
        }
        this.b = true;
        return (IBinder) this.c.take();
    }

    public IBinder getServiceWithTimeout(long j, TimeUnit timeUnit) throws TimeoutException {
        Preconditions.checkNotMainThread("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.b) {
            ah.f("Cannot call get on this connection more than once");
            return null;
        }
        this.b = true;
        IBinder iBinder = (IBinder) this.c.poll(j, timeUnit);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.c.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
