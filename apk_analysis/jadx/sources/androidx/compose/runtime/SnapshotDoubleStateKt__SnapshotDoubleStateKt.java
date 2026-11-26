package androidx.compose.runtime;

import defpackage.ze4;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class SnapshotDoubleStateKt__SnapshotDoubleStateKt {
    public static final double getValue(DoubleState doubleState, Object obj, ze4<?> ze4Var) {
        return doubleState.getDoubleValue();
    }

    public static final MutableDoubleState mutableDoubleStateOf(double d) {
        return SnapshotDoubleState_androidKt.createSnapshotMutableDoubleState(d);
    }

    public static final void setValue(MutableDoubleState mutableDoubleState, Object obj, ze4<?> ze4Var, double d) {
        mutableDoubleState.setDoubleValue(d);
    }
}
