package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.saveable.serialization.SerializableSaverKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.savedstate.serialization.SavedStateConfiguration;
import defpackage.aa4;
import defpackage.df4;
import defpackage.ll3;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RememberSerializableKt {
    public static final <T> MutableState<T> rememberSerializable(Object[] objArr, df4<T> df4Var, SavedStateConfiguration savedStateConfiguration, ll3<? extends MutableState<T>> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1248826527, i, -1, "androidx.compose.runtime.saveable.rememberSerializable (RememberSerializable.kt:163)");
        }
        MutableState<T> mutableState = (MutableState) RememberSaveableKt.m5623rememberSaveable(Arrays.copyOf(objArr, objArr.length), RememberSaveableKt.mutableStateSaver(SerializableSaverKt.serializableSaver(df4Var, savedStateConfiguration)), (String) null, (ll3) ll3Var, composer, (i & 7168) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }

    /* JADX INFO: renamed from: rememberSerializable, reason: collision with other method in class */
    public static final <T> T m5626rememberSerializable(Object[] objArr, df4<T> df4Var, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1261607160, i, -1, "androidx.compose.runtime.saveable.rememberSerializable (RememberSerializable.kt:93)");
        }
        T t = (T) RememberSaveableKt.m5623rememberSaveable(Arrays.copyOf(objArr, objArr.length), SerializableSaverKt.serializableSaver(df4Var, savedStateConfiguration), (String) null, (ll3) ll3Var, composer, (i & 7168) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t;
    }

    public static final <T> MutableState<T> rememberSerializable(Object[] objArr, SavedStateConfiguration savedStateConfiguration, ll3<? extends MutableState<T>> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        Arrays.copyOf(objArr, objArr.length);
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: rememberSerializable, reason: collision with other method in class */
    public static final <T> T m5625rememberSerializable(Object[] objArr, SavedStateConfiguration savedStateConfiguration, ll3<? extends T> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        Arrays.copyOf(objArr, objArr.length);
        savedStateConfiguration.getSerializersModule();
        aa4.i();
        throw null;
    }
}
