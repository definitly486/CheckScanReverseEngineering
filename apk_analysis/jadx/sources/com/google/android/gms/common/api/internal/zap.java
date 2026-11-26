package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.internal.base.zar;
import defpackage.qla;
import defpackage.vla;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zap extends LifecycleCallback implements DialogInterface.OnCancelListener {
    public volatile boolean c;
    public final AtomicReference d;
    public final zar e;
    public final GoogleApiAvailability f;

    public zap(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.d = new AtomicReference(null);
        this.e = new zar(Looper.getMainLooper());
        this.f = googleApiAvailability;
    }

    public abstract void b(ConnectionResult connectionResult, int i);

    public abstract void c();

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onActivityResult(int i, int i2, Intent intent) {
        AtomicReference atomicReference = this.d;
        qla qlaVar = (qla) atomicReference.get();
        if (i != 1) {
            if (i == 2) {
                int iIsGooglePlayServicesAvailable = this.f.isGooglePlayServicesAvailable(getActivity());
                if (iIsGooglePlayServicesAvailable == 0) {
                    atomicReference.set(null);
                    c();
                    return;
                } else {
                    if (qlaVar == null) {
                        return;
                    }
                    if (qlaVar.b.getErrorCode() == 18 && iIsGooglePlayServicesAvailable == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            atomicReference.set(null);
            c();
            return;
        } else if (i2 == 0) {
            if (qlaVar != null) {
                ConnectionResult connectionResult = new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, qlaVar.b.toString());
                int i3 = qlaVar.a;
                atomicReference.set(null);
                b(connectionResult, i3);
                return;
            }
            return;
        }
        if (qlaVar != null) {
            ConnectionResult connectionResult2 = qlaVar.b;
            int i4 = qlaVar.a;
            atomicReference.set(null);
            b(connectionResult2, i4);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        ConnectionResult connectionResult = new ConnectionResult(13, null);
        AtomicReference atomicReference = this.d;
        qla qlaVar = (qla) atomicReference.get();
        int i = qlaVar == null ? -1 : qlaVar.a;
        atomicReference.set(null);
        b(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.d.set(bundle.getBoolean("resolving_error", false) ? new qla(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        qla qlaVar = (qla) this.d.get();
        if (qlaVar == null) {
            return;
        }
        ConnectionResult connectionResult = qlaVar.b;
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", qlaVar.a);
        bundle.putInt("failed_status", connectionResult.getErrorCode());
        bundle.putParcelable("failed_resolution", connectionResult.getResolution());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        this.c = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.c = false;
    }

    public final void zaf(ConnectionResult connectionResult, int i) {
        AtomicReference atomicReference;
        qla qlaVar = new qla(connectionResult, i);
        do {
            atomicReference = this.d;
            if (atomicReference.compareAndSet(null, qlaVar)) {
                this.e.post(new vla(this, qlaVar));
                return;
            }
        } while (atomicReference.get() == null);
    }
}
