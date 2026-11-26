package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import com.google.android.gms.internal.base.zar;
import defpackage.ah;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class NonGmsServiceBrokerClient implements Api.Client, ServiceConnection {
    public final String b;
    public final String c;
    public final ComponentName d;
    public final Context e;
    public final ConnectionCallbacks f;
    public final zar g;
    public final OnConnectionFailedListener h;
    public IBinder i;
    public boolean j;
    public String k;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r6 != null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NonGmsServiceBrokerClient(android.content.Context r2, android.os.Looper r3, java.lang.String r4, java.lang.String r5, android.content.ComponentName r6, com.google.android.gms.common.api.internal.ConnectionCallbacks r7, com.google.android.gms.common.api.internal.OnConnectionFailedListener r8) {
        /*
            r1 = this;
            r1.<init>()
            r0 = 0
            r1.j = r0
            r0 = 0
            r1.k = r0
            r1.e = r2
            com.google.android.gms.internal.base.zar r2 = new com.google.android.gms.internal.base.zar
            r2.<init>(r3)
            r1.g = r2
            r1.f = r7
            r1.h = r8
            if (r4 == 0) goto L1e
            if (r5 == 0) goto L1e
            if (r6 != 0) goto L27
            r6 = r0
            goto L20
        L1e:
            if (r6 == 0) goto L27
        L20:
            r1.b = r4
            r1.c = r5
            r1.d = r6
            return
        L27:
            java.lang.String r1 = "Must specify either package or component, but not both"
            defpackage.xg.d(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient.<init>(android.content.Context, android.os.Looper, java.lang.String, java.lang.String, android.content.ComponentName, com.google.android.gms.common.api.internal.ConnectionCallbacks, com.google.android.gms.common.api.internal.OnConnectionFailedListener):void");
    }

    public final void a() {
        if (Thread.currentThread() == this.g.getLooper().getThread()) {
            return;
        }
        ah.f("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
    }

    public final void b() {
        String.valueOf(this.i);
        String.valueOf(this.j);
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void connect(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        a();
        b();
        if (isConnected()) {
            try {
                disconnect("connect() called when already connected");
            } catch (Exception unused) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.d;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.b).setAction(this.c);
            }
            boolean zBindService = this.e.bindService(intent, this, GmsClientSupervisor.getDefaultBindFlags());
            this.j = zBindService;
            if (!zBindService) {
                this.i = null;
                this.h.onConnectionFailed(new ConnectionResult(16));
            }
            b();
        } catch (SecurityException e) {
            this.j = false;
            this.i = null;
            throw e;
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        a();
        b();
        try {
            this.e.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.j = false;
        this.i = null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] getAvailableFeatures() {
        return new Feature[0];
    }

    public IBinder getBinder() {
        a();
        return this.i;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String getEndpointPackageName() {
        String str = this.b;
        if (str != null) {
            return str;
        }
        ComponentName componentName = this.d;
        Preconditions.checkNotNull(componentName);
        return componentName.getPackageName();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String getLastDisconnectMessage() {
        return this.k;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] getRequiredFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Set<Scope> getScopesForConnectionlessNonSignIn() {
        return Collections.EMPTY_SET;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final IBinder getServiceBrokerBinder() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Intent getSignInIntent() {
        return new Intent();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnected() {
        a();
        return this.i != null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnecting() {
        a();
        return this.j;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        this.g.post(new Runnable() { // from class: ika
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                NonGmsServiceBrokerClient nonGmsServiceBrokerClient = this.b;
                nonGmsServiceBrokerClient.j = false;
                nonGmsServiceBrokerClient.i = iBinder;
                nonGmsServiceBrokerClient.b();
                nonGmsServiceBrokerClient.f.onConnected(new Bundle());
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.g.post(new Runnable() { // from class: cka
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                NonGmsServiceBrokerClient nonGmsServiceBrokerClient = this.b;
                nonGmsServiceBrokerClient.j = false;
                nonGmsServiceBrokerClient.i = null;
                nonGmsServiceBrokerClient.b();
                nonGmsServiceBrokerClient.f.onConnectionSuspended(1);
            }
        });
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void onUserSignOut(BaseGmsClient.SignOutCallbacks signOutCallbacks) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean providesSignIn() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresAccount() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresGooglePlayServices() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return false;
    }

    public final void zaa(String str) {
    }

    public final void zab(AttributionSourceWrapper attributionSourceWrapper) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect(String str) {
        a();
        this.k = str;
        disconnect();
    }

    public NonGmsServiceBrokerClient(Context context, Looper looper, ComponentName componentName, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, null, null, componentName, connectionCallbacks, onConnectionFailedListener);
    }

    public NonGmsServiceBrokerClient(Context context, Looper looper, String str, String str2, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, str, str2, null, connectionCallbacks, onConnectionFailedListener);
    }
}
