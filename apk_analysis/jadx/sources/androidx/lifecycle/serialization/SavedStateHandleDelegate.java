package androidx.lifecycle.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.internal.CanonicalName_jvmKt;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.savedstate.serialization.SavedStateDecoderKt;
import androidx.savedstate.serialization.SavedStateEncoderKt;
import defpackage.aa4;
import defpackage.b36;
import defpackage.cy6;
import defpackage.df4;
import defpackage.ll3;
import defpackage.x07;
import defpackage.ze4;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class SavedStateHandleDelegate<T> implements cy6<Object, T>, SavedStateRegistry.SavedStateProvider {
    private Object cachedValue;
    private final SavedStateConfiguration configuration;
    private final ll3<T> init;
    private final String key;
    private final SavedStateHandle savedStateHandle;
    private final df4<T> serializer;

    public static final class UNINITIALIZED {
        public static final UNINITIALIZED INSTANCE = new UNINITIALIZED();

        private UNINITIALIZED() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateHandleDelegate(SavedStateHandle savedStateHandle, df4<T> df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var) {
        savedStateHandle.getClass();
        df4Var.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        this.savedStateHandle = savedStateHandle;
        this.serializer = df4Var;
        this.key = str;
        this.configuration = savedStateConfiguration;
        this.init = ll3Var;
        this.cachedValue = UNINITIALIZED.INSTANCE;
    }

    private final String getQualifiedKey(Object obj, ze4<?> ze4Var) {
        String str;
        String str2 = this.key;
        if (str2 != null) {
            return str2;
        }
        if (obj != null) {
            str = CanonicalName_jvmKt.getCanonicalName(x07.a(obj.getClass())) + '.';
        } else {
            str = "";
        }
        return str + ze4Var.getName();
    }

    private final T loadInitialValue(String str) {
        Bundle bundle = (Bundle) this.savedStateHandle.get(str);
        if (bundle == null) {
            return this.init.invoke();
        }
        df4<T> df4Var = this.serializer;
        df4Var.getClass();
        return (T) SavedStateDecoderKt.decodeFromSavedStateNullable(df4Var, bundle, this.configuration);
    }

    @Override // defpackage.by6
    public T getValue(Object obj, ze4<?> ze4Var) {
        ze4Var.getClass();
        if (aa4.e(this.cachedValue, UNINITIALIZED.INSTANCE)) {
            String qualifiedKey = getQualifiedKey(obj, ze4Var);
            this.savedStateHandle.setSavedStateProvider(qualifiedKey, this);
            this.cachedValue = loadInitialValue(qualifiedKey);
        }
        return (T) this.cachedValue;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public Bundle saveState() {
        if (!aa4.e(this.cachedValue, UNINITIALIZED.INSTANCE)) {
            return SavedStateEncoderKt.encodeToSavedStateNullable(this.serializer, this.cachedValue, this.configuration);
        }
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        return bundleBundleOf;
    }

    public void setValue(Object obj, ze4<?> ze4Var, T t) {
        ze4Var.getClass();
        if (aa4.e(this.cachedValue, UNINITIALIZED.INSTANCE)) {
            this.savedStateHandle.setSavedStateProvider(getQualifiedKey(obj, ze4Var), this);
        }
        this.cachedValue = t;
    }
}
