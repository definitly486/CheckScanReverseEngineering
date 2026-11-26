package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateWriter;
import defpackage.aa4;
import defpackage.b36;
import defpackage.ul2;
import defpackage.xp7;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateEncoderKt {
    @ul2
    public static final Bundle encodeToSavedState(xp7 xp7Var, Object obj, SavedStateConfiguration savedStateConfiguration) {
        xp7Var.getClass();
        obj.getClass();
        savedStateConfiguration.getClass();
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        new SavedStateEncoder(bundleBundleOf, savedStateConfiguration).encodeSerializableValue(xp7Var, obj);
        return bundleBundleOf;
    }

    public static Bundle encodeToSavedState$default(Object obj, SavedStateConfiguration savedStateConfiguration, int i, Object obj2) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        obj.getClass();
        savedStateConfiguration.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static final <T> Bundle encodeToSavedStateNullable(xp7<? super T> xp7Var, T t, SavedStateConfiguration savedStateConfiguration) {
        xp7Var.getClass();
        savedStateConfiguration.getClass();
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        new SavedStateEncoder(bundleBundleOf, savedStateConfiguration).encodeSerializableValue(xp7Var, t);
        return bundleBundleOf;
    }

    public static Bundle encodeToSavedStateNullable$default(Object obj, SavedStateConfiguration savedStateConfiguration, int i, Object obj2) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        savedStateConfiguration.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ Bundle encodeToSavedStateNullable$default(xp7 xp7Var, Object obj, SavedStateConfiguration savedStateConfiguration, int i, Object obj2) {
        if ((i & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return encodeToSavedStateNullable(xp7Var, obj, savedStateConfiguration);
    }

    public static /* synthetic */ Bundle encodeToSavedState$default(xp7 xp7Var, Object obj, SavedStateConfiguration savedStateConfiguration, int i, Object obj2) {
        if ((i & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return encodeToSavedState(xp7Var, obj, savedStateConfiguration);
    }

    public static final <T> Bundle encodeToSavedStateNullable(T t, SavedStateConfiguration savedStateConfiguration) {
        savedStateConfiguration.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static final <T> Bundle encodeToSavedStateNullable(xp7<? super T> xp7Var, T t) {
        xp7Var.getClass();
        return encodeToSavedStateNullable$default(xp7Var, t, null, 4, null);
    }

    @ul2
    public static final <T> Bundle encodeToSavedState(T t, SavedStateConfiguration savedStateConfiguration) {
        t.getClass();
        savedStateConfiguration.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    @ul2
    public static final /* synthetic */ Bundle encodeToSavedState(xp7 xp7Var, Object obj) {
        xp7Var.getClass();
        obj.getClass();
        return encodeToSavedState$default(xp7Var, obj, null, 4, null);
    }
}
