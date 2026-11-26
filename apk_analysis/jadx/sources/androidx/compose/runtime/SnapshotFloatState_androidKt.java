package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotFloatState_androidKt {
    public static final MutableFloatState createSnapshotMutableFloatState(float f) {
        return new ParcelableSnapshotMutableFloatState(f);
    }
}
