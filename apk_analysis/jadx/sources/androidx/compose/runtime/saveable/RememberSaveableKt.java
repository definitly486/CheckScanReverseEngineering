package androidx.compose.runtime.saveable;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.fg;
import defpackage.ga1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.t17;
import defpackage.ul2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RememberSaveableKt {
    private static final int MaxSupportedRadix = 36;

    public static final String generateCannotBeSavedErrorMessage(Object obj) {
        return obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
    }

    public static final <T> Saver<MutableState<T>, MutableState<Object>> mutableStateSaver(final Saver<T, ? extends Object> saver) {
        saver.getClass();
        return SaverKt.Saver(new bm3() { // from class: s17
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return RememberSaveableKt.mutableStateSaver$lambda$0$0(saver, (SaverScope) obj, (MutableState) obj2);
            }
        }, new t17(saver, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState mutableStateSaver$lambda$0$0(Saver saver, SaverScope saverScope, MutableState mutableState) {
        if (!(mutableState instanceof SnapshotMutableState)) {
            fg.c("If you use a custom MutableState implementation you have to write a custom Saver and pass it as a saver param to rememberSaveable()");
            return null;
        }
        SnapshotMutableState snapshotMutableState = (SnapshotMutableState) mutableState;
        Object objSave = saver.save(saverScope, snapshotMutableState.getValue());
        if (objSave == null) {
            return null;
        }
        SnapshotMutationPolicy policy = snapshotMutableState.getPolicy();
        policy.getClass();
        return SnapshotStateKt.mutableStateOf(objSave, policy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState mutableStateSaver$lambda$0$1(Saver saver, MutableState mutableState) {
        Object objRestore = null;
        if (!(mutableState instanceof SnapshotMutableState)) {
            fg.c("Failed requirement.");
            return null;
        }
        SnapshotMutableState snapshotMutableState = (SnapshotMutableState) mutableState;
        if (snapshotMutableState.getValue() != 0) {
            T value = snapshotMutableState.getValue();
            value.getClass();
            objRestore = saver.restore(value);
        }
        SnapshotMutationPolicy policy = snapshotMutableState.getPolicy();
        policy.getClass();
        MutableState mutableStateMutableStateOf = SnapshotStateKt.mutableStateOf(objRestore, policy);
        mutableStateMutableStateOf.getClass();
        return mutableStateMutableStateOf;
    }

    @ul2
    /* JADX INFO: renamed from: rememberSaveable, reason: collision with other method in class */
    public static final <T> T m5623rememberSaveable(Object[] objArr, Saver<T, ? extends Object> saver, String str, ll3<? extends T> ll3Var, Composer composer, int i, int i2) {
        Object[] objArr2;
        final T t;
        Object objConsumeRestored;
        if ((i2 & 2) != 0) {
            saver = SaverKt.autoSaver();
        }
        final Saver<T, ? extends Object> saver2 = saver;
        int i3 = i2 & 4;
        T tInvoke = null;
        if (i3 != 0) {
            str = null;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(441892779, i, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:79)");
        }
        long currentCompositeKeyHashCode = ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0);
        if (str == null || str.length() == 0) {
            int i4 = MaxSupportedRadix;
            ga1.b(i4);
            str = Long.toString(currentCompositeKeyHashCode, i4);
            str.getClass();
        }
        final String str2 = str;
        saver2.getClass();
        final SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) composer.consume(SaveableStateRegistryKt.getLocalSaveableStateRegistry());
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            if (saveableStateRegistry != null && (objConsumeRestored = saveableStateRegistry.consumeRestored(str2)) != null) {
                tInvoke = saver2.restore(objConsumeRestored);
            }
            if (tInvoke == null) {
                tInvoke = ll3Var.invoke();
            }
            objArr2 = objArr;
            Object saveableHolder = new SaveableHolder(saver2, saveableStateRegistry, str2, tInvoke, objArr2);
            composer.updateRememberedValue(saveableHolder);
            objRememberedValue = saveableHolder;
        } else {
            objArr2 = objArr;
        }
        final SaveableHolder saveableHolder2 = (SaveableHolder) objRememberedValue;
        Object valueIfInputsDidntChange = saveableHolder2.getValueIfInputsDidntChange(objArr2);
        if (valueIfInputsDidntChange == null) {
            valueIfInputsDidntChange = ll3Var.invoke();
        }
        boolean zChangedInstance = composer.changedInstance(saveableHolder2) | ((((i & 112) ^ 48) > 32 && composer.changedInstance(saver2)) || (i & 48) == 32) | composer.changedInstance(saveableStateRegistry) | composer.changed(str2) | composer.changedInstance(valueIfInputsDidntChange) | composer.changedInstance(objArr2);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue2 == companion.getEmpty()) {
            final Object[] objArr3 = objArr2;
            t = (T) valueIfInputsDidntChange;
            Object obj = new ll3() { // from class: androidx.compose.runtime.saveable.a
                @Override // defpackage.ll3
                public final Object invoke() {
                    return RememberSaveableKt.rememberSaveable$lambda$1$0(saveableHolder2, saver2, saveableStateRegistry, str2, t, objArr3);
                }
            };
            composer.updateRememberedValue(obj);
            objRememberedValue2 = obj;
        } else {
            t = (T) valueIfInputsDidntChange;
        }
        EffectsKt.SideEffect((ll3) objRememberedValue2, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 rememberSaveable$lambda$1$0(SaveableHolder saveableHolder, Saver saver, SaveableStateRegistry saveableStateRegistry, String str, Object obj, Object[] objArr) {
        saveableHolder.update(saver, saveableStateRegistry, str, obj, objArr);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requireCanBeSaved(SaveableStateRegistry saveableStateRegistry, Object obj) {
        String strGenerateCannotBeSavedErrorMessage;
        if (obj == null || saveableStateRegistry.canBeSaved(obj)) {
            return;
        }
        if (obj instanceof SnapshotMutableState) {
            SnapshotMutableState snapshotMutableState = (SnapshotMutableState) obj;
            if (snapshotMutableState.getPolicy() == SnapshotStateKt.neverEqualPolicy() || snapshotMutableState.getPolicy() == SnapshotStateKt.structuralEqualityPolicy() || snapshotMutableState.getPolicy() == SnapshotStateKt.referentialEqualityPolicy()) {
                strGenerateCannotBeSavedErrorMessage = "MutableState containing " + snapshotMutableState.getValue() + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable().";
            } else {
                strGenerateCannotBeSavedErrorMessage = "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver";
            }
        } else {
            strGenerateCannotBeSavedErrorMessage = generateCannotBeSavedErrorMessage(obj);
        }
        throw new IllegalArgumentException(strGenerateCannotBeSavedErrorMessage);
    }

    public static final <T> T rememberSaveable(Object[] objArr, ll3<? extends T> ll3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1564532345, i, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:135)");
        }
        T t = (T) m5623rememberSaveable(Arrays.copyOf(objArr, objArr.length), SaverKt.autoSaver(), (String) null, (ll3) ll3Var, composer, ((i << 6) & 7168) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t;
    }

    /* JADX INFO: renamed from: rememberSaveable, reason: collision with other method in class */
    public static final <T> T m5624rememberSaveable(Object[] objArr, Saver<T, ? extends Object> saver, ll3<? extends T> ll3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(674689872, i, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:175)");
        }
        T t = (T) m5623rememberSaveable(Arrays.copyOf(objArr, objArr.length), (Saver) saver, (String) null, (ll3) ll3Var, composer, (i & 112) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i << 3) & 7168), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t;
    }

    public static final <T> MutableState<T> rememberSaveable(Object[] objArr, Saver<T, ? extends Object> saver, ll3<? extends MutableState<T>> ll3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-746165481, i, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:203)");
        }
        MutableState<T> mutableState = (MutableState) m5623rememberSaveable(Arrays.copyOf(objArr, objArr.length), mutableStateSaver(saver), (String) null, (ll3) ll3Var, composer, ((i << 3) & 7168) | RendererCapabilities.DECODER_SUPPORT_MASK, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }

    @ul2
    public static final <T> MutableState<T> rememberSaveable(Object[] objArr, Saver<T, ? extends Object> saver, String str, ll3<? extends MutableState<T>> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 4) != 0) {
            str = null;
        }
        String str2 = str;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-202053668, i, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:243)");
        }
        MutableState<T> mutableState = (MutableState) m5623rememberSaveable(Arrays.copyOf(objArr, objArr.length), mutableStateSaver(saver), str2, (ll3) ll3Var, composer, i & 8064, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }
}
