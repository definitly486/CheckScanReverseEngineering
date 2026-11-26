package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotDoubleState_androidKt {
    public static final MutableDoubleState createSnapshotMutableDoubleState(double d) {
        return new ParcelableSnapshotMutableDoubleState(d);
    }
}
