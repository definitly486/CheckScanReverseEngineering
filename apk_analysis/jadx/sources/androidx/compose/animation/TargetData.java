package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class TargetData {
    public static final int $stable = 0;
    private final MutableState currentMfrOffset$delegate;
    private final MutableState initialMfrOffset$delegate;
    private final MutableState size$delegate;
    private final MutableState targetStructuralOffset$delegate;

    private TargetData(long j, long j2, long j3) {
        this.size$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m6044boximpl(j), null, 2, null);
        this.initialMfrOffset$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(j2), null, 2, null);
        this.targetStructuralOffset$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(j3), null, 2, null);
        this.currentMfrOffset$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m5976boximpl(j2), null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getCurrentMfrOffset-F1C5BW0, reason: not valid java name */
    public final long m1171getCurrentMfrOffsetF1C5BW0() {
        return ((Offset) this.currentMfrOffset$delegate.getValue()).m5997unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getInitialMfrOffset-F1C5BW0, reason: not valid java name */
    public final long m1172getInitialMfrOffsetF1C5BW0() {
        return ((Offset) this.initialMfrOffset$delegate.getValue()).m5997unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m1173getSizeNHjbRc() {
        return ((Size) this.size$delegate.getValue()).m6061unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getTargetStructuralOffset-F1C5BW0, reason: not valid java name */
    public final long m1174getTargetStructuralOffsetF1C5BW0() {
        return ((Offset) this.targetStructuralOffset$delegate.getValue()).m5997unboximpl();
    }

    /* JADX INFO: renamed from: setCurrentMfrOffset-k-4lQ0M, reason: not valid java name */
    public final void m1175setCurrentMfrOffsetk4lQ0M(long j) {
        this.currentMfrOffset$delegate.setValue(Offset.m5976boximpl(j));
    }

    /* JADX INFO: renamed from: setInitialMfrOffset-k-4lQ0M, reason: not valid java name */
    public final void m1176setInitialMfrOffsetk4lQ0M(long j) {
        this.initialMfrOffset$delegate.setValue(Offset.m5976boximpl(j));
    }

    /* JADX INFO: renamed from: setSize-uvyYCjk, reason: not valid java name */
    public final void m1177setSizeuvyYCjk(long j) {
        this.size$delegate.setValue(Size.m6044boximpl(j));
    }

    /* JADX INFO: renamed from: setTargetStructuralOffset-k-4lQ0M, reason: not valid java name */
    public final void m1178setTargetStructuralOffsetk4lQ0M(long j) {
        this.targetStructuralOffset$delegate.setValue(Offset.m5976boximpl(j));
    }

    public /* synthetic */ TargetData(long j, long j2, long j3, jh2 jh2Var) {
        this(j, j2, j3);
    }
}
