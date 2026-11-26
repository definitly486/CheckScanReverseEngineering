package defpackage;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.cloudmessaging.zzt;
import com.google.android.gms.cloudmessaging.zzv;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class ibc implements ServiceConnection {
    public hcc d;
    public final /* synthetic */ zzv g;
    public int b = 0;
    public final Messenger c = new Messenger(new com.google.android.gms.internal.cloudmessaging.zzv(Looper.getMainLooper(), new Handler.Callback() { // from class: b9c
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 30);
                sb.append("Received response to request: ");
                sb.append(i);
                Log.d("MessengerIpcClient", sb.toString());
            }
            ibc ibcVar = this.b;
            synchronized (ibcVar) {
                try {
                    SparseArray sparseArray = ibcVar.f;
                    udc udcVar = (udc) sparseArray.get(i);
                    if (udcVar == null) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 39);
                        sb2.append("Received response for unknown request: ");
                        sb2.append(i);
                        Log.w("MessengerIpcClient", sb2.toString());
                        return true;
                    }
                    sparseArray.remove(i);
                    ibcVar.d();
                    Bundle data = message.getData();
                    if (data.getBoolean("unsupported", false)) {
                        udcVar.d(new zzt("Not supported by GmsCore", null));
                        return true;
                    }
                    udcVar.b(data);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }));
    public final ArrayDeque e = new ArrayDeque();
    public final SparseArray f = new SparseArray();

    public /* synthetic */ ibc(zzv zzvVar) {
        this.g = zzvVar;
    }

    public final synchronized boolean a(udc udcVar) {
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                this.e.add(udcVar);
                return true;
            }
            if (i != 2) {
                return false;
            }
            this.e.add(udcVar);
            this.g.b.execute(new f1c(this));
            return true;
        }
        this.e.add(udcVar);
        Preconditions.checkState(this.b == 0);
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.b = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
            zzv zzvVar = this.g;
            if (connectionTracker.bindService(zzvVar.a, intent, this, 1)) {
                zzvVar.b.schedule(new Runnable() { // from class: lub
                    @Override // java.lang.Runnable
                    public final void run() {
                        ibc ibcVar = this.b;
                        synchronized (ibcVar) {
                            if (ibcVar.b == 1) {
                                ibcVar.b("Timed out while binding");
                            }
                        }
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                b("Unable to bind to service");
            }
        } catch (SecurityException e) {
            c("Unable to bind to service", e);
        }
        return true;
    }

    public final synchronized void b(String str) {
        c(str, null);
    }

    public final synchronized void c(String str, SecurityException securityException) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Disconnected: ".concat(String.valueOf(str)));
            }
            int i = this.b;
            if (i == 0) {
                throw new IllegalStateException();
            }
            if (i != 1 && i != 2) {
                if (i != 3) {
                    return;
                }
                this.b = 4;
                return;
            }
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Unbinding service");
            }
            this.b = 4;
            ConnectionTracker.getInstance().unbindService(this.g.a, this);
            zzt zztVar = new zzt(str, securityException);
            ArrayDeque arrayDeque = this.e;
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                ((udc) it.next()).d(zztVar);
            }
            arrayDeque.clear();
            int i2 = 0;
            while (true) {
                SparseArray sparseArray = this.f;
                if (i2 >= sparseArray.size()) {
                    sparseArray.clear();
                    return;
                } else {
                    ((udc) sparseArray.valueAt(i2)).d(zztVar);
                    i2++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d() {
        try {
            if (this.b == 2 && this.e.isEmpty() && this.f.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.b = 3;
                ConnectionTracker.getInstance().unbindService(this.g.a, this);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        this.g.b.execute(new xxb(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        this.g.b.execute(new Runnable() { // from class: w3c
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.b.b("Service disconnected");
            }
        });
    }
}
