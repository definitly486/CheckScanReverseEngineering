package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.zau;
import com.google.android.gms.internal.base.zar;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.dg;
import defpackage.fg;
import defpackage.kv2;
import defpackage.n1;
import defpackage.rja;
import defpackage.sja;
import defpackage.uja;
import defpackage.vja;
import defpackage.xja;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zabk implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zat {
    public final LinkedList a;
    public final Api.Client b;
    public final ApiKey l;
    public final zaaa m;
    public final HashSet n;
    public final HashMap o;
    public final int p;
    public final zacl q;
    public boolean r;
    public final ArrayList s;
    public ConnectionResult t;
    public int u;
    public final /* synthetic */ GoogleApiManager v;

    public zabk(GoogleApiManager googleApiManager, GoogleApi googleApi) {
        Objects.requireNonNull(googleApiManager);
        this.v = googleApiManager;
        this.a = new LinkedList();
        this.n = new HashSet();
        this.o = new HashMap();
        this.s = new ArrayList();
        this.t = null;
        this.u = 0;
        zar zarVar = googleApiManager.o;
        Api.Client clientZaf = googleApi.zaf(zarVar.getLooper(), this);
        this.b = clientZaf;
        this.l = googleApi.getApiKey();
        this.m = new zaaa();
        this.p = googleApi.zab();
        if (clientZaf.requiresSignIn()) {
            this.q = googleApi.zac(googleApiManager.f, zarVar);
        } else {
            this.q = null;
        }
    }

    public final void a() {
        Api.Client client = this.b;
        zah();
        j(ConnectionResult.RESULT_SUCCESS);
        if (this.r) {
            GoogleApiManager googleApiManager = this.v;
            zar zarVar = googleApiManager.o;
            ApiKey apiKey = this.l;
            zarVar.removeMessages(11, apiKey);
            googleApiManager.o.removeMessages(9, apiKey);
            this.r = false;
        }
        Iterator it = this.o.values().iterator();
        while (it.hasNext()) {
            RegisterListenerMethod registerListenerMethod = ((zacc) it.next()).zaa;
            if (k(registerListenerMethod.getRequiredFeatures()) != null) {
                it.remove();
            } else {
                try {
                    registerListenerMethod.a(client, new TaskCompletionSource<>());
                } catch (DeadObjectException unused) {
                    onConnectionSuspended(3);
                    client.disconnect("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException e) {
                    e = e;
                    Log.e("GoogleApiManager", "Failed to register listener on re-connection.", e);
                    it.remove();
                } catch (RuntimeException e2) {
                    e = e2;
                    Log.e("GoogleApiManager", "Failed to register listener on re-connection.", e);
                    it.remove();
                }
            }
        }
        d();
        h();
    }

    public final void b(int i) {
        zah();
        this.r = true;
        String lastDisconnectMessage = this.b.getLastDisconnectMessage();
        zaaa zaaaVar = this.m;
        zaaaVar.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (lastDisconnectMessage != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(lastDisconnectMessage);
        }
        zaaaVar.a(new Status(20, sb.toString()), true);
        GoogleApiManager googleApiManager = this.v;
        zar zarVar = googleApiManager.o;
        ApiKey apiKey = this.l;
        zarVar.sendMessageDelayed(Message.obtain(zarVar, 9, apiKey), 5000L);
        zar zarVar2 = googleApiManager.o;
        zarVar2.sendMessageDelayed(Message.obtain(zarVar2, 11, apiKey), 120000L);
        googleApiManager.h.zac();
        Iterator it = this.o.values().iterator();
        while (it.hasNext()) {
            ((zacc) it.next()).zac.run();
        }
    }

    public final boolean c(ConnectionResult connectionResult) {
        synchronized (GoogleApiManager.r) {
            try {
                GoogleApiManager googleApiManager = this.v;
                if (googleApiManager.l == null || !googleApiManager.m.contains(this.l)) {
                    return false;
                }
                googleApiManager.l.zaf(connectionResult, this.p);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        LinkedList linkedList = this.a;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zai zaiVar = (zai) arrayList.get(i);
            if (!this.b.isConnected()) {
                return;
            }
            if (e(zaiVar)) {
                linkedList.remove(zaiVar);
            }
        }
    }

    public final boolean e(zai zaiVar) {
        if (!(zaiVar instanceof zac)) {
            zaiVar.zaf(this.m, zap());
            try {
                zaiVar.zag(this);
                return true;
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                this.b.disconnect("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        zac zacVar = (zac) zaiVar;
        Feature featureK = k(zacVar.zaa(this));
        if (featureK == null) {
            zaiVar.zaf(this.m, zap());
            try {
                zaiVar.zag(this);
                return true;
            } catch (DeadObjectException unused2) {
                onConnectionSuspended(1);
                this.b.disconnect("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        String name = this.b.getClass().getName();
        String name2 = featureK.getName();
        long version = featureK.getVersion();
        int length = name.length();
        StringBuilder sb = new StringBuilder(length + 53 + String.valueOf(name2).length() + 2 + String.valueOf(version).length() + 2);
        kv2.c(sb, name, " could not execute call because it requires feature (", name2, ", ");
        sb.append(version);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        GoogleApiManager googleApiManager = this.v;
        if (!googleApiManager.p || !zacVar.zab(this)) {
            zacVar.zae(new UnsupportedApiCallException(featureK));
            return true;
        }
        int iZac = zacVar.zac(this);
        vja vjaVar = new vja(this.l, featureK);
        ArrayList arrayList = this.s;
        int iIndexOf = arrayList.indexOf(vjaVar);
        if (iIndexOf >= 0) {
            vja vjaVar2 = (vja) arrayList.get(iIndexOf);
            googleApiManager.o.removeMessages(15, vjaVar2);
            googleApiManager.o.sendMessageDelayed(Message.obtain(googleApiManager.o, 15, vjaVar2), 5000L);
            return false;
        }
        arrayList.add(vjaVar);
        googleApiManager.o.sendMessageDelayed(Message.obtain(googleApiManager.o, 15, vjaVar), 5000L);
        googleApiManager.o.sendMessageDelayed(Message.obtain(googleApiManager.o, 16, vjaVar), 120000L);
        ConnectionResult connectionResult = new ConnectionResult(2, null, null, Integer.valueOf(iZac));
        if (c(connectionResult)) {
            String name3 = featureK.getName();
            long version2 = featureK.getVersion();
            StringBuilder sb2 = new StringBuilder(String.valueOf(name3).length() + 61 + String.valueOf(version2).length());
            n1.d(sb2, "A dialog should be displayed for missing feature: ", name3, ", version: ");
            sb2.append(version2);
            Log.w("GoogleApiManager", sb2.toString());
            return false;
        }
        if (!googleApiManager.e(connectionResult, this.p)) {
            return false;
        }
        String name4 = featureK.getName();
        long version3 = featureK.getVersion();
        StringBuilder sb3 = new StringBuilder(String.valueOf(name4).length() + 55 + String.valueOf(version3).length());
        n1.d(sb3, "Notification displayed for missing feature: ", name4, ", version: ");
        sb3.append(version3);
        Log.w("GoogleApiManager", sb3.toString());
        return false;
    }

    public final void f(Status status, Exception exc, boolean z) {
        Preconditions.checkHandlerThread(this.v.o);
        if ((status == null) == (exc == null)) {
            fg.c("Status XOR exception should be null");
            return;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            zai zaiVar = (zai) it.next();
            if (!z || zaiVar.zac == 2) {
                if (status != null) {
                    zaiVar.zad(status);
                } else {
                    zaiVar.zae(exc);
                }
                it.remove();
            }
        }
    }

    public final void g(Status status) {
        Preconditions.checkHandlerThread(this.v.o);
        f(status, null, false);
    }

    public final void h() {
        GoogleApiManager googleApiManager = this.v;
        zar zarVar = googleApiManager.o;
        ApiKey apiKey = this.l;
        zarVar.removeMessages(12, apiKey);
        zar zarVar2 = googleApiManager.o;
        zarVar2.sendMessageDelayed(zarVar2.obtainMessage(12, apiKey), googleApiManager.b);
    }

    public final boolean i(boolean z) {
        Preconditions.checkHandlerThread(this.v.o);
        Api.Client client = this.b;
        if (!client.isConnected() || !this.o.isEmpty()) {
            return false;
        }
        zaaa zaaaVar = this.m;
        if (zaaaVar.a.isEmpty() && zaaaVar.b.isEmpty()) {
            client.disconnect("Timing out service connection.");
            return true;
        }
        if (!z) {
            return false;
        }
        h();
        return false;
    }

    public final void j(ConnectionResult connectionResult) {
        HashSet hashSet = this.n;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((zal) it.next()).zac(this.l, connectionResult, com.google.android.gms.common.internal.Objects.equal(connectionResult, ConnectionResult.RESULT_SUCCESS) ? this.b.getEndpointPackageName() : null);
        }
        hashSet.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Feature k(Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] availableFeatures = this.b.getAvailableFeatures();
            if (availableFeatures == null) {
                availableFeatures = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(availableFeatures.length);
            for (Feature feature : availableFeatures) {
                arrayMap.put(feature.getName(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                Long l = (Long) arrayMap.get(feature2.getName());
                if (l == null || l.longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        GoogleApiManager googleApiManager = this.v;
        if (Looper.myLooper() == googleApiManager.o.getLooper()) {
            a();
        } else {
            googleApiManager.o.post(new rja(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zac(connectionResult, null);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        GoogleApiManager googleApiManager = this.v;
        if (Looper.myLooper() == googleApiManager.o.getLooper()) {
            b(i);
        } else {
            googleApiManager.o.post(new sja(this, i));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zat
    public final void zaa(ConnectionResult connectionResult, Api api, boolean z) {
        throw null;
    }

    public final void zab(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.v.o);
        Api.Client client = this.b;
        String name = client.getClass().getName();
        String strValueOf = String.valueOf(connectionResult);
        client.disconnect(dg.c(new StringBuilder(name.length() + 25 + strValueOf.length()), "onSignInFailed for ", name, " with ", strValueOf));
        zac(connectionResult, null);
    }

    public final void zac(ConnectionResult connectionResult, Exception exc) {
        GoogleApiManager googleApiManager = this.v;
        Preconditions.checkHandlerThread(googleApiManager.o);
        zacl zaclVar = this.q;
        if (zaclVar != null) {
            zaclVar.zad();
        }
        zah();
        googleApiManager.h.zac();
        j(connectionResult);
        if ((this.b instanceof zau) && connectionResult.getErrorCode() != 24) {
            googleApiManager.c = true;
            zar zarVar = googleApiManager.o;
            zarVar.sendMessageDelayed(zarVar.obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            g(GoogleApiManager.q);
            return;
        }
        if (connectionResult.getErrorCode() == 25) {
            g(GoogleApiManager.c(this.l, connectionResult));
            return;
        }
        LinkedList linkedList = this.a;
        if (linkedList.isEmpty()) {
            this.t = connectionResult;
            return;
        }
        if (exc != null) {
            Preconditions.checkHandlerThread(googleApiManager.o);
            f(null, exc, false);
            return;
        }
        boolean z = googleApiManager.p;
        ApiKey apiKey = this.l;
        if (!z) {
            g(GoogleApiManager.c(apiKey, connectionResult));
            return;
        }
        f(GoogleApiManager.c(apiKey, connectionResult), null, true);
        if (linkedList.isEmpty() || c(connectionResult) || googleApiManager.e(connectionResult, this.p)) {
            return;
        }
        if (connectionResult.getErrorCode() == 18) {
            this.r = true;
        }
        if (!this.r) {
            g(GoogleApiManager.c(apiKey, connectionResult));
        } else {
            zar zarVar2 = googleApiManager.o;
            zarVar2.sendMessageDelayed(Message.obtain(zarVar2, 9, apiKey), 5000L);
        }
    }

    public final void zad(zai zaiVar) {
        Preconditions.checkHandlerThread(this.v.o);
        boolean zIsConnected = this.b.isConnected();
        LinkedList linkedList = this.a;
        if (zIsConnected) {
            if (e(zaiVar)) {
                h();
                return;
            } else {
                linkedList.add(zaiVar);
                return;
            }
        }
        linkedList.add(zaiVar);
        ConnectionResult connectionResult = this.t;
        if (connectionResult == null || !connectionResult.hasResolution()) {
            zam();
        } else {
            zac(this.t, null);
        }
    }

    public final void zae() {
        Preconditions.checkHandlerThread(this.v.o);
        g(GoogleApiManager.zaa);
        this.m.zad();
        for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.o.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
            zad(new zah(listenerKey, new TaskCompletionSource()));
        }
        j(new ConnectionResult(4));
        Api.Client client = this.b;
        if (client.isConnected()) {
            client.onUserSignOut(new uja(this));
        }
    }

    public final Api.Client zaf() {
        return this.b;
    }

    public final Map zag() {
        return this.o;
    }

    public final void zah() {
        Preconditions.checkHandlerThread(this.v.o);
        this.t = null;
    }

    public final ConnectionResult zai() {
        Preconditions.checkHandlerThread(this.v.o);
        return this.t;
    }

    public final void zaj() {
        Preconditions.checkHandlerThread(this.v.o);
        if (this.r) {
            zam();
        }
    }

    public final void zak() {
        GoogleApiManager googleApiManager = this.v;
        Preconditions.checkHandlerThread(googleApiManager.o);
        boolean z = this.r;
        if (z) {
            if (z) {
                zar zarVar = googleApiManager.o;
                ApiKey apiKey = this.l;
                zarVar.removeMessages(11, apiKey);
                googleApiManager.o.removeMessages(9, apiKey);
                this.r = false;
            }
            g(googleApiManager.g.isGooglePlayServicesAvailable(googleApiManager.f) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.b.disconnect("Timing out connection while resuming.");
        }
    }

    public final boolean zal() {
        return i(true);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void zam() {
        GoogleApiManager googleApiManager = this.v;
        Preconditions.checkHandlerThread(googleApiManager.o);
        Api.Client client = this.b;
        if (client.isConnected() || client.isConnecting()) {
            return;
        }
        try {
            int iZaa = googleApiManager.h.zaa(googleApiManager.f, client);
            if (iZaa == 0) {
                xja xjaVar = new xja(googleApiManager, client, this.l);
                if (client.requiresSignIn()) {
                    ((zacl) Preconditions.checkNotNull(this.q)).zac(xjaVar);
                }
                try {
                    client.connect(xjaVar);
                    return;
                } catch (SecurityException e) {
                    zac(new ConnectionResult(10), e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(iZaa, null);
            String name = client.getClass().getName();
            String string = connectionResult.toString();
            StringBuilder sb = new StringBuilder(name.length() + 35 + string.length());
            sb.append("The service for ");
            sb.append(name);
            sb.append(" is not available: ");
            sb.append(string);
            Log.w("GoogleApiManager", sb.toString());
            zac(connectionResult, null);
        } catch (IllegalStateException e2) {
            zac(new ConnectionResult(10), e2);
        }
    }

    public final void zan(zal zalVar) {
        Preconditions.checkHandlerThread(this.v.o);
        this.n.add(zalVar);
    }

    public final boolean zap() {
        return this.b.requiresSignIn();
    }

    public final int zaq() {
        return this.p;
    }
}
