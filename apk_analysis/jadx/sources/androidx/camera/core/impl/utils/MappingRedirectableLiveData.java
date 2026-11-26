package androidx.camera.core.impl.utils;

import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import defpackage.j59;
import defpackage.qd0;
import defpackage.rh0;

/* JADX INFO: loaded from: classes.dex */
public class MappingRedirectableLiveData<I, O> extends MediatorLiveData<O> {
    private final O initialValue;
    private LiveData<I> liveDataSource;
    private final Function<I, O> mapFunction;

    public MappingRedirectableLiveData(O o, Function<I, O> function) {
        function.getClass();
        this.initialValue = o;
        this.mapFunction = function;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void redirectTo$lambda$0(LiveData liveData, MappingRedirectableLiveData mappingRedirectableLiveData, LiveData liveData2) {
        if (liveData != null) {
            super.removeSource(liveData);
        }
        final rh0 rh0Var = new rh0(mappingRedirectableLiveData, 2);
        super.addSource(liveData2, new Observer() { // from class: h05
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                rh0Var.invoke(obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 redirectTo$lambda$0$0(MappingRedirectableLiveData mappingRedirectableLiveData, Object obj) {
        mappingRedirectableLiveData.setValue(mappingRedirectableLiveData.mapFunction.apply(obj));
        return j59.a;
    }

    @Override // androidx.lifecycle.MediatorLiveData
    public <S> void addSource(LiveData<S> liveData, Observer<? super S> observer) {
        liveData.getClass();
        observer.getClass();
        throw new UnsupportedOperationException();
    }

    @Override // androidx.lifecycle.LiveData
    public O getValue() {
        LiveData<I> liveData = this.liveDataSource;
        return liveData == null ? this.initialValue : this.mapFunction.apply(liveData.getValue());
    }

    public final void redirectTo(LiveData<I> liveData) {
        liveData.getClass();
        LiveData<I> liveData2 = this.liveDataSource;
        this.liveDataSource = liveData;
        Threads.runOnMain(new qd0(liveData2, this, liveData, 1));
    }
}
