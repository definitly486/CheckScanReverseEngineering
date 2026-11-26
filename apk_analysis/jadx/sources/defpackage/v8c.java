package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import android.os.UserHandle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzah;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.zzd;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class v8c implements ServiceConnection, zzr {
    public final HashMap b = new HashMap();
    public int c = 2;
    public boolean d;
    public IBinder e;
    public final zzn f;
    public ComponentName g;
    public final /* synthetic */ ybc h;

    public v8c(ybc ybcVar, zzn zznVar) {
        this.h = ybcVar;
        this.f = zznVar;
    }

    public final /* synthetic */ ConnectionResult a(String str, Executor executor) {
        try {
            Intent intentA = zzah.a(this.h.h, this.f);
            this.c = 3;
            StrictMode.VmPolicy vmPolicyZza = zzd.zza();
            try {
                ybc ybcVar = this.h;
                ConnectionTracker connectionTracker = ybcVar.k;
                Context context = ybcVar.h;
                zzn zznVar = this.f;
                boolean zZza = connectionTracker.zza(context, str, intentA, this, 4225, executor);
                this.d = zZza;
                if (zZza) {
                    ybcVar.i.sendMessageDelayed(ybcVar.i.obtainMessage(1, zznVar), ybcVar.m);
                    return ConnectionResult.RESULT_SUCCESS;
                }
                this.c = 2;
                try {
                    ybcVar.k.unbindService(ybcVar.h, this);
                } catch (IllegalArgumentException unused) {
                }
                return new ConnectionResult(16);
            } finally {
                StrictMode.setVmPolicy(vmPolicyZza);
            }
        } catch (zzaf e) {
            return e.zza;
        }
    }

    public final /* synthetic */ ConnectionResult b(String str, UserHandle userHandle) {
        try {
            Intent intentA = zzah.a(this.h.h, this.f);
            this.c = 3;
            StrictMode.VmPolicy vmPolicyZza = zzd.zza();
            try {
                ybc ybcVar = this.h;
                ConnectionTracker connectionTracker = ybcVar.k;
                Context context = ybcVar.h;
                zzn zznVar = this.f;
                boolean zZzb = connectionTracker.zzb(context, str, intentA, this, 4225, userHandle);
                this.d = zZzb;
                if (!zZzb) {
                    this.c = 2;
                    return new ConnectionResult(16);
                }
                ybcVar.i.sendMessageDelayed(ybcVar.i.obtainMessage(1, zznVar), ybcVar.m);
                return ConnectionResult.RESULT_SUCCESS;
            } finally {
                StrictMode.setVmPolicy(vmPolicyZza);
            }
        } catch (zzaf e) {
            return e.zza;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ybc ybcVar = this.h;
        synchronized (ybcVar.g) {
            try {
                ybcVar.i.removeMessages(1, this.f);
                this.e = iBinder;
                this.g = componentName;
                Iterator it = this.b.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.c = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ybc ybcVar = this.h;
        synchronized (ybcVar.g) {
            try {
                ybcVar.i.removeMessages(1, this.f);
                this.e = null;
                this.g = componentName;
                Iterator it = this.b.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.c = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
