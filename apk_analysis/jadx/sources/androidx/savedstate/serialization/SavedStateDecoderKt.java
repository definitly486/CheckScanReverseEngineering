package androidx.savedstate.serialization;

import android.os.Bundle;
import defpackage.aa4;
import defpackage.ul2;
import defpackage.xl2;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateDecoderKt {
    @ul2
    public static final /* synthetic */ Object decodeFromSavedState(xl2 xl2Var, Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        xl2Var.getClass();
        bundle.getClass();
        savedStateConfiguration.getClass();
        return new SavedStateDecoder(bundle, savedStateConfiguration).decodeSerializableValue(xl2Var);
    }

    public static Object decodeFromSavedState$default(Bundle bundle, SavedStateConfiguration savedStateConfiguration, int i, Object obj) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        bundle.getClass();
        savedStateConfiguration.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static final <T> T decodeFromSavedStateNullable(xl2<? extends T> xl2Var, Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        xl2Var.getClass();
        bundle.getClass();
        savedStateConfiguration.getClass();
        return (T) new SavedStateDecoder(bundle, savedStateConfiguration).decodeSerializableValue(xl2Var);
    }

    public static Object decodeFromSavedStateNullable$default(Bundle bundle, SavedStateConfiguration savedStateConfiguration, int i, Object obj) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        bundle.getClass();
        savedStateConfiguration.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    @ul2
    public static final <T> T decodeFromSavedState(Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        bundle.getClass();
        savedStateConfiguration.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static final <T> T decodeFromSavedStateNullable(Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        bundle.getClass();
        savedStateConfiguration.getClass();
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ Object decodeFromSavedState$default(xl2 xl2Var, Bundle bundle, SavedStateConfiguration savedStateConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return decodeFromSavedState(xl2Var, bundle, savedStateConfiguration);
    }

    public static /* synthetic */ Object decodeFromSavedStateNullable$default(xl2 xl2Var, Bundle bundle, SavedStateConfiguration savedStateConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return decodeFromSavedStateNullable(xl2Var, bundle, savedStateConfiguration);
    }

    @ul2
    public static final /* synthetic */ Object decodeFromSavedState(xl2 xl2Var, Bundle bundle) {
        xl2Var.getClass();
        bundle.getClass();
        return decodeFromSavedState$default(xl2Var, bundle, null, 4, null);
    }

    public static final <T> T decodeFromSavedStateNullable(xl2<? extends T> xl2Var, Bundle bundle) {
        xl2Var.getClass();
        bundle.getClass();
        return (T) decodeFromSavedStateNullable$default(xl2Var, bundle, null, 4, null);
    }
}
