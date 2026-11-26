package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes4.dex */
public final class zabw extends zap {
    public TaskCompletionSource g;

    public static zabw zaa(Activity activity) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
        zabw zabwVar = (zabw) fragment.getCallbackOrNull("GmsAvailabilityHelper", zabw.class);
        if (zabwVar != null) {
            if (zabwVar.g.getTask().isComplete()) {
                zabwVar.g = new TaskCompletionSource();
            }
            return zabwVar;
        }
        zabw zabwVar2 = new zabw(fragment, GoogleApiAvailability.getInstance());
        zabwVar2.g = new TaskCompletionSource();
        fragment.addCallback("GmsAvailabilityHelper", zabwVar2);
        return zabwVar2;
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void b(ConnectionResult connectionResult, int i) {
        String errorMessage = connectionResult.getErrorMessage();
        if (errorMessage == null) {
            errorMessage = "Error connecting to Google Play services";
        }
        this.g.setException(new ApiException(new Status(connectionResult, errorMessage, connectionResult.getErrorCode())));
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void c() {
        Activity lifecycleActivity = this.b.getLifecycleActivity();
        if (lifecycleActivity == null) {
            this.g.trySetException(new ApiException(new Status(8)));
            return;
        }
        int iIsGooglePlayServicesAvailable = this.f.isGooglePlayServicesAvailable(lifecycleActivity);
        TaskCompletionSource taskCompletionSource = this.g;
        if (iIsGooglePlayServicesAvailable == 0) {
            taskCompletionSource.trySetResult(null);
        } else {
            if (taskCompletionSource.getTask().isComplete()) {
                return;
            }
            zaf(new ConnectionResult(iIsGooglePlayServicesAvailable, null), 0);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onDestroy() {
        super.onDestroy();
        this.g.trySetException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    public final Task zab() {
        return this.g.getTask();
    }
}
