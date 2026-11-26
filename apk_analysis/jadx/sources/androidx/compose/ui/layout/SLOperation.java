package androidx.compose.ui.layout;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
final class SLOperation {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int CancelPausedPrecomposition = m7785constructorimpl(0);
    private static final int ReuseForceSyncDeactivation = m7785constructorimpl(1);
    private static final int ReuseScheduleOutOfFrameDeactivation = m7785constructorimpl(2);
    private static final int ReuseSyncDeactivation = m7785constructorimpl(3);
    private static final int ReuseDeactivationViaHost = m7785constructorimpl(4);
    private static final int TookFromPrecomposeMap = m7785constructorimpl(5);
    private static final int Subcompose = m7785constructorimpl(6);
    private static final int SubcomposeNew = m7785constructorimpl(7);
    private static final int SubcomposePausable = m7785constructorimpl(8);
    private static final int SubcomposeForceReuse = m7785constructorimpl(9);
    private static final int DeactivateOutOfFrame = m7785constructorimpl(10);
    private static final int DeactivateOutOfFrameCancelled = m7785constructorimpl(11);
    private static final int SlotToReusedFromOnDeactivate = m7785constructorimpl(12);
    private static final int SlotToReusedFromOnReuse = m7785constructorimpl(13);
    private static final int Reused = m7785constructorimpl(14);
    private static final int ResumePaused = m7785constructorimpl(15);
    private static final int PausePaused = m7785constructorimpl(16);
    private static final int ApplyPaused = m7785constructorimpl(17);

    private /* synthetic */ SLOperation(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SLOperation m7784boximpl(int i) {
        return new SLOperation(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m7785constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7786equalsimpl(int i, Object obj) {
        return (obj instanceof SLOperation) && i == ((SLOperation) obj).m7790unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7787equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7788hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7789toStringimpl(int i) {
        return qz0.d("SLOperation(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m7786equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m7788hashCodeimpl(this.value);
    }

    public String toString() {
        return m7789toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7790unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getApplyPaused-NjRlDlw, reason: not valid java name */
        public final int m7791getApplyPausedNjRlDlw() {
            return SLOperation.ApplyPaused;
        }

        /* JADX INFO: renamed from: getCancelPausedPrecomposition-NjRlDlw, reason: not valid java name */
        public final int m7792getCancelPausedPrecompositionNjRlDlw() {
            return SLOperation.CancelPausedPrecomposition;
        }

        /* JADX INFO: renamed from: getDeactivateOutOfFrame-NjRlDlw, reason: not valid java name */
        public final int m7793getDeactivateOutOfFrameNjRlDlw() {
            return SLOperation.DeactivateOutOfFrame;
        }

        /* JADX INFO: renamed from: getDeactivateOutOfFrameCancelled-NjRlDlw, reason: not valid java name */
        public final int m7794getDeactivateOutOfFrameCancelledNjRlDlw() {
            return SLOperation.DeactivateOutOfFrameCancelled;
        }

        /* JADX INFO: renamed from: getPausePaused-NjRlDlw, reason: not valid java name */
        public final int m7795getPausePausedNjRlDlw() {
            return SLOperation.PausePaused;
        }

        /* JADX INFO: renamed from: getResumePaused-NjRlDlw, reason: not valid java name */
        public final int m7796getResumePausedNjRlDlw() {
            return SLOperation.ResumePaused;
        }

        /* JADX INFO: renamed from: getReuseDeactivationViaHost-NjRlDlw, reason: not valid java name */
        public final int m7797getReuseDeactivationViaHostNjRlDlw() {
            return SLOperation.ReuseDeactivationViaHost;
        }

        /* JADX INFO: renamed from: getReuseForceSyncDeactivation-NjRlDlw, reason: not valid java name */
        public final int m7798getReuseForceSyncDeactivationNjRlDlw() {
            return SLOperation.ReuseForceSyncDeactivation;
        }

        /* JADX INFO: renamed from: getReuseScheduleOutOfFrameDeactivation-NjRlDlw, reason: not valid java name */
        public final int m7799getReuseScheduleOutOfFrameDeactivationNjRlDlw() {
            return SLOperation.ReuseScheduleOutOfFrameDeactivation;
        }

        /* JADX INFO: renamed from: getReuseSyncDeactivation-NjRlDlw, reason: not valid java name */
        public final int m7800getReuseSyncDeactivationNjRlDlw() {
            return SLOperation.ReuseSyncDeactivation;
        }

        /* JADX INFO: renamed from: getReused-NjRlDlw, reason: not valid java name */
        public final int m7801getReusedNjRlDlw() {
            return SLOperation.Reused;
        }

        /* JADX INFO: renamed from: getSlotToReusedFromOnDeactivate-NjRlDlw, reason: not valid java name */
        public final int m7802getSlotToReusedFromOnDeactivateNjRlDlw() {
            return SLOperation.SlotToReusedFromOnDeactivate;
        }

        /* JADX INFO: renamed from: getSlotToReusedFromOnReuse-NjRlDlw, reason: not valid java name */
        public final int m7803getSlotToReusedFromOnReuseNjRlDlw() {
            return SLOperation.SlotToReusedFromOnReuse;
        }

        /* JADX INFO: renamed from: getSubcompose-NjRlDlw, reason: not valid java name */
        public final int m7804getSubcomposeNjRlDlw() {
            return SLOperation.Subcompose;
        }

        /* JADX INFO: renamed from: getSubcomposeForceReuse-NjRlDlw, reason: not valid java name */
        public final int m7805getSubcomposeForceReuseNjRlDlw() {
            return SLOperation.SubcomposeForceReuse;
        }

        /* JADX INFO: renamed from: getSubcomposeNew-NjRlDlw, reason: not valid java name */
        public final int m7806getSubcomposeNewNjRlDlw() {
            return SLOperation.SubcomposeNew;
        }

        /* JADX INFO: renamed from: getSubcomposePausable-NjRlDlw, reason: not valid java name */
        public final int m7807getSubcomposePausableNjRlDlw() {
            return SLOperation.SubcomposePausable;
        }

        /* JADX INFO: renamed from: getTookFromPrecomposeMap-NjRlDlw, reason: not valid java name */
        public final int m7808getTookFromPrecomposeMapNjRlDlw() {
            return SLOperation.TookFromPrecomposeMap;
        }

        private Companion() {
        }
    }
}
