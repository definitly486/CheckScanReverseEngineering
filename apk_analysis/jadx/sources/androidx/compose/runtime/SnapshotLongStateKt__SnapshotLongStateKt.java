package androidx.compose.runtime;

import defpackage.ze4;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class SnapshotLongStateKt__SnapshotLongStateKt {
    public static final long getValue(LongState longState, Object obj, ze4<?> ze4Var) {
        return longState.getLongValue();
    }

    public static final MutableLongState mutableLongStateOf(long j) {
        return SnapshotLongState_androidKt.createSnapshotMutableLongState(j);
    }

    public static final void setValue(MutableLongState mutableLongState, Object obj, ze4<?> ze4Var, long j) {
        mutableLongState.setLongValue(j);
    }
}
