package defpackage;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Looper;
import android.os.UserHandle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.common.zzg;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ybc extends GmsClientSupervisor {
    public final HashMap g = new HashMap();
    public final Context h;
    public volatile zzg i;
    public final bbc j;
    public final ConnectionTracker k;
    public final long l;
    public final long m;
    public volatile Executor n;

    public ybc(Context context, Looper looper, Executor executor) {
        bbc bbcVar = new bbc(this);
        this.j = bbcVar;
        this.h = context.getApplicationContext();
        this.i = new zzg(looper, bbcVar);
        this.k = ConnectionTracker.getInstance();
        this.l = 5000L;
        this.m = 300000L;
        this.n = executor;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final ConnectionResult a(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor) {
        ConnectionResult connectionResultA;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        HashMap map = this.g;
        synchronized (map) {
            try {
                v8c v8cVar = (v8c) map.get(zznVar);
                if (executor == null) {
                    executor = this.n;
                }
                if (v8cVar == null) {
                    v8cVar = new v8c(this, zznVar);
                    v8cVar.b.put(serviceConnection, serviceConnection);
                    UserHandle userHandleZze = zznVar.zze();
                    connectionResultA = (userHandleZze == null || Build.VERSION.SDK_INT < 33) ? v8cVar.a(str, executor) : v8cVar.b(str, userHandleZze);
                    map.put(zznVar, v8cVar);
                } else {
                    this.i.removeMessages(0, zznVar);
                    if (v8cVar.b.containsKey(serviceConnection)) {
                        String string = zznVar.toString();
                        StringBuilder sb = new StringBuilder(string.length() + 81);
                        sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                        sb.append(string);
                        throw new IllegalStateException(sb.toString());
                    }
                    v8cVar.b.put(serviceConnection, serviceConnection);
                    int i = v8cVar.c;
                    if (i == 1) {
                        serviceConnection.onServiceConnected(v8cVar.g, v8cVar.e);
                    } else if (i == 2) {
                        UserHandle userHandleZze2 = zznVar.zze();
                        connectionResultA = (userHandleZze2 == null || Build.VERSION.SDK_INT < 33) ? v8cVar.a(str, executor) : v8cVar.b(str, userHandleZze2);
                    }
                    connectionResultA = null;
                }
                if (v8cVar.d) {
                    return ConnectionResult.RESULT_SUCCESS;
                }
                if (connectionResultA == null) {
                    connectionResultA = new ConnectionResult(-1);
                }
                return connectionResultA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final void b(zzn zznVar, ServiceConnection serviceConnection) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        HashMap map = this.g;
        synchronized (map) {
            try {
                v8c v8cVar = (v8c) map.get(zznVar);
                if (v8cVar == null) {
                    String string = zznVar.toString();
                    StringBuilder sb = new StringBuilder(string.length() + 50);
                    sb.append("Nonexistent connection status for service config: ");
                    sb.append(string);
                    throw new IllegalStateException(sb.toString());
                }
                if (!v8cVar.b.containsKey(serviceConnection)) {
                    String string2 = zznVar.toString();
                    StringBuilder sb2 = new StringBuilder(string2.length() + 76);
                    sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                    sb2.append(string2);
                    throw new IllegalStateException(sb2.toString());
                }
                v8cVar.b.remove(serviceConnection);
                if (v8cVar.b.isEmpty()) {
                    this.i.sendMessageDelayed(this.i.obtainMessage(0, zznVar), this.l);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
