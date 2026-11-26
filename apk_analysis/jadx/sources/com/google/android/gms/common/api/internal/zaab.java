package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zaab extends zap {
    public final ArraySet g;
    public final GoogleApiManager h;

    public zaab(LifecycleFragment lifecycleFragment, GoogleApiManager googleApiManager, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment, googleApiAvailability);
        this.g = new ArraySet();
        this.h = googleApiManager;
        lifecycleFragment.addCallback("ConnectionlessLifecycleHelper", this);
    }

    public static void zaa(Activity activity, GoogleApiManager googleApiManager, ApiKey apiKey) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
        zaab zaabVar = (zaab) fragment.getCallbackOrNull("ConnectionlessLifecycleHelper", zaab.class);
        if (zaabVar == null) {
            zaabVar = new zaab(fragment, googleApiManager, GoogleApiAvailability.getInstance());
        }
        Preconditions.checkNotNull(apiKey, "ApiKey cannot be null");
        zaabVar.g.add(apiKey);
        googleApiManager.zae(zaabVar);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void b(ConnectionResult connectionResult, int i) {
        this.h.zar(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void c() {
        this.h.zai();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onResume() {
        super.onResume();
        if (this.g.isEmpty()) {
            return;
        }
        this.h.zae(this);
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        if (this.g.isEmpty()) {
            return;
        }
        this.h.zae(this);
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        GoogleApiManager googleApiManager = this.h;
        googleApiManager.getClass();
        synchronized (GoogleApiManager.r) {
            try {
                if (googleApiManager.l == this) {
                    googleApiManager.l = null;
                    googleApiManager.m.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
