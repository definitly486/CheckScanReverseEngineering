package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import defpackage.ag;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class zap implements Handler.Callback {
    public final zao b;
    public final com.google.android.gms.internal.base.zar i;
    public final ArrayList c = new ArrayList();
    public final ArrayList d = new ArrayList();
    public final ArrayList e = new ArrayList();
    public volatile boolean f = false;
    public final AtomicInteger g = new AtomicInteger(0);
    public boolean h = false;
    public final Object j = new Object();

    public zap(Looper looper, zao zaoVar) {
        this.b = zaoVar;
        this.i = new com.google.android.gms.internal.base.zar(looper, this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            Log.wtf("GmsClientEvents", ag.d(new StringBuilder(String.valueOf(i).length() + 34), "Don't know how to handle message: ", i), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.j) {
            try {
                if (this.f && this.b.isConnected() && this.c.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public final void zaa() {
        this.f = false;
        this.g.incrementAndGet();
    }

    public final void zab() {
        this.f = true;
    }

    public final void zac(Bundle bundle) {
        com.google.android.gms.internal.base.zar zarVar = this.i;
        Preconditions.checkHandlerThread(zarVar, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.j) {
            try {
                Preconditions.checkState(!this.h);
                zarVar.removeMessages(1);
                this.h = true;
                ArrayList arrayList = this.d;
                Preconditions.checkState(arrayList.isEmpty());
                ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList2 = new ArrayList(this.c);
                AtomicInteger atomicInteger = this.g;
                int i = atomicInteger.get();
                for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList2) {
                    if (!this.f || !this.b.isConnected() || atomicInteger.get() != i) {
                        break;
                        break;
                        break;
                    } else if (!arrayList.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnected(bundle);
                    }
                }
                arrayList.clear();
                this.h = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zad(int i) {
        com.google.android.gms.internal.base.zar zarVar = this.i;
        Preconditions.checkHandlerThread(zarVar, "onUnintentionalDisconnection must only be called on the Handler thread");
        zarVar.removeMessages(1);
        synchronized (this.j) {
            try {
                this.h = true;
                ArrayList arrayList = this.c;
                ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList2 = new ArrayList(arrayList);
                AtomicInteger atomicInteger = this.g;
                int i2 = atomicInteger.get();
                for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList2) {
                    if (!this.f || atomicInteger.get() != i2) {
                        break;
                    } else if (arrayList.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnectionSuspended(i);
                    }
                }
                this.d.clear();
                this.h = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zae(ConnectionResult connectionResult) {
        com.google.android.gms.internal.base.zar zarVar = this.i;
        Preconditions.checkHandlerThread(zarVar, "onConnectionFailure must only be called on the Handler thread");
        zarVar.removeMessages(1);
        synchronized (this.j) {
            try {
                ArrayList arrayList = this.e;
                ArrayList<GoogleApiClient.OnConnectionFailedListener> arrayList2 = new ArrayList(arrayList);
                AtomicInteger atomicInteger = this.g;
                int i = atomicInteger.get();
                for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : arrayList2) {
                    if (this.f && atomicInteger.get() == i) {
                        if (arrayList.contains(onConnectionFailedListener)) {
                            onConnectionFailedListener.onConnectionFailed(connectionResult);
                        }
                    }
                    return;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zaf(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.j) {
            try {
                ArrayList arrayList = this.c;
                if (arrayList.contains(connectionCallbacks)) {
                    String strValueOf = String.valueOf(connectionCallbacks);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 62);
                    sb.append("registerConnectionCallbacks(): listener ");
                    sb.append(strValueOf);
                    sb.append(" is already registered");
                    Log.w("GmsClientEvents", sb.toString());
                } else {
                    arrayList.add(connectionCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.b.isConnected()) {
            com.google.android.gms.internal.base.zar zarVar = this.i;
            zarVar.sendMessage(zarVar.obtainMessage(1, connectionCallbacks));
        }
    }

    public final boolean zag(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean zContains;
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.j) {
            zContains = this.c.contains(connectionCallbacks);
        }
        return zContains;
    }

    public final void zah(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.j) {
            try {
                if (!this.c.remove(connectionCallbacks)) {
                    String strValueOf = String.valueOf(connectionCallbacks);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 52);
                    sb.append("unregisterConnectionCallbacks(): listener ");
                    sb.append(strValueOf);
                    sb.append(" not found");
                    Log.w("GmsClientEvents", sb.toString());
                } else if (this.h) {
                    this.d.add(connectionCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zai(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.j) {
            try {
                ArrayList arrayList = this.e;
                if (arrayList.contains(onConnectionFailedListener)) {
                    String strValueOf = String.valueOf(onConnectionFailedListener);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 67);
                    sb.append("registerConnectionFailedListener(): listener ");
                    sb.append(strValueOf);
                    sb.append(" is already registered");
                    Log.w("GmsClientEvents", sb.toString());
                } else {
                    arrayList.add(onConnectionFailedListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zaj(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean zContains;
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.j) {
            zContains = this.e.contains(onConnectionFailedListener);
        }
        return zContains;
    }

    public final void zak(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.j) {
            try {
                if (!this.e.remove(onConnectionFailedListener)) {
                    String strValueOf = String.valueOf(onConnectionFailedListener);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 57);
                    sb.append("unregisterConnectionFailedListener(): listener ");
                    sb.append(strValueOf);
                    sb.append(" not found");
                    Log.w("GmsClientEvents", sb.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
