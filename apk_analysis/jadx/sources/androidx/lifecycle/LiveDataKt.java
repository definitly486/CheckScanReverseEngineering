package androidx.lifecycle;

import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveDataKt {
    @ul2
    public static final <T> Observer<T> observe(LiveData<T> liveData, LifecycleOwner lifecycleOwner, final nl3<? super T, j59> nl3Var) {
        liveData.getClass();
        lifecycleOwner.getClass();
        nl3Var.getClass();
        Observer<T> observer = new Observer() { // from class: androidx.lifecycle.LiveDataKt$observe$wrappedObserver$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(T t) {
                nl3Var.invoke(t);
            }
        };
        liveData.observe(lifecycleOwner, observer);
        return observer;
    }
}
