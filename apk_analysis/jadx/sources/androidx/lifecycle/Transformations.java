package androidx.lifecycle;

import androidx.arch.core.util.Function;
import defpackage.j59;
import defpackage.ji3;
import defpackage.n07;
import defpackage.nl3;
import defpackage.qs0;
import defpackage.r07;
import defpackage.ry1;
import defpackage.ss0;
import defpackage.ul2;
import defpackage.us8;
import defpackage.x19;

/* JADX INFO: loaded from: classes3.dex */
public final class Transformations {

    /* JADX INFO: renamed from: androidx.lifecycle.Transformations$switchMap$2, reason: invalid class name */
    public static final class AnonymousClass2 implements Observer {
        final /* synthetic */ MediatorLiveData $result;
        final /* synthetic */ Function $switchMapFunction;
        private LiveData liveData;

        public AnonymousClass2(Function function, MediatorLiveData mediatorLiveData) {
            this.$switchMapFunction = function;
            this.$result = mediatorLiveData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 onChanged$lambda$0(MediatorLiveData mediatorLiveData, Object obj) {
            mediatorLiveData.setValue(obj);
            return j59.a;
        }

        public final LiveData getLiveData() {
            return this.liveData;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(Object obj) {
            LiveData liveData = (LiveData) this.$switchMapFunction.apply(obj);
            LiveData liveData2 = this.liveData;
            if (liveData2 == liveData) {
                return;
            }
            if (liveData2 != null) {
                this.$result.removeSource(liveData2);
            }
            this.liveData = liveData;
            if (liveData != null) {
                MediatorLiveData mediatorLiveData = this.$result;
                mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new ss0(mediatorLiveData, 3)));
            }
        }

        public final void setLiveData(LiveData liveData) {
            this.liveData = liveData;
        }
    }

    public static final <X> LiveData<X> distinctUntilChanged(LiveData<X> liveData) {
        MediatorLiveData mediatorLiveData;
        liveData.getClass();
        n07 n07Var = new n07();
        n07Var.b = true;
        if (liveData.isInitialized()) {
            n07Var.b = false;
            mediatorLiveData = new MediatorLiveData(liveData.getValue());
        } else {
            mediatorLiveData = new MediatorLiveData();
        }
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new qs0(2, mediatorLiveData, n07Var)));
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 distinctUntilChanged$lambda$0(MediatorLiveData mediatorLiveData, n07 n07Var, Object obj) {
        T value = mediatorLiveData.getValue();
        if (n07Var.b || ((value == 0 && obj != null) || (value != 0 && !value.equals(obj)))) {
            n07Var.b = false;
            mediatorLiveData.setValue(obj);
        }
        return j59.a;
    }

    public static final <X, Y> LiveData<Y> map(LiveData<X> liveData, nl3<X, Y> nl3Var) {
        liveData.getClass();
        nl3Var.getClass();
        MediatorLiveData mediatorLiveData = liveData.isInitialized() ? new MediatorLiveData(nl3Var.invoke(liveData.getValue())) : new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new ji3(2, mediatorLiveData, nl3Var)));
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 map$lambda$0(MediatorLiveData mediatorLiveData, nl3 nl3Var, Object obj) {
        mediatorLiveData.setValue(nl3Var.invoke(obj));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 map$lambda$1(MediatorLiveData mediatorLiveData, Function function, Object obj) {
        mediatorLiveData.setValue(function.apply(obj));
        return j59.a;
    }

    public static final <X, Y> LiveData<Y> switchMap(LiveData<X> liveData, nl3<X, LiveData<Y>> nl3Var) {
        LiveData<Y> liveDataInvoke;
        liveData.getClass();
        nl3Var.getClass();
        r07 r07Var = new r07();
        MediatorLiveData mediatorLiveData = (liveData.isInitialized() && (liveDataInvoke = nl3Var.invoke(liveData.getValue())) != null && liveDataInvoke.isInitialized()) ? new MediatorLiveData(liveDataInvoke.getValue()) : new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new x19(nl3Var, r07Var, mediatorLiveData, 0)));
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, androidx.lifecycle.LiveData] */
    public static final j59 switchMap$lambda$0(nl3 nl3Var, r07 r07Var, MediatorLiveData mediatorLiveData, Object obj) {
        ?? r0 = (LiveData) nl3Var.invoke(obj);
        T t = r07Var.b;
        if (t != r0) {
            if (t != 0) {
                mediatorLiveData.removeSource((LiveData) t);
            }
            r07Var.b = r0;
            if (r0 != 0) {
                mediatorLiveData.addSource(r0, new Transformations$sam$androidx_lifecycle_Observer$0(new us8(mediatorLiveData, 1)));
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 switchMap$lambda$0$0(MediatorLiveData mediatorLiveData, Object obj) {
        mediatorLiveData.setValue(obj);
        return j59.a;
    }

    @ul2
    public static final /* synthetic */ LiveData map(LiveData liveData, Function function) {
        liveData.getClass();
        function.getClass();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new ry1(4, mediatorLiveData, function)));
        return mediatorLiveData;
    }

    @ul2
    public static final /* synthetic */ LiveData switchMap(LiveData liveData, Function function) {
        liveData.getClass();
        function.getClass();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new AnonymousClass2(function, mediatorLiveData));
        return mediatorLiveData;
    }
}
