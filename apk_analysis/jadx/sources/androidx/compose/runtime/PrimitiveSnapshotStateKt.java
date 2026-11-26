package androidx.compose.runtime;

import defpackage.ze4;

/* JADX INFO: loaded from: classes2.dex */
public final class PrimitiveSnapshotStateKt {
    public static final float getValue(FloatState floatState, Object obj, ze4<?> ze4Var) {
        return PrimitiveSnapshotStateKt__SnapshotFloatStateKt.getValue(floatState, obj, ze4Var);
    }

    public static final MutableFloatState mutableFloatStateOf(float f) {
        return PrimitiveSnapshotStateKt__SnapshotFloatStateKt.mutableFloatStateOf(f);
    }

    public static final void setValue(MutableFloatState mutableFloatState, Object obj, ze4<?> ze4Var, float f) {
        PrimitiveSnapshotStateKt__SnapshotFloatStateKt.setValue(mutableFloatState, obj, ze4Var, f);
    }
}
