package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.internal.CanonicalName_jvmKt;
import defpackage.aa4;
import defpackage.b36;
import defpackage.cy6;
import defpackage.df4;
import defpackage.ll3;
import defpackage.x07;
import defpackage.ze4;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class SavedStateRegistryOwnerDelegate<T> implements cy6<Object, T>, SavedStateRegistry.SavedStateProvider {
    private Object cachedValue;
    private final SavedStateConfiguration configuration;
    private final ll3<T> init;
    private final String key;
    private final SavedStateRegistry registry;
    private final df4<T> serializer;

    public static final class UNINITIALIZED {
        public static final UNINITIALIZED INSTANCE = new UNINITIALIZED();

        private UNINITIALIZED() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateRegistryOwnerDelegate(SavedStateRegistry savedStateRegistry, df4<T> df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var) {
        savedStateRegistry.getClass();
        df4Var.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        this.registry = savedStateRegistry;
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
        Bundle bundleConsumeRestoredStateForKey = this.registry.consumeRestoredStateForKey(str);
        if (bundleConsumeRestoredStateForKey == null) {
            return this.init.invoke();
        }
        df4<T> df4Var = this.serializer;
        df4Var.getClass();
        return (T) SavedStateDecoderKt.decodeFromSavedStateNullable(df4Var, bundleConsumeRestoredStateForKey, this.configuration);
    }

    @Override // defpackage.by6
    public T getValue(Object obj, ze4<?> ze4Var) {
        ze4Var.getClass();
        if (aa4.e(this.cachedValue, UNINITIALIZED.INSTANCE)) {
            String qualifiedKey = getQualifiedKey(obj, ze4Var);
            this.registry.registerSavedStateProvider(qualifiedKey, this);
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
            this.registry.registerSavedStateProvider(getQualifiedKey(obj, ze4Var), this);
        }
        this.cachedValue = t;
    }
}
