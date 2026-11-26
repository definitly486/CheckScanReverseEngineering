package androidx.lifecycle.serialization;

import androidx.lifecycle.SavedStateHandle;
import androidx.savedstate.serialization.SavedStateConfiguration;
import defpackage.aa4;
import defpackage.cy6;
import defpackage.df4;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateHandleDelegateKt {
    @ul2
    public static final /* synthetic */ cy6 saved(SavedStateHandle savedStateHandle, df4 df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var) {
        savedStateHandle.getClass();
        df4Var.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        return new SavedStateHandleDelegate(savedStateHandle, df4Var, str, savedStateConfiguration, ll3Var);
    }

    public static cy6 saved$default(SavedStateHandle savedStateHandle, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        savedStateHandle.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static final <T> cy6<Object, T> savedNullable(SavedStateHandle savedStateHandle, df4<T> df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var) {
        savedStateHandle.getClass();
        df4Var.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        return new SavedStateHandleDelegate(savedStateHandle, df4Var, str, savedStateConfiguration, ll3Var);
    }

    public static cy6 savedNullable$default(SavedStateHandle savedStateHandle, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        savedStateHandle.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    @ul2
    public static final <T> cy6<Object, T> saved(SavedStateHandle savedStateHandle, String str, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var) {
        savedStateHandle.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ cy6 saved$default(SavedStateHandle savedStateHandle, df4 df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return saved(savedStateHandle, df4Var, str, savedStateConfiguration, ll3Var);
    }

    public static final <T> cy6<Object, T> savedNullable(SavedStateHandle savedStateHandle, String str, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var) {
        savedStateHandle.getClass();
        savedStateConfiguration.getClass();
        ll3Var.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ cy6 savedNullable$default(SavedStateHandle savedStateHandle, df4 df4Var, String str, SavedStateConfiguration savedStateConfiguration, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return savedNullable(savedStateHandle, df4Var, str, savedStateConfiguration, ll3Var);
    }
}
