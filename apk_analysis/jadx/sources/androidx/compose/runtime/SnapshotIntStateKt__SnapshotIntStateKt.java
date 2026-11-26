package androidx.compose.runtime;

import defpackage.ze4;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class SnapshotIntStateKt__SnapshotIntStateKt {
    public static final int getValue(IntState intState, Object obj, ze4<?> ze4Var) {
        return intState.getIntValue();
    }

    public static final MutableIntState mutableIntStateOf(int i) {
        return SnapshotIntState_androidKt.createSnapshotMutableIntState(i);
    }

    public static final void setValue(MutableIntState mutableIntState, Object obj, ze4<?> ze4Var, int i) {
        mutableIntState.setIntValue(i);
    }
}
