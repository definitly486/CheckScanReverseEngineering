package androidx.compose.ui.layout;

import androidx.collection.IntList;
import defpackage.ar4;
import defpackage.jh;
import defpackage.na8;
import defpackage.qn1;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class SubcomposeLayoutPausableCompositionException extends IllegalStateException {
    private final IntList operations;
    private final Object slotId;

    public SubcomposeLayoutPausableCompositionException(IntList intList, Object obj, Throwable th) {
        super(th);
        this.operations = intList;
        this.slotId = obj;
    }

    public static /* synthetic */ void getMessage$annotations() {
    }

    private final List<String> operationsList() {
        String strB;
        ar4 ar4VarE = u96.e();
        for (int i = this.operations._size - 1; i >= 0; i += -1) {
            int i2 = this.operations.get(i);
            int iM7785constructorimpl = SLOperation.m7785constructorimpl(i2);
            SLOperation.Companion companion = SLOperation.Companion;
            if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7792getCancelPausedPrecompositionNjRlDlw())) {
                strB = "CancelPausedPrecomposition";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7798getReuseForceSyncDeactivationNjRlDlw())) {
                strB = "ReuseForceSyncDeactivation";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7799getReuseScheduleOutOfFrameDeactivationNjRlDlw())) {
                strB = "ReuseScheduleOutOfFrameDeactivation";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7800getReuseSyncDeactivationNjRlDlw())) {
                strB = "ReuseSyncDeactivation";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7797getReuseDeactivationViaHostNjRlDlw())) {
                strB = "ReuseDeactivationViaHost";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7808getTookFromPrecomposeMapNjRlDlw())) {
                strB = "TookFromPrecomposeMap";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7804getSubcomposeNjRlDlw())) {
                strB = "Subcompose";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7806getSubcomposeNewNjRlDlw())) {
                strB = "SubcomposeNew";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7807getSubcomposePausableNjRlDlw())) {
                strB = "SubcomposePausable";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7805getSubcomposeForceReuseNjRlDlw())) {
                strB = "SubcomposeForceReuse";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7793getDeactivateOutOfFrameNjRlDlw())) {
                strB = "DeactivateOutOfFrame";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7794getDeactivateOutOfFrameCancelledNjRlDlw())) {
                strB = "DeactivateOutOfFrameCancelled";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7802getSlotToReusedFromOnDeactivateNjRlDlw())) {
                strB = "SlotToReusedFromOnDeactivate";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7803getSlotToReusedFromOnReuseNjRlDlw())) {
                strB = "SlotToReusedFromOnReuse";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7801getReusedNjRlDlw())) {
                strB = "Reused";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7796getResumePausedNjRlDlw())) {
                strB = "ResumePaused";
            } else if (SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7795getPausePausedNjRlDlw())) {
                strB = "PausePaused";
            } else {
                strB = SLOperation.m7787equalsimpl0(iM7785constructorimpl, companion.m7791getApplyPausedNjRlDlw()) ? "ApplyPaused" : jh.b(i2, "Unexpected ");
            }
            ar4VarE.add(i + ": " + strB);
        }
        return u96.d(ar4VarE);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return na8.j("\n            |slotid=" + this.slotId + ". Last operations:\n            |" + qn1.a0(operationsList(), "\n", null, null, 0, null, 62) + "\n            ");
    }
}
