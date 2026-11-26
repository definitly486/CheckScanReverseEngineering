package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.GmsClientFlags;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.zan;
import com.google.android.gms.common.internal.zaq;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.internal.base.zar;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.aka;
import defpackage.bka;
import defpackage.dg;
import defpackage.via;
import defpackage.vja;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class GoogleApiManager implements Handler.Callback {
    public static GoogleApiManager s;
    public TelemetryData d;
    public TelemetryLoggingClient e;
    public final Context f;
    public final GoogleApiAvailability g;
    public final zaq h;
    public final zar o;
    public volatile boolean p;
    public static final Status zaa = new Status(4, "Sign-out occurred while this API call was in progress.");
    public static final Status q = new Status(4, "The user must be signed in to make this API call.");
    public static final Object r = new Object();
    public static volatile boolean t = false;
    public long b = 10000;
    public boolean c = false;
    public final AtomicInteger i = new AtomicInteger(1);
    public final AtomicInteger j = new AtomicInteger(0);
    public final ConcurrentHashMap k = new ConcurrentHashMap(5, 0.75f, 1);
    public zaab l = null;
    public final ArraySet m = new ArraySet();
    public final ArraySet n = new ArraySet();

    public GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.p = true;
        this.f = context;
        zar zarVar = new zar(looper, this);
        this.o = zarVar;
        this.g = googleApiAvailability;
        this.h = new zaq(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.p = false;
        }
        zarVar.sendMessage(zarVar.obtainMessage(6));
    }

    public static Status c(ApiKey apiKey, ConnectionResult connectionResult) {
        String strZaa = apiKey.zaa();
        String strValueOf = String.valueOf(connectionResult);
        return new Status(connectionResult, dg.c(new StringBuilder(String.valueOf(strZaa).length() + 63 + strValueOf.length()), "API: ", strZaa, " is not available on this device. Connection failed with: ", strValueOf));
    }

    public static void reportSignOut() {
        synchronized (r) {
            try {
                GoogleApiManager googleApiManager = s;
                if (googleApiManager != null) {
                    googleApiManager.j.incrementAndGet();
                    zar zarVar = googleApiManager.o;
                    zarVar.sendMessageAtFrontOfQueue(zarVar.obtainMessage(10));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static GoogleApiManager zaa(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (r) {
            try {
                googleApiManager = s;
                if (googleApiManager == null) {
                    Looper looper = GmsClientSupervisor.getOrStartHandlerThread().getLooper();
                    boolean zIsBindServiceOptimizationEnabled = GmsClientFlags.isBindServiceOptimizationEnabled(context.getPackageName());
                    t = zIsBindServiceOptimizationEnabled;
                    GoogleApiManager googleApiManager2 = new GoogleApiManager(context.getApplicationContext(), looper, GoogleApiAvailability.getInstance());
                    if (zIsBindServiceOptimizationEnabled) {
                        GmsClient.zag(zan.zaa(googleApiManager2.f));
                    }
                    s = googleApiManager2;
                    googleApiManager = googleApiManager2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return googleApiManager;
    }

    public static GoogleApiManager zab() {
        GoogleApiManager googleApiManager;
        synchronized (r) {
            Preconditions.checkNotNull(s, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = s;
        }
        return googleApiManager;
    }

    public static boolean zat() {
        return t;
    }

    public final zabk a(GoogleApi googleApi) {
        ApiKey apiKey = googleApi.getApiKey();
        ConcurrentHashMap concurrentHashMap = this.k;
        zabk zabkVar = (zabk) concurrentHashMap.get(apiKey);
        if (zabkVar == null) {
            zabkVar = new zabk(this, googleApi);
            concurrentHashMap.put(apiKey, zabkVar);
        }
        if (zabkVar.zap()) {
            this.n.add(apiKey);
        }
        zabkVar.zam();
        return zabkVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0056  */
    public final void b(TaskCompletionSource taskCompletionSource, int i, GoogleApi googleApi) {
        aka akaVar;
        GoogleApiManager googleApiManager;
        if (i != 0) {
            ApiKey apiKey = googleApi.getApiKey();
            if (d()) {
                RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
                boolean methodTimingTelemetryEnabled = true;
                if (config != null) {
                    if (config.getMethodInvocationTelemetryEnabled()) {
                        boolean methodTimingTelemetryEnabled2 = config.getMethodTimingTelemetryEnabled();
                        zabk zabkVar = (zabk) this.k.get(apiKey);
                        if (zabkVar == null) {
                            methodTimingTelemetryEnabled = methodTimingTelemetryEnabled2;
                        } else if (zabkVar.zaf() instanceof BaseGmsClient) {
                            BaseGmsClient baseGmsClient = (BaseGmsClient) zabkVar.zaf();
                            if (!baseGmsClient.hasConnectionInfo() || baseGmsClient.isConnecting()) {
                                methodTimingTelemetryEnabled = methodTimingTelemetryEnabled2;
                            } else {
                                ConnectionTelemetryConfiguration connectionTelemetryConfigurationA = aka.a(zabkVar, baseGmsClient, i);
                                if (connectionTelemetryConfigurationA != null) {
                                    zabkVar.u++;
                                    methodTimingTelemetryEnabled = connectionTelemetryConfigurationA.getMethodTimingTelemetryEnabled();
                                }
                            }
                        }
                    }
                    akaVar = null;
                    googleApiManager = this;
                }
                googleApiManager = this;
                akaVar = new aka(googleApiManager, i, apiKey, methodTimingTelemetryEnabled ? System.currentTimeMillis() : 0L, methodTimingTelemetryEnabled ? SystemClock.elapsedRealtime() : 0L);
            } else {
                akaVar = null;
                googleApiManager = this;
            }
            if (akaVar != null) {
                Task task = taskCompletionSource.getTask();
                final zar zarVar = googleApiManager.o;
                Objects.requireNonNull(zarVar);
                task.addOnCompleteListener(new Executor() { // from class: yja
                    @Override // java.util.concurrent.Executor
                    public final /* synthetic */ void execute(Runnable runnable) {
                        zarVar.post(runnable);
                    }
                }, akaVar);
            }
        }
    }

    public final boolean d() {
        if (this.c) {
            return false;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if (config != null && !config.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int iZab = this.h.zab(this.f, 203400000);
        return iZab == -1 || iZab == 0;
    }

    public final boolean e(ConnectionResult connectionResult, int i) {
        int errorCode = connectionResult.getErrorCode();
        GoogleApiAvailability googleApiAvailability = this.g;
        if (googleApiAvailability.zaj(errorCode)) {
            return googleApiAvailability.zad(this.f, connectionResult, i);
        }
        Log.w("GoogleApiManager", "Not showing notification since connectionResult is not user-facing: ".concat(String.valueOf(connectionResult)));
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:122:0x0265  */
    /* JADX WARN: Code duplicated, block: B:124:0x026b  */
    /* JADX WARN: Code duplicated, block: B:126:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:128:0x02ac  */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Feature[] featureArrZaa;
        int i = message.what;
        Context context = this.f;
        zabk zabkVar = null;
        zar zarVar = this.o;
        ConcurrentHashMap concurrentHashMap = this.k;
        switch (i) {
            case 1:
                this.b = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                zarVar.removeMessages(12);
                Iterator it = concurrentHashMap.keySet().iterator();
                while (it.hasNext()) {
                    zarVar.sendMessageDelayed(zarVar.obtainMessage(12, (ApiKey) it.next()), this.b);
                }
                return true;
            case 2:
                zal zalVar = (zal) message.obj;
                for (ApiKey apiKey : zalVar.zaa()) {
                    zabk zabkVar2 = (zabk) concurrentHashMap.get(apiKey);
                    if (zabkVar2 == null) {
                        zalVar.zac(apiKey, new ConnectionResult(13), null);
                        return true;
                    }
                    if (zabkVar2.b.isConnected()) {
                        zalVar.zac(apiKey, ConnectionResult.RESULT_SUCCESS, zabkVar2.zaf().getEndpointPackageName());
                    } else {
                        ConnectionResult connectionResultZai = zabkVar2.zai();
                        if (connectionResultZai != null) {
                            zalVar.zac(apiKey, connectionResultZai, null);
                        } else {
                            zabkVar2.zan(zalVar);
                            zabkVar2.zam();
                        }
                    }
                }
                return true;
            case 3:
                for (zabk zabkVar3 : concurrentHashMap.values()) {
                    zabkVar3.zah();
                    zabkVar3.zam();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zacb zacbVar = (zacb) message.obj;
                GoogleApi googleApi = zacbVar.zac;
                zabk zabkVarA = (zabk) concurrentHashMap.get(googleApi.getApiKey());
                if (zabkVarA == null) {
                    zabkVarA = a(googleApi);
                }
                if (!zabkVarA.zap() || this.j.get() == zacbVar.zab) {
                    zabkVarA.zad(zacbVar.zaa);
                    return true;
                }
                zacbVar.zaa.zad(zaa);
                zabkVarA.zae();
                return true;
            case 5:
                int i2 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                for (zabk zabkVar4 : concurrentHashMap.values()) {
                    if (zabkVar4.zaq() == i2) {
                        zabkVar = zabkVar4;
                        if (zabkVar != null) {
                            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 65);
                            sb.append("Could not find API instance ");
                            sb.append(i2);
                            sb.append(" while trying to fail enqueued calls.");
                            Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                            return true;
                        }
                        if (connectionResult.getErrorCode() == 13) {
                            zabkVar.g(c(zabkVar.l, connectionResult));
                            return true;
                        }
                        String errorString = this.g.getErrorString(connectionResult.getErrorCode());
                        String errorMessage = connectionResult.getErrorMessage();
                        zabkVar.g(new Status(17, dg.c(new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(errorMessage).length()), "Error resolution was canceled by the user, original error message: ", errorString, ": ", errorMessage)));
                        return true;
                    }
                }
                if (zabkVar != null) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 65);
                    sb2.append("Could not find API instance ");
                    sb2.append(i2);
                    sb2.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                    return true;
                }
                if (connectionResult.getErrorCode() == 13) {
                    zabkVar.g(c(zabkVar.l, connectionResult));
                    return true;
                }
                String errorString2 = this.g.getErrorString(connectionResult.getErrorCode());
                String errorMessage2 = connectionResult.getErrorMessage();
                zabkVar.g(new Status(17, dg.c(new StringBuilder(String.valueOf(errorString2).length() + 69 + String.valueOf(errorMessage2).length()), "Error resolution was canceled by the user, original error message: ", errorString2, ": ", errorMessage2)));
                return true;
            case 6:
                if (context.getApplicationContext() instanceof Application) {
                    BackgroundDetector.initialize((Application) context.getApplicationContext());
                    BackgroundDetector.getInstance().addListener(new b(this));
                    if (!BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                        this.b = 300000L;
                        return true;
                    }
                }
                return true;
            case 7:
                a((GoogleApi) message.obj);
                return true;
            case 9:
                if (concurrentHashMap.containsKey(message.obj)) {
                    ((zabk) concurrentHashMap.get(message.obj)).zaj();
                    return true;
                }
                return true;
            case 10:
                ArraySet arraySet = this.n;
                Iterator<E> it2 = arraySet.iterator();
                while (it2.hasNext()) {
                    zabk zabkVar5 = (zabk) concurrentHashMap.remove((ApiKey) it2.next());
                    if (zabkVar5 != null) {
                        zabkVar5.zae();
                    }
                }
                arraySet.clear();
                return true;
            case 11:
                if (concurrentHashMap.containsKey(message.obj)) {
                    ((zabk) concurrentHashMap.get(message.obj)).zak();
                    return true;
                }
                return true;
            case 12:
                if (concurrentHashMap.containsKey(message.obj)) {
                    ((zabk) concurrentHashMap.get(message.obj)).zal();
                    return true;
                }
                return true;
            case 14:
                via viaVar = (via) message.obj;
                ApiKey apiKey2 = viaVar.a;
                TaskCompletionSource taskCompletionSource = viaVar.b;
                if (concurrentHashMap.containsKey(apiKey2)) {
                    taskCompletionSource.setResult(Boolean.valueOf(((zabk) concurrentHashMap.get(apiKey2)).i(false)));
                    return true;
                }
                taskCompletionSource.setResult(Boolean.FALSE);
                return true;
            case 15:
                vja vjaVar = (vja) message.obj;
                if (concurrentHashMap.containsKey(vjaVar.a)) {
                    zabk zabkVar6 = (zabk) concurrentHashMap.get(vjaVar.a);
                    if (zabkVar6.s.contains(vjaVar) && !zabkVar6.r) {
                        if (zabkVar6.b.isConnected()) {
                            zabkVar6.d();
                            return true;
                        }
                        zabkVar6.zam();
                        return true;
                    }
                }
                return true;
            case 16:
                vja vjaVar2 = (vja) message.obj;
                if (concurrentHashMap.containsKey(vjaVar2.a)) {
                    zabk zabkVar7 = (zabk) concurrentHashMap.get(vjaVar2.a);
                    if (zabkVar7.s.remove(vjaVar2)) {
                        GoogleApiManager googleApiManager = zabkVar7.v;
                        googleApiManager.o.removeMessages(15, vjaVar2);
                        googleApiManager.o.removeMessages(16, vjaVar2);
                        Feature feature = vjaVar2.b;
                        LinkedList<zai> linkedList = zabkVar7.a;
                        ArrayList arrayList = new ArrayList(linkedList.size());
                        for (zai zaiVar : linkedList) {
                            if ((zaiVar instanceof zac) && (featureArrZaa = ((zac) zaiVar).zaa(zabkVar7)) != null && ArrayUtils.contains(featureArrZaa, feature)) {
                                arrayList.add(zaiVar);
                            }
                        }
                        int size = arrayList.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            zai zaiVar2 = (zai) arrayList.get(i3);
                            linkedList.remove(zaiVar2);
                            zaiVar2.zae(new UnsupportedApiCallException(feature));
                        }
                    }
                }
                return true;
            case 17:
                TelemetryData telemetryData = this.d;
                if (telemetryData != null) {
                    if (telemetryData.zaa() > 0 || d()) {
                        TelemetryLoggingClient client = this.e;
                        if (client == null) {
                            client = TelemetryLogging.getClient(context);
                            this.e = client;
                        }
                        client.log(telemetryData);
                    }
                    this.d = null;
                    return true;
                }
                return true;
            case 18:
                bka bkaVar = (bka) message.obj;
                long j = bkaVar.c;
                MethodInvocation methodInvocation = bkaVar.a;
                int i4 = bkaVar.b;
                if (j == 0) {
                    TelemetryData telemetryData2 = new TelemetryData(i4, Arrays.asList(methodInvocation));
                    TelemetryLoggingClient client2 = this.e;
                    if (client2 == null) {
                        client2 = TelemetryLogging.getClient(context);
                        this.e = client2;
                    }
                    client2.log(telemetryData2);
                    return true;
                }
                TelemetryData telemetryData3 = this.d;
                if (telemetryData3 != null) {
                    List listZab = telemetryData3.zab();
                    if (telemetryData3.zaa() != i4 || (listZab != null && listZab.size() >= bkaVar.d)) {
                        zarVar.removeMessages(17);
                        TelemetryData telemetryData4 = this.d;
                        if (telemetryData4 != null) {
                            if (telemetryData4.zaa() > 0 || d()) {
                                TelemetryLoggingClient client3 = this.e;
                                if (client3 == null) {
                                    client3 = TelemetryLogging.getClient(context);
                                    this.e = client3;
                                }
                                client3.log(telemetryData4);
                            }
                            this.d = null;
                        }
                    } else {
                        this.d.zac(methodInvocation);
                    }
                }
                if (this.d == null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(methodInvocation);
                    this.d = new TelemetryData(i4, arrayList2);
                    zarVar.sendMessageDelayed(zarVar.obtainMessage(17), j);
                    return true;
                }
                return true;
            case 19:
                this.c = false;
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(String.valueOf(i).length() + 20);
                sb3.append("Unknown message id: ");
                sb3.append(i);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }

    public final int zac() {
        return this.i.getAndIncrement();
    }

    public final void zad(GoogleApi googleApi) {
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(7, googleApi));
    }

    public final void zae(zaab zaabVar) {
        synchronized (r) {
            try {
                if (this.l != zaabVar) {
                    this.l = zaabVar;
                    this.m.clear();
                }
                this.m.addAll((Collection) zaabVar.g);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Task zah(Iterable iterable) {
        zal zalVar = new zal(iterable);
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(2, zalVar));
        return zalVar.zab();
    }

    public final void zai() {
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(3));
    }

    public final Task zaj(GoogleApi googleApi) {
        via viaVar = new via(googleApi.getApiKey());
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(14, viaVar));
        return viaVar.b.getTask();
    }

    public final void zak(GoogleApi googleApi, int i, BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zacb zacbVar = new zacb(new zae(i, apiMethodImpl), this.j.get(), googleApi);
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(4, zacbVar));
    }

    public final void zal(GoogleApi googleApi, int i, TaskApiCall taskApiCall, TaskCompletionSource taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        b(taskCompletionSource, taskApiCall.zab(), googleApi);
        zacb zacbVar = new zacb(new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper), this.j.get(), googleApi);
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(4, zacbVar));
    }

    public final Task zan(GoogleApi googleApi, RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        b(taskCompletionSource, registerListenerMethod.zab(), googleApi);
        zacb zacbVar = new zacb(new zaf(new zacc(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource), this.j.get(), googleApi);
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(8, zacbVar));
        return taskCompletionSource.getTask();
    }

    public final Task zao(GoogleApi googleApi, ListenerHolder.ListenerKey listenerKey, int i) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        b(taskCompletionSource, i, googleApi);
        zacb zacbVar = new zacb(new zah(listenerKey, taskCompletionSource), this.j.get(), googleApi);
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(13, zacbVar));
        return taskCompletionSource.getTask();
    }

    public final Handler zap() {
        return this.o;
    }

    public final void zar(ConnectionResult connectionResult, int i) {
        if (e(connectionResult, i)) {
            return;
        }
        zar zarVar = this.o;
        zarVar.sendMessage(zarVar.obtainMessage(5, i, 0, connectionResult));
    }
}
