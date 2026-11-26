package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.lifecycle.internal.SavedStateHandleImpl_androidKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import defpackage.bf3;
import defpackage.c9;
import defpackage.h8;
import defpackage.jh2;
import defpackage.mr7;
import defpackage.xg5;
import defpackage.y68;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateHandle {
    public static final Companion Companion = new Companion(null);
    private SavedStateHandleImpl impl;
    private final Map<String, SavingStateLiveData<?>> liveDatas;

    public SavedStateHandle(Map<String, ? extends Object> map) {
        map.getClass();
        this.liveDatas = new LinkedHashMap();
        this.impl = new SavedStateHandleImpl(map);
    }

    public static final SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
        return Companion.createHandle(bundle, bundle2);
    }

    private final <T> MutableLiveData<T> getLiveDataInternal(String str, boolean z, T t) {
        SavingStateLiveData<?> savingStateLiveData;
        if (this.impl.getMutableFlows().containsKey(str)) {
            c9.f(SavedStateHandle_androidKt.createMutuallyExclusiveErrorMessage(str));
            return null;
        }
        Map<String, SavingStateLiveData<?>> map = this.liveDatas;
        SavingStateLiveData<?> savingStateLiveData2 = map.get(str);
        if (savingStateLiveData2 == null) {
            if (this.impl.getRegular().containsKey(str)) {
                savingStateLiveData = new SavingStateLiveData<>(this, str, this.impl.getRegular().get(str));
            } else if (z) {
                this.impl.getRegular().put(str, t);
                savingStateLiveData = new SavingStateLiveData<>(this, str, t);
            } else {
                savingStateLiveData = new SavingStateLiveData<>(this, str);
            }
            savingStateLiveData2 = savingStateLiveData;
            map.put(str, savingStateLiveData2);
        }
        return savingStateLiveData2;
    }

    public final void clearSavedStateProvider(String str) {
        str.getClass();
        this.impl.clearSavedStateProvider(str);
    }

    public final boolean contains(String str) {
        str.getClass();
        return this.impl.contains(str);
    }

    public final <T> T get(String str) {
        str.getClass();
        return (T) this.impl.get(str);
    }

    public final <T> MutableLiveData<T> getLiveData(String str) {
        str.getClass();
        MutableLiveData<T> liveDataInternal = getLiveDataInternal(str, false, null);
        liveDataInternal.getClass();
        return liveDataInternal;
    }

    public final <T> xg5<T> getMutableStateFlow(String str, T t) {
        str.getClass();
        if (!this.liveDatas.containsKey(str)) {
            return this.impl.getMutableStateFlow(str, t);
        }
        c9.f(SavedStateHandle_androidKt.createMutuallyExclusiveErrorMessage(str));
        return null;
    }

    public final <T> y68<T> getStateFlow(String str, T t) {
        str.getClass();
        boolean zContainsKey = this.impl.getMutableFlows().containsKey(str);
        SavedStateHandleImpl savedStateHandleImpl = this.impl;
        return zContainsKey ? bf3.b(savedStateHandleImpl.getMutableStateFlow(str, t)) : savedStateHandleImpl.getStateFlow(str, t);
    }

    public final Set<String> keys() {
        return mr7.l(this.impl.keys(), this.liveDatas.keySet());
    }

    public final <T> T remove(String str) {
        str.getClass();
        T t = (T) this.impl.remove(str);
        SavingStateLiveData<?> savingStateLiveDataRemove = this.liveDatas.remove(str);
        if (savingStateLiveDataRemove != null) {
            savingStateLiveDataRemove.detach();
        }
        return t;
    }

    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.impl.getSavedStateProvider();
    }

    public final <T> void set(String str, T t) {
        str.getClass();
        if (!Companion.validateValue(t)) {
            t.getClass();
            h8.f(t.getClass(), "Can't put value with type ", " into saved state");
            return;
        }
        SavingStateLiveData<?> savingStateLiveData = this.liveDatas.get(str);
        SavingStateLiveData<?> savingStateLiveData2 = savingStateLiveData instanceof MutableLiveData ? savingStateLiveData : null;
        if (savingStateLiveData2 != null) {
            savingStateLiveData2.setValue(t);
        }
        this.impl.set(str, t);
    }

    public final void setSavedStateProvider(String str, SavedStateRegistry.SavedStateProvider savedStateProvider) {
        str.getClass();
        savedStateProvider.getClass();
        this.impl.setSavedStateProvider(str, savedStateProvider);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                bundle = bundle2;
            }
            if (bundle == null) {
                return new SavedStateHandle();
            }
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            classLoader.getClass();
            bundle.setClassLoader(classLoader);
            return new SavedStateHandle(SavedStateReader.m9451toMapimpl(SavedStateReader.m9370constructorimpl(bundle)));
        }

        public final boolean validateValue(Object obj) {
            return SavedStateHandleImpl_androidKt.isAcceptableType(obj);
        }

        private Companion() {
        }
    }

    public static final class SavingStateLiveData<T> extends MutableLiveData<T> {
        private SavedStateHandle handle;
        private String key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavingStateLiveData(SavedStateHandle savedStateHandle, String str, T t) {
            super(t);
            str.getClass();
            this.key = str;
            this.handle = savedStateHandle;
        }

        public final void detach() {
            this.handle = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T t) {
            SavedStateHandleImpl savedStateHandleImpl;
            SavedStateHandle savedStateHandle = this.handle;
            if (savedStateHandle != null && (savedStateHandleImpl = savedStateHandle.impl) != null) {
                savedStateHandleImpl.set(this.key, t);
            }
            super.setValue(t);
        }

        public SavingStateLiveData(SavedStateHandle savedStateHandle, String str) {
            str.getClass();
            this.key = str;
            this.handle = savedStateHandle;
        }
    }

    public final <T> MutableLiveData<T> getLiveData(String str, T t) {
        str.getClass();
        return getLiveDataInternal(str, true, t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateHandle() {
        this.liveDatas = new LinkedHashMap();
        this.impl = new SavedStateHandleImpl(null, 1, 0 == true ? 1 : 0);
    }
}
