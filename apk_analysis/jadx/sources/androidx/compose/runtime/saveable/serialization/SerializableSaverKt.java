package androidx.compose.runtime.saveable.serialization;

import android.os.Bundle;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.saveable.serialization.SerializableSaverKt;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.savedstate.serialization.SavedStateDecoderKt;
import androidx.savedstate.serialization.SavedStateEncoderKt;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.df4;
import defpackage.sh0;

/* JADX INFO: loaded from: classes2.dex */
public final class SerializableSaverKt {
    public static final <Serializable> Saver<Serializable, Bundle> serializableSaver(final df4<Serializable> df4Var, final SavedStateConfiguration savedStateConfiguration) {
        return SaverKt.Saver(new bm3() { // from class: vp7
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return SerializableSaverKt.serializableSaver$lambda$0(df4Var, savedStateConfiguration, (SaverScope) obj, obj2);
            }
        }, new sh0(1, df4Var, savedStateConfiguration));
    }

    public static Saver serializableSaver$default(SavedStateConfiguration savedStateConfiguration, int i, Object obj) {
        if ((i & 1) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle serializableSaver$lambda$0(df4 df4Var, SavedStateConfiguration savedStateConfiguration, SaverScope saverScope, Object obj) {
        return SavedStateEncoderKt.encodeToSavedState(df4Var, obj, savedStateConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object serializableSaver$lambda$1(df4 df4Var, SavedStateConfiguration savedStateConfiguration, Bundle bundle) {
        return SavedStateDecoderKt.decodeFromSavedState(df4Var, bundle, savedStateConfiguration);
    }

    public static /* synthetic */ Saver serializableSaver$default(df4 df4Var, SavedStateConfiguration savedStateConfiguration, int i, Object obj) {
        if ((i & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return serializableSaver(df4Var, savedStateConfiguration);
    }

    public static final <Serializable> Saver<Serializable, Bundle> serializableSaver(SavedStateConfiguration savedStateConfiguration) {
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }
}
