package androidx.compose.runtime;

import defpackage.ze4;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class PrimitiveSnapshotStateKt__SnapshotFloatStateKt {
    public static final float getValue(FloatState floatState, Object obj, ze4<?> ze4Var) {
        return floatState.getFloatValue();
    }

    public static final MutableFloatState mutableFloatStateOf(float f) {
        return SnapshotFloatState_androidKt.createSnapshotMutableFloatState(f);
    }

    public static final void setValue(MutableFloatState mutableFloatState, Object obj, ze4<?> ze4Var, float f) {
        mutableFloatState.setFloatValue(f);
    }
}
