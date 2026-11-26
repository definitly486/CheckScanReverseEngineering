package androidx.compose.animation;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import defpackage.aa4;
import defpackage.ll3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionStateMachineKt {
    public static final boolean SharedTransitionDebug = false;

    public static final long calculateOffsetFromDirectManipulation(TargetData targetData, Rect rect) {
        return Offset.m5992plusMKHz9U(Offset.m5991minusMKHz9U(rect.m6022getTopLeftF1C5BW0(), targetData.m1172getInitialMfrOffsetF1C5BW0()), targetData.m1171getCurrentMfrOffsetF1C5BW0());
    }

    public static final Rect getTargetBounds(TargetData targetData) {
        return RectKt.m6027Recttz77jQw(Offset.m5992plusMKHz9U(targetData.m1172getInitialMfrOffsetF1C5BW0(), targetData.m1174getTargetStructuralOffsetF1C5BW0()), targetData.m1173getSizeNHjbRc());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect obtainBoundsFromLastTarget(SharedElement sharedElement, BoundsProvider boundsProvider) {
        if (boundsProvider == null) {
            return null;
        }
        List<SharedElementEntry> allEntries = sharedElement.getAllEntries();
        int size = allEntries.size();
        for (int i = 0; i < size; i++) {
            if (aa4.e(allEntries.get(i).getBoundsProvider(), boundsProvider)) {
                return boundsProvider.getLastBoundsInSharedTransitionScope();
            }
        }
        return null;
    }

    public static final void sharedTransitionDebug(ll3<String> ll3Var) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateTargetData-BGTQxF0, reason: not valid java name */
    public static final void m1158updateTargetDataBGTQxF0(TargetData targetData, long j, long j2, long j3, boolean z) {
        if (!Offset.m5984equalsimpl0(targetData.m1174getTargetStructuralOffsetF1C5BW0(), j3) || !Size.m6052equalsimpl0(targetData.m1173getSizeNHjbRc(), j) || z) {
            targetData.m1177setSizeuvyYCjk(j);
            targetData.m1178setTargetStructuralOffsetk4lQ0M(j3);
            if (z) {
                targetData.m1176setInitialMfrOffsetk4lQ0M(Offset.m5991minusMKHz9U(Offset.m5991minusMKHz9U(j2, j3), Offset.m5991minusMKHz9U(targetData.m1171getCurrentMfrOffsetF1C5BW0(), targetData.m1172getInitialMfrOffsetF1C5BW0())));
            }
        }
        targetData.m1175setCurrentMfrOffsetk4lQ0M(Offset.m5991minusMKHz9U(j2, j3));
    }
}
