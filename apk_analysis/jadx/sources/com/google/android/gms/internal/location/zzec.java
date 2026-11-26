package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.location.CurrentLocationRequest;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.zzac;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnTokenCanceledListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.a5b;
import defpackage.ag;
import defpackage.b5b;
import defpackage.d4b;
import defpackage.e9b;
import defpackage.gma;
import defpackage.i7b;
import defpackage.l4b;
import defpackage.m5b;
import defpackage.m6b;
import defpackage.q4b;
import defpackage.r3b;
import defpackage.t5b;
import defpackage.wta;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzec extends GmsClient {
    public static final /* synthetic */ int zze = 0;
    public final SimpleArrayMap b;
    public final SimpleArrayMap c;
    public final SimpleArrayMap d;

    public zzec(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 23, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.b = new SimpleArrayMap();
        this.c = new SimpleArrayMap();
        this.d = new SimpleArrayMap();
        new SimpleArrayMap();
    }

    public final boolean a(Feature feature) {
        Feature feature2;
        Feature[] availableFeatures = getAvailableFeatures();
        if (availableFeatures != null) {
            int i = 0;
            while (true) {
                if (i >= availableFeatures.length) {
                    feature2 = null;
                    break;
                }
                feature2 = availableFeatures[i];
                if (feature.getName().equals(feature2.getName())) {
                    break;
                }
                i++;
            }
            if (feature2 != null && feature2.getVersion() >= feature.getVersion()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return iInterfaceQueryLocalInterface instanceof zzu ? (zzu) iInterfaceQueryLocalInterface : new zzt(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.location.zzn.zzp;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 11717000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onConnectionSuspended(int i) {
        super.onConnectionSuspended(i);
        SimpleArrayMap simpleArrayMap = this.b;
        synchronized (simpleArrayMap) {
            simpleArrayMap.clear();
        }
        SimpleArrayMap simpleArrayMap2 = this.c;
        synchronized (simpleArrayMap2) {
            simpleArrayMap2.clear();
        }
        SimpleArrayMap simpleArrayMap3 = this.d;
        synchronized (simpleArrayMap3) {
            simpleArrayMap3.clear();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean usesClientTelemetry() {
        return true;
    }

    public final void zzA(Location location, TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzh)) {
            ((zzu) getService()).zzB(location, new q4b(null, taskCompletionSource));
        } else {
            ((zzu) getService()).zzA(location);
            taskCompletionSource.setResult(null);
        }
    }

    public final void zzB(TaskCompletionSource taskCompletionSource) {
        ((zzu) getService()).zzC(new m5b(null, taskCompletionSource));
    }

    public final void zzC(ListenerHolder listenerHolder, DeviceOrientationRequest deviceOrientationRequest, TaskCompletionSource taskCompletionSource) {
        ListenerHolder.ListenerKey listenerKey = listenerHolder.getListenerKey();
        Objects.requireNonNull(listenerKey);
        SimpleArrayMap simpleArrayMap = this.d;
        synchronized (simpleArrayMap) {
            try {
                m6b m6bVar = (m6b) simpleArrayMap.get(listenerKey);
                if (m6bVar == null) {
                    m6bVar = new m6b();
                    m6bVar.a = listenerHolder;
                    simpleArrayMap.put(listenerKey, m6bVar);
                } else {
                    synchronized (m6bVar) {
                        ListenerHolder listenerHolder2 = m6bVar.a;
                        if (listenerHolder2 != listenerHolder) {
                            listenerHolder2.clear();
                            m6bVar.a = listenerHolder;
                        }
                    }
                }
                ((zzu) getService()).zzF(new zzi(1, new zzg(deviceOrientationRequest), m6bVar, new m5b(null, taskCompletionSource)));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzD(ListenerHolder.ListenerKey listenerKey, TaskCompletionSource taskCompletionSource) {
        SimpleArrayMap simpleArrayMap = this.d;
        synchronized (simpleArrayMap) {
            try {
                m6b m6bVar = (m6b) simpleArrayMap.remove(listenerKey);
                if (m6bVar == null) {
                    taskCompletionSource.setResult(Boolean.FALSE);
                    return;
                }
                synchronized (m6bVar) {
                    m6bVar.a.clear();
                }
                ((zzu) getService()).zzF(new zzi(2, null, m6bVar, new m5b(Boolean.TRUE, taskCompletionSource)));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzE(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzn)) {
            ((zzu) getService()).zze(geofencingRequest, pendingIntent, new q4b(null, taskCompletionSource));
        } else {
            ((zzu) getService()).zzd(geofencingRequest, pendingIntent, new d4b(taskCompletionSource));
        }
    }

    public final void zzF(zzel zzelVar, TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzn)) {
            ((zzu) getService()).zzg(zzelVar, new q4b(null, taskCompletionSource));
        } else {
            ((zzu) getService()).zzf(zzelVar, new d4b(taskCompletionSource));
        }
    }

    public final void zzp(zzac zzacVar, TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzj)) {
            ((zzu) getService()).zzo(zzacVar, new zzed(5, null, new b5b(taskCompletionSource), null, null));
        } else {
            taskCompletionSource.setResult(((zzu) getService()).zzp(getContext().getPackageName()));
        }
    }

    public final void zzq(LastLocationRequest lastLocationRequest, TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzj)) {
            ((zzu) getService()).zzq(lastLocationRequest, new zzed(4, null, new a5b(taskCompletionSource), null, null));
        } else if (a(com.google.android.gms.location.zzn.zzf)) {
            ((zzu) getService()).zzr(lastLocationRequest, new a5b(taskCompletionSource));
        } else {
            taskCompletionSource.setResult(((zzu) getService()).zzs());
        }
    }

    public final void zzr(CurrentLocationRequest currentLocationRequest, CancellationToken cancellationToken, final TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzj)) {
            ICancelToken iCancelTokenZzt = ((zzu) getService()).zzt(currentLocationRequest, new zzed(4, null, new a5b(taskCompletionSource), null, null));
            if (cancellationToken != null) {
                cancellationToken.onCanceledRequested(new gma(iCancelTokenZzt));
                return;
            }
            return;
        }
        if (a(com.google.android.gms.location.zzn.zze)) {
            final ICancelToken iCancelTokenZzu = ((zzu) getService()).zzu(currentLocationRequest, new a5b(taskCompletionSource));
            if (cancellationToken != null) {
                cancellationToken.onCanceledRequested(new OnTokenCanceledListener() { // from class: u7b
                    @Override // com.google.android.gms.tasks.OnTokenCanceledListener
                    public final /* synthetic */ void onCanceled() {
                        try {
                            iCancelTokenZzu.cancel();
                        } catch (RemoteException unused) {
                        }
                    }
                });
                return;
            }
            return;
        }
        ListenerHolder listenerHolderCreateListenerHolder = ListenerHolders.createListenerHolder(new l4b(this, taskCompletionSource), zzez.zza(), "GetCurrentLocation");
        final ListenerHolder.ListenerKey listenerKey = listenerHolderCreateListenerHolder.getListenerKey();
        Objects.requireNonNull(listenerKey);
        wta wtaVar = new wta(this, listenerHolderCreateListenerHolder, taskCompletionSource);
        TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
        LocationRequest.Builder builder = new LocationRequest.Builder(currentLocationRequest.getPriority(), 0L);
        builder.setMinUpdateIntervalMillis(0L);
        builder.setDurationMillis(currentLocationRequest.getDurationMillis());
        builder.setGranularity(currentLocationRequest.getGranularity());
        builder.setMaxUpdateAgeMillis(currentLocationRequest.getMaxUpdateAgeMillis());
        builder.zzb(currentLocationRequest.zza());
        builder.zza(currentLocationRequest.zzb());
        builder.setWaitForAccurateLocation(true);
        builder.zzc(currentLocationRequest.zzc());
        zzt(wtaVar, builder.build(), taskCompletionSource2);
        taskCompletionSource2.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: o7b
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void onComplete(Task task) {
                if (task.isSuccessful()) {
                    return;
                }
                Exception exception = task.getException();
                Objects.requireNonNull(exception);
                taskCompletionSource.trySetException(exception);
            }
        });
        if (cancellationToken != null) {
            cancellationToken.onCanceledRequested(new OnTokenCanceledListener() { // from class: d8b
                @Override // com.google.android.gms.tasks.OnTokenCanceledListener
                public final /* synthetic */ void onCanceled() {
                    try {
                        this.b.zzw(listenerKey, true, new TaskCompletionSource());
                    } catch (RemoteException unused) {
                    }
                }
            });
        }
    }

    public final void zzs(zzdq zzdqVar, LocationRequest locationRequest, TaskCompletionSource taskCompletionSource) {
        e9b e9bVar;
        ListenerHolder listenerHolderZza = zzdqVar.zza();
        ListenerHolder.ListenerKey listenerKey = listenerHolderZza.getListenerKey();
        Objects.requireNonNull(listenerKey);
        boolean zA = a(com.google.android.gms.location.zzn.zzj);
        SimpleArrayMap simpleArrayMap = this.b;
        synchronized (simpleArrayMap) {
            try {
                e9b e9bVar2 = (e9b) simpleArrayMap.get(listenerKey);
                if (e9bVar2 == null || zA) {
                    e9b e9bVar3 = new e9b(zzdqVar);
                    simpleArrayMap.put(listenerKey, e9bVar3);
                    e9bVar = e9bVar3;
                } else {
                    e9bVar2.a.zzb(listenerHolderZza);
                    e9bVar = e9bVar2;
                    e9bVar2 = null;
                }
                if (zA) {
                    ((zzu) getService()).zzw(zzed.zza(e9bVar2, e9bVar, listenerKey.toIdString()), locationRequest, new q4b(null, taskCompletionSource));
                } else {
                    ((zzu) getService()).zzv(new zzeh(1, new zzef(locationRequest, null, false, false, false, false, Long.MAX_VALUE), e9bVar, null, null, new t5b(taskCompletionSource, e9bVar), listenerKey.toIdString()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzt(zzdq zzdqVar, LocationRequest locationRequest, TaskCompletionSource taskCompletionSource) {
        i7b i7bVar;
        ListenerHolder listenerHolderZza = zzdqVar.zza();
        ListenerHolder.ListenerKey listenerKey = listenerHolderZza.getListenerKey();
        Objects.requireNonNull(listenerKey);
        boolean zA = a(com.google.android.gms.location.zzn.zzj);
        SimpleArrayMap simpleArrayMap = this.c;
        synchronized (simpleArrayMap) {
            try {
                i7b i7bVar2 = (i7b) simpleArrayMap.get(listenerKey);
                if (i7bVar2 == null || zA) {
                    i7b i7bVar3 = new i7b(zzdqVar);
                    simpleArrayMap.put(listenerKey, i7bVar3);
                    i7bVar = i7bVar3;
                } else {
                    i7bVar2.a.zzb(listenerHolderZza);
                    i7bVar = i7bVar2;
                    i7bVar2 = null;
                }
                if (zA) {
                    ((zzu) getService()).zzw(zzed.zzb(i7bVar2, i7bVar, listenerKey.toIdString()), locationRequest, new q4b(null, taskCompletionSource));
                } else {
                    ((zzu) getService()).zzv(new zzeh(1, new zzef(locationRequest, null, false, false, false, false, Long.MAX_VALUE), null, i7bVar, null, new r3b(taskCompletionSource, i7bVar), listenerKey.toIdString()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzu(PendingIntent pendingIntent, LocationRequest locationRequest, TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzj)) {
            ((zzu) getService()).zzw(zzed.zzc(pendingIntent), locationRequest, new q4b(null, taskCompletionSource));
            return;
        }
        zzu zzuVar = (zzu) getService();
        zzef zzefVar = new zzef(locationRequest, null, false, false, false, false, Long.MAX_VALUE);
        m5b m5bVar = new m5b(null, taskCompletionSource);
        int iHashCode = pendingIntent.hashCode();
        zzuVar.zzv(new zzeh(1, zzefVar, null, null, pendingIntent, m5bVar, ag.d(new StringBuilder(String.valueOf(iHashCode).length() + 14), "PendingIntent@", iHashCode)));
    }

    public final void zzv(ListenerHolder.ListenerKey listenerKey, boolean z, TaskCompletionSource taskCompletionSource) {
        SimpleArrayMap simpleArrayMap = this.b;
        synchronized (simpleArrayMap) {
            try {
                e9b e9bVar = (e9b) simpleArrayMap.remove(listenerKey);
                if (e9bVar == null) {
                    taskCompletionSource.setResult(Boolean.FALSE);
                    return;
                }
                e9bVar.a.zza().clear();
                if (!z) {
                    taskCompletionSource.setResult(Boolean.TRUE);
                } else if (a(com.google.android.gms.location.zzn.zzj)) {
                    zzu zzuVar = (zzu) getService();
                    Parcelable.Creator<zzed> creator = zzed.CREATOR;
                    int iIdentityHashCode = System.identityHashCode(e9bVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(iIdentityHashCode).length() + 18);
                    sb.append("ILocationListener@");
                    sb.append(iIdentityHashCode);
                    zzuVar.zzx(zzed.zza(null, e9bVar, sb.toString()), new q4b(Boolean.TRUE, taskCompletionSource));
                } else {
                    ((zzu) getService()).zzv(new zzeh(2, null, e9bVar, null, null, new m5b(Boolean.TRUE, taskCompletionSource), null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzw(ListenerHolder.ListenerKey listenerKey, boolean z, TaskCompletionSource taskCompletionSource) {
        SimpleArrayMap simpleArrayMap = this.c;
        synchronized (simpleArrayMap) {
            try {
                i7b i7bVar = (i7b) simpleArrayMap.remove(listenerKey);
                if (i7bVar == null) {
                    taskCompletionSource.setResult(Boolean.FALSE);
                    return;
                }
                i7bVar.a.zza().clear();
                if (!z) {
                    taskCompletionSource.setResult(Boolean.TRUE);
                } else if (a(com.google.android.gms.location.zzn.zzj)) {
                    zzu zzuVar = (zzu) getService();
                    Parcelable.Creator<zzed> creator = zzed.CREATOR;
                    int iIdentityHashCode = System.identityHashCode(i7bVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(iIdentityHashCode).length() + 18);
                    sb.append("ILocationCallback@");
                    sb.append(iIdentityHashCode);
                    zzuVar.zzx(zzed.zzb(null, i7bVar, sb.toString()), new q4b(Boolean.TRUE, taskCompletionSource));
                } else {
                    ((zzu) getService()).zzv(new zzeh(2, null, null, i7bVar, null, new m5b(Boolean.TRUE, taskCompletionSource), null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzx(PendingIntent pendingIntent, TaskCompletionSource taskCompletionSource, Object obj) {
        if (a(com.google.android.gms.location.zzn.zzj)) {
            ((zzu) getService()).zzx(zzed.zzc(pendingIntent), new q4b(null, taskCompletionSource));
        } else {
            ((zzu) getService()).zzv(new zzeh(2, null, null, null, pendingIntent, new m5b(null, taskCompletionSource), null));
        }
    }

    public final void zzy(TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzg)) {
            ((zzu) getService()).zzz(true, new q4b(null, taskCompletionSource));
        } else {
            ((zzu) getService()).zzy(true);
            taskCompletionSource.setResult(null);
        }
    }

    public final void zzz(TaskCompletionSource taskCompletionSource) {
        if (a(com.google.android.gms.location.zzn.zzg)) {
            ((zzu) getService()).zzz(false, new q4b(Boolean.TRUE, taskCompletionSource));
        } else {
            ((zzu) getService()).zzy(false);
            taskCompletionSource.setResult(Boolean.TRUE);
        }
    }
}
