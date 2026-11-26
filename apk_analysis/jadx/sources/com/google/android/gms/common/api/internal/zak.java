package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.ag;
import defpackage.lla;
import defpackage.qla;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zak extends zap {
    public final SparseArray g;

    public zak(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.getInstance());
        this.g = new SparseArray();
        lifecycleFragment.addCallback("AutoManageHelper", this);
    }

    public static zak zaa(LifecycleActivity lifecycleActivity) {
        LifecycleFragment lifecycleFragmentA = LifecycleCallback.a(lifecycleActivity);
        zak zakVar = (zak) lifecycleFragmentA.getCallbackOrNull("AutoManageHelper", zak.class);
        return zakVar != null ? zakVar : new zak(lifecycleFragmentA);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void b(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        lla llaVar = (lla) this.g.get(i);
        if (llaVar != null) {
            zac(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = llaVar.l;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void c() {
        for (int i = 0; i < this.g.size(); i++) {
            lla llaVarD = d(i);
            if (llaVarD != null) {
                llaVarD.b.connect();
            }
        }
    }

    public final lla d(int i) {
        SparseArray sparseArray = this.g;
        if (sparseArray.size() <= i) {
            return null;
        }
        return (lla) sparseArray.get(sparseArray.keyAt(i));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.g.size(); i++) {
            lla llaVarD = d(i);
            if (llaVarD != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(llaVarD.a);
                printWriter.println(StringUtils.PROCESS_POSTFIX_DELIMITER);
                llaVarD.b.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        SparseArray sparseArray = this.g;
        boolean z = this.c;
        String strValueOf = String.valueOf(sparseArray);
        StringBuilder sb = new StringBuilder(String.valueOf(z).length() + 9 + strValueOf.length());
        sb.append("onStart ");
        sb.append(z);
        sb.append(" ");
        sb.append(strValueOf);
        Log.d("AutoManageHelper", sb.toString());
        if (this.d.get() == null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                lla llaVarD = d(i);
                if (llaVarD != null) {
                    llaVarD.b.connect();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        for (int i = 0; i < this.g.size(); i++) {
            lla llaVarD = d(i);
            if (llaVarD != null) {
                llaVarD.b.disconnect();
            }
        }
    }

    public final void zab(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(googleApiClient, "GoogleApiClient instance cannot be null");
        SparseArray sparseArray = this.g;
        int iIndexOfKey = sparseArray.indexOfKey(i);
        Preconditions.checkState(iIndexOfKey < 0, ag.d(new StringBuilder(String.valueOf(i).length() + 43), "Already managing a GoogleApiClient with id ", i));
        qla qlaVar = (qla) this.d.get();
        boolean z = this.c;
        String strValueOf = String.valueOf(qlaVar);
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 32 + String.valueOf(z).length() + 1 + strValueOf.length());
        sb.append("starting AutoManage for client ");
        sb.append(i);
        sb.append(" ");
        sb.append(z);
        sb.append(" ");
        sb.append(strValueOf);
        Log.d("AutoManageHelper", sb.toString());
        lla llaVar = new lla(this, i, googleApiClient, onConnectionFailedListener);
        googleApiClient.registerConnectionFailedListener(llaVar);
        sparseArray.put(i, llaVar);
        if (this.c && qlaVar == null) {
            Log.d("AutoManageHelper", "connecting ".concat(googleApiClient.toString()));
            googleApiClient.connect();
        }
    }

    public final void zac(int i) {
        SparseArray sparseArray = this.g;
        lla llaVar = (lla) sparseArray.get(i);
        sparseArray.remove(i);
        if (llaVar != null) {
            GoogleApiClient googleApiClient = llaVar.b;
            googleApiClient.unregisterConnectionFailedListener(llaVar);
            googleApiClient.disconnect();
        }
    }
}
