package androidx.savedstate.serialization;

import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.aa4;
import defpackage.cy6;
import defpackage.df4;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateRegistryOwnerDelegateKt {
    @ul2
    public static final /* synthetic */ cy6 saved(SavedStateRegistryOwner savedStateRegistryOwner, df4 df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var) {
        savedStateRegistryOwner.getClass();
        df4Var.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        return new SavedStateRegistryOwnerDelegate(savedStateRegistryOwner.getSavedStateRegistry(), df4Var, str, savedStateConfiguration, ll3Var);
    }

    public static cy6 saved$default(SavedStateRegistryOwner savedStateRegistryOwner, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        savedStateRegistryOwner.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static final <T> cy6<Object, T> savedNullable(SavedStateRegistryOwner savedStateRegistryOwner, df4<T> df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var) {
        savedStateRegistryOwner.getClass();
        df4Var.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        return new SavedStateRegistryOwnerDelegate(savedStateRegistryOwner.getSavedStateRegistry(), df4Var, str, savedStateConfiguration, ll3Var);
    }

    public static cy6 savedNullable$default(SavedStateRegistryOwner savedStateRegistryOwner, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        savedStateRegistryOwner.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ cy6 saved$default(SavedStateRegistryOwner savedStateRegistryOwner, df4 df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return saved(savedStateRegistryOwner, df4Var, str, savedStateConfiguration, ll3Var);
    }

    public static /* synthetic */ cy6 savedNullable$default(SavedStateRegistryOwner savedStateRegistryOwner, df4 df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return savedNullable(savedStateRegistryOwner, df4Var, str, savedStateConfiguration, ll3Var);
    }

    @ul2
    public static final <T> cy6<Object, T> saved(SavedStateRegistryOwner savedStateRegistryOwner, String str, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var) {
        savedStateRegistryOwner.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static final <T> cy6<Object, T> savedNullable(SavedStateRegistryOwner savedStateRegistryOwner, String str, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var) {
        savedStateRegistryOwner.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }
}
