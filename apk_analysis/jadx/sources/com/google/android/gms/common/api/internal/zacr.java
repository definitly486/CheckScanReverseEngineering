package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.nka;
import defpackage.oka;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zacr<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    public final WeakReference g;
    public final oka h;
    public ResultTransform a = null;
    public zacr b = null;
    public volatile ResultCallbacks c = null;
    public PendingResult d = null;
    public final Object e = new Object();
    public Status f = null;
    public boolean i = false;

    public zacr(WeakReference weakReference) {
        Preconditions.checkNotNull(weakReference, "GoogleApiClient reference must not be null");
        this.g = weakReference;
        GoogleApiClient googleApiClient = (GoogleApiClient) weakReference.get();
        this.h = new oka(this, googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    public static final void d(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w("TransformedResultImpl", "Unable to release ".concat(String.valueOf(result)), e);
            }
        }
    }

    public final void a() {
        if (this.a == null && this.c == null) {
            return;
        }
        GoogleApiClient googleApiClient = (GoogleApiClient) this.g.get();
        if (!this.i && this.a != null && googleApiClient != null) {
            googleApiClient.zao(this);
            this.i = true;
        }
        Status status = this.f;
        if (status != null) {
            c(status);
            return;
        }
        PendingResult pendingResult = this.d;
        if (pendingResult != null) {
            pendingResult.setResultCallback(this);
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final void andFinally(ResultCallbacks<? super R> resultCallbacks) {
        synchronized (this.e) {
            Preconditions.checkState(this.c == null, "Cannot call andFinally() twice.");
            Preconditions.checkState(this.a == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.c = resultCallbacks;
            a();
        }
    }

    public final void b(Status status) {
        synchronized (this.e) {
            this.f = status;
            c(status);
        }
    }

    public final void c(Status status) {
        synchronized (this.e) {
            try {
                ResultTransform resultTransform = this.a;
                if (resultTransform != null) {
                    ((zacr) Preconditions.checkNotNull(this.b)).b((Status) Preconditions.checkNotNull(resultTransform.onFailure(status), "onFailure must not return null"));
                } else {
                    if ((this.c == null || ((GoogleApiClient) this.g.get()) == null) ? false : true) {
                        ((ResultCallbacks) Preconditions.checkNotNull(this.c)).onFailure(status);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(Result result) {
        synchronized (this.e) {
            try {
                if (!result.getStatus().isSuccess()) {
                    b(result.getStatus());
                    d(result);
                } else if (this.a != null) {
                    zacg.zaa().submit(new nka(this, result));
                } else {
                    if ((this.c == null || ((GoogleApiClient) this.g.get()) == null) ? false : true) {
                        ((ResultCallbacks) Preconditions.checkNotNull(this.c)).onSuccess(result);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        zacr zacrVar;
        synchronized (this.e) {
            Preconditions.checkState(this.a == null, "Cannot call then() twice.");
            Preconditions.checkState(this.c == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.a = resultTransform;
            zacrVar = new zacr(this.g);
            this.b = zacrVar;
            a();
        }
        return zacrVar;
    }

    public final void zaa(PendingResult pendingResult) {
        synchronized (this.e) {
            this.d = pendingResult;
            a();
        }
    }
}
