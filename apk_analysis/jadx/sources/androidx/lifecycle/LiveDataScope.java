package androidx.lifecycle;

import defpackage.e02;
import defpackage.hp2;
import defpackage.j59;

/* JADX INFO: loaded from: classes3.dex */
public interface LiveDataScope<T> {
    Object emit(T t, e02<? super j59> e02Var);

    Object emitSource(LiveData<T> liveData, e02<? super hp2> e02Var);

    T getLatestValue();
}
