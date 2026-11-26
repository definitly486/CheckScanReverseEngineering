package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import defpackage.b7c;
import defpackage.c0c;
import defpackage.f6c;
import defpackage.fl2;
import defpackage.kzb;

/* JADX INFO: loaded from: classes4.dex */
public final class zznf implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    public volatile boolean b;
    public volatile zzgo c;
    public final /* synthetic */ zznl d;

    public zznf(zznl zznlVar) {
        this.d = zznlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.d.a.zzaX().zzd();
        synchronized (this) {
            try {
                Preconditions.checkNotNull(this.c);
                this.d.a.zzaX().zzj(new c0c(1, this, (zzgb) this.c.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.c = null;
                this.b = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zznl zznlVar = this.d;
        zznlVar.a.zzaX().zzd();
        zzgu zzguVarZzf = zznlVar.a.zzf();
        if (zzguVarZzf != null) {
            zzguVarZzf.zzk().zzb("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.b = false;
            this.c = null;
        }
        this.d.a.zzaX().zzj(new b7c(this, connectionResult));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzic zzicVar = this.d.a;
        zzicVar.zzaX().zzd();
        zzicVar.zzaW().zzj().zza("Service connection suspended");
        zzicVar.zzaX().zzj(new fl2(this, 1));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.d.a.zzaX().zzd();
        synchronized (this) {
            if (iBinder == null) {
                this.b = false;
                this.d.a.zzaW().zzb().zza("Service connected with null binder");
                return;
            }
            zzgb zzfzVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    zzfzVar = iInterfaceQueryLocalInterface instanceof zzgb ? (zzgb) iInterfaceQueryLocalInterface : new zzfz(iBinder);
                    this.d.a.zzaW().zzk().zza("Bound to IMeasurementService interface");
                } else {
                    this.d.a.zzaW().zzb().zzb("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.d.a.zzaW().zzb().zza("Service connect failed to get IMeasurementService");
            }
            if (zzfzVar == null) {
                this.b = false;
                try {
                    ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                    zznl zznlVar = this.d;
                    connectionTracker.unbindService(zznlVar.a.zzaZ(), zznlVar.c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.d.a.zzaX().zzj(new f6c(this, zzfzVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzic zzicVar = this.d.a;
        zzicVar.zzaX().zzd();
        zzicVar.zzaW().zzj().zza("Service disconnected");
        zzicVar.zzaX().zzj(new kzb(1, this, componentName));
    }

    public final void zza(Intent intent) {
        zznl zznlVar = this.d;
        zznlVar.zzg();
        Context contextZzaZ = zznlVar.a.zzaZ();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            try {
                boolean z = this.b;
                zznl zznlVar2 = this.d;
                zzic zzicVar = zznlVar2.a;
                if (z) {
                    zzicVar.zzaW().zzk().zza("Connection attempt already in progress");
                    return;
                }
                zzicVar.zzaW().zzk().zza("Using local app measurement service");
                this.b = true;
                connectionTracker.bindService(contextZzaZ, intent, zznlVar2.c, TsExtractor.TS_STREAM_TYPE_AC3);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzb() {
        if (this.c != null && (this.c.isConnected() || this.c.isConnecting())) {
            this.c.disconnect();
        }
        this.c = null;
    }

    public final void zzc() {
        zznl zznlVar = this.d;
        zznlVar.zzg();
        Context contextZzaZ = zznlVar.a.zzaZ();
        synchronized (this) {
            try {
                if (this.b) {
                    this.d.a.zzaW().zzk().zza("Connection attempt already in progress");
                    return;
                }
                if (this.c != null && (this.c.isConnecting() || this.c.isConnected())) {
                    this.d.a.zzaW().zzk().zza("Already awaiting connection attempt");
                    return;
                }
                this.c = new zzgo(contextZzaZ, Looper.getMainLooper(), this, this);
                this.d.a.zzaW().zzk().zza("Connecting to remote service");
                this.b = true;
                Preconditions.checkNotNull(this.c);
                this.c.checkAvailabilityAndConnect();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
