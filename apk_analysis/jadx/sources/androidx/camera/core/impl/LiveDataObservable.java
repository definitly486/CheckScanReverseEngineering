package androidx.camera.core.impl;

import android.os.SystemClock;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ah;
import defpackage.bs4;
import defpackage.du;
import defpackage.eu;
import defpackage.h00;
import defpackage.hu2;
import defpackage.me0;
import defpackage.zg2;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class LiveDataObservable<T> implements Observable<T> {
    private Observer<Result<T>> mLiveDataObserver;
    final MutableLiveData<Result<T>> mLiveData = new MutableLiveData<>();
    private final Map<Observable.Observer<? super T>, Executor> mObservers = new HashMap();

    public static final class Result<T> {
        private final Throwable mError;
        private final T mValue;

        private Result(T t, Throwable th) {
            this.mValue = t;
            this.mError = th;
        }

        public static <T> Result<T> fromError(Throwable th) {
            return new Result<>(null, (Throwable) Preconditions.checkNotNull(th));
        }

        public static <T> Result<T> fromValue(T t) {
            return new Result<>(t, null);
        }

        public boolean completedSuccessfully() {
            return this.mError == null;
        }

        public Throwable getError() {
            return this.mError;
        }

        public T getValue() {
            if (completedSuccessfully()) {
                return this.mValue;
            }
            ah.f("Result contains an error. Does not contain a value.");
            return null;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder("[Result: <");
            if (completedSuccessfully()) {
                str = "Value: " + this.mValue;
            } else {
                str = "Error: " + this.mError;
            }
            return me0.d(sb, str, ">]");
        }
    }

    private void disableInternalObserver() {
        CameraXExecutors.mainThreadExecutor().execute(new bs4(this, 0));
    }

    private void enableInternalObserver() {
        CameraXExecutors.mainThreadExecutor().execute(new zg2(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addObserver$2(Observable.Observer observer) {
        Result<T> value = this.mLiveData.getValue();
        if (value == null) {
            return;
        }
        if (value.completedSuccessfully()) {
            observer.onNewData(value.getValue());
        } else {
            Preconditions.checkNotNull(value.getError());
            observer.onError(value.getError());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disableInternalObserver$6() {
        Observer<Result<T>> observer = this.mLiveDataObserver;
        if (observer != null) {
            this.mLiveData.removeObserver(observer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$enableInternalObserver$3(Map.Entry entry, Result result) {
        Observable.Observer observer = (Observable.Observer) entry.getKey();
        if (result.completedSuccessfully()) {
            observer.onNewData(result.getValue());
        } else {
            Preconditions.checkNotNull(result.getError());
            observer.onError(result.getError());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enableInternalObserver$4(Result result) {
        HashMap map;
        synchronized (this.mObservers) {
            map = new HashMap(this.mObservers);
        }
        for (Map.Entry entry : map.entrySet()) {
            ((Executor) entry.getValue()).execute(new eu(1, entry, result));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enableInternalObserver$5() {
        Observer<Result<T>> observer = this.mLiveDataObserver;
        if (observer == null) {
            observer = new Observer() { // from class: as4
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    this.b.lambda$enableInternalObserver$4((LiveDataObservable.Result) obj);
                }
            };
            this.mLiveDataObserver = observer;
        }
        this.mLiveData.observeForever(observer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchData$0(CallbackToFutureAdapter.Completer completer) {
        Result<T> value = this.mLiveData.getValue();
        if (value == null) {
            completer.setException(new IllegalStateException("Observable has not yet been initialized with a value."));
        } else if (value.completedSuccessfully()) {
            completer.set(value.getValue());
        } else {
            Preconditions.checkNotNull(value.getError());
            completer.setException(value.getError());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$fetchData$1(CallbackToFutureAdapter.Completer completer) {
        CameraXExecutors.mainThreadExecutor().execute(new du(2, this, completer));
        return this + " [fetch@" + SystemClock.uptimeMillis() + "]";
    }

    @Override // androidx.camera.core.impl.Observable
    public void addObserver(Executor executor, Observable.Observer<? super T> observer) {
        synchronized (this.mObservers) {
            try {
                boolean zIsEmpty = this.mObservers.isEmpty();
                this.mObservers.put(observer, executor);
                if (zIsEmpty) {
                    enableInternalObserver();
                } else {
                    executor.execute(new h00(2, this, observer));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public ListenableFuture<T> fetchData() {
        return CallbackToFutureAdapter.getFuture(new hu2(this));
    }

    public LiveData<Result<T>> getLiveData() {
        return this.mLiveData;
    }

    public void postError(Throwable th) {
        this.mLiveData.postValue(Result.fromError(th));
    }

    public void postValue(T t) {
        this.mLiveData.postValue(Result.fromValue(t));
    }

    @Override // androidx.camera.core.impl.Observable
    public void removeObserver(Observable.Observer<? super T> observer) {
        synchronized (this.mObservers) {
            try {
                this.mObservers.remove(observer);
                if (this.mObservers.isEmpty()) {
                    disableInternalObserver();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
