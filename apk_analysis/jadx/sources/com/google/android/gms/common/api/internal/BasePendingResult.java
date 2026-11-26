package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zar;
import defpackage.ag;
import defpackage.bma;
import defpackage.pka;
import defpackage.zla;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {
    public static final zla o = new zla();
    public static final /* synthetic */ int zad = 0;
    public final Object a;
    public final CallbackHandler b;
    public final WeakReference c;
    public final CountDownLatch d;
    public final ArrayList e;
    public ResultCallback f;
    public final AtomicReference g;
    public Result h;
    public Status i;
    public volatile boolean j;
    public boolean k;
    public boolean l;
    public volatile zacr m;
    public boolean n;
    private bma resultGuardian;

    public BasePendingResult(GoogleApiClient googleApiClient) {
        this.a = new Object();
        this.d = new CountDownLatch(1);
        this.e = new ArrayList();
        this.g = new AtomicReference();
        this.n = false;
        this.b = new CallbackHandler(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.c = new WeakReference(googleApiClient);
    }

    public static void zal(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(result)), e);
            }
        }
    }

    public final Result a() {
        Result result;
        synchronized (this.a) {
            Preconditions.checkState(!this.j, "Result has already been consumed.");
            Preconditions.checkState(isReady(), "Result is not ready.");
            result = this.h;
            this.h = null;
            this.f = null;
            this.j = true;
        }
        pka pkaVar = (pka) this.g.getAndSet(null);
        if (pkaVar != null) {
            pkaVar.a.a.remove(this);
        }
        return (Result) Preconditions.checkNotNull(result);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(PendingResult.StatusListener statusListener) {
        Preconditions.checkArgument(statusListener != null, "Callback cannot be null.");
        synchronized (this.a) {
            try {
                if (isReady()) {
                    statusListener.onComplete(this.i);
                } else {
                    this.e.add(statusListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        if (j > 0) {
            Preconditions.checkNotMainThread("await must not be called on the UI thread when time is greater than zero.");
        }
        Preconditions.checkState(!this.j, "Result has already been consumed.");
        Preconditions.checkState(this.m == null, "Cannot await if then() has been called.");
        try {
            if (!this.d.await(j, timeUnit)) {
                forceFailureUnlessReady(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException unused) {
            forceFailureUnlessReady(Status.RESULT_INTERRUPTED);
        }
        Preconditions.checkState(isReady(), "Result is not ready.");
        return (R) a();
    }

    public final void b(Result result) {
        this.h = result;
        this.i = result.getStatus();
        this.d.countDown();
        if (this.k) {
            this.f = null;
        } else {
            ResultCallback resultCallback = this.f;
            if (resultCallback != null) {
                CallbackHandler callbackHandler = this.b;
                callbackHandler.removeMessages(2);
                callbackHandler.zaa(resultCallback, a());
            } else if (this.h instanceof Releasable) {
                this.resultGuardian = new bma(this);
            }
        }
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((PendingResult.StatusListener) arrayList.get(i)).onComplete(this.i);
        }
        arrayList.clear();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.a) {
            try {
                if (!this.k && !this.j) {
                    zal(this.h);
                    this.k = true;
                    b(createFailedResult(Status.RESULT_CANCELED));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract R createFailedResult(Status status);

    @Deprecated
    public final void forceFailureUnlessReady(Status status) {
        synchronized (this.a) {
            try {
                if (!isReady()) {
                    setResult(createFailedResult(status));
                    this.l = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final boolean isCanceled() {
        boolean z;
        synchronized (this.a) {
            z = this.k;
        }
        return z;
    }

    public final boolean isReady() {
        return this.d.getCount() == 0;
    }

    public final void setResult(R r) {
        synchronized (this.a) {
            try {
                if (this.l || this.k) {
                    zal(r);
                    return;
                }
                isReady();
                Preconditions.checkState(!isReady(), "Results have already been set");
                Preconditions.checkState(!this.j, "Result has already been consumed");
                b(r);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        synchronized (this.a) {
            try {
                if (resultCallback == null) {
                    this.f = null;
                    return;
                }
                boolean z = true;
                Preconditions.checkState(!this.j, "Result has already been consumed.");
                if (this.m != null) {
                    z = false;
                }
                Preconditions.checkState(z, "Cannot set callbacks if then() has been called.");
                if (isCanceled()) {
                    return;
                }
                if (isReady()) {
                    this.b.zaa(resultCallback, a());
                } else {
                    this.f = resultCallback;
                    CallbackHandler callbackHandler = this.b;
                    callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(2, this), timeUnit.toMillis(j));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> transformedResultThen;
        Preconditions.checkState(!this.j, "Result has already been consumed.");
        synchronized (this.a) {
            try {
                Preconditions.checkState(this.m == null, "Cannot call then() twice.");
                Preconditions.checkState(this.f == null, "Cannot call then() if callbacks are set.");
                Preconditions.checkState(!this.k, "Cannot call then() if result was canceled.");
                this.n = true;
                this.m = new zacr(this.c);
                transformedResultThen = this.m.then(resultTransform);
                if (isReady()) {
                    this.b.zaa(this.m, a());
                } else {
                    this.f = this.m;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return transformedResultThen;
    }

    public final boolean zaj() {
        boolean zIsCanceled;
        synchronized (this.a) {
            try {
                if (((GoogleApiClient) this.c.get()) == null || !this.n) {
                    cancel();
                }
                zIsCanceled = isCanceled();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zIsCanceled;
    }

    public final void zak() {
        boolean z = true;
        if (!this.n && !((Boolean) o.get()).booleanValue()) {
            z = false;
        }
        this.n = z;
    }

    public final void zan(pka pkaVar) {
        this.g.set(pkaVar);
    }

    public static class CallbackHandler<R extends Result> extends zar {
        public CallbackHandler() {
            this(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    Log.wtf("BasePendingResult", ag.d(new StringBuilder(String.valueOf(i).length() + 34), "Don't know how to handle message: ", i), new Exception());
                    return;
                } else {
                    ((BasePendingResult) message.obj).forceFailureUnlessReady(Status.RESULT_TIMEOUT);
                    return;
                }
            }
            Pair pair = (Pair) message.obj;
            ResultCallback resultCallback = (ResultCallback) pair.first;
            Result result = (Result) pair.second;
            try {
                resultCallback.onResult(result);
            } catch (RuntimeException e) {
                BasePendingResult.zal(result);
                throw e;
            }
        }

        public final void zaa(ResultCallback resultCallback, Result result) {
            zla zlaVar = BasePendingResult.o;
            sendMessage(obtainMessage(1, new Pair((ResultCallback) Preconditions.checkNotNull(resultCallback), result)));
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }
    }

    @Deprecated
    public BasePendingResult(Looper looper) {
        this.a = new Object();
        this.d = new CountDownLatch(1);
        this.e = new ArrayList();
        this.g = new AtomicReference();
        this.n = false;
        this.b = new CallbackHandler(looper);
        this.c = new WeakReference(null);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        Preconditions.checkNotMainThread("await must not be called on the UI thread");
        Preconditions.checkState(!this.j, "Result has already been consumed");
        Preconditions.checkState(this.m == null, "Cannot await if then() has been called.");
        try {
            this.d.await();
        } catch (InterruptedException unused) {
            forceFailureUnlessReady(Status.RESULT_INTERRUPTED);
        }
        Preconditions.checkState(isReady(), "Result is not ready.");
        return (R) a();
    }

    @Deprecated
    public BasePendingResult() {
        this.a = new Object();
        this.d = new CountDownLatch(1);
        this.e = new ArrayList();
        this.g = new AtomicReference();
        this.n = false;
        this.b = new CallbackHandler(Looper.getMainLooper());
        this.c = new WeakReference(null);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        synchronized (this.a) {
            try {
                if (resultCallback == null) {
                    this.f = null;
                    return;
                }
                boolean z = true;
                Preconditions.checkState(!this.j, "Result has already been consumed.");
                if (this.m != null) {
                    z = false;
                }
                Preconditions.checkState(z, "Cannot set callbacks if then() has been called.");
                if (isCanceled()) {
                    return;
                }
                if (isReady()) {
                    this.b.zaa(resultCallback, a());
                } else {
                    this.f = resultCallback;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
