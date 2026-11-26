package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Rect;
import androidx.media3.muxer.MuxerUtil;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public enum SelectionMode {
    Vertical { // from class: androidx.compose.foundation.text.selection.SelectionMode.Vertical
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        /* JADX INFO: renamed from: compare-3MmeM6k$foundation */
        public int mo3019compare3MmeM6k$foundation(long j, Rect rect) {
            if (SelectionManagerKt.m3015containsInclusiveUv8p0NA(rect, j)) {
                return 0;
            }
            int i = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j);
            if (Float.intBitsToFloat(i) < rect.getTop()) {
                return -1;
            }
            return (Float.intBitsToFloat((int) (j >> 32)) >= rect.getLeft() || Float.intBitsToFloat(i) >= rect.getBottom()) ? 1 : -1;
        }
    },
    Horizontal { // from class: androidx.compose.foundation.text.selection.SelectionMode.Horizontal
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        /* JADX INFO: renamed from: compare-3MmeM6k$foundation */
        public int mo3019compare3MmeM6k$foundation(long j, Rect rect) {
            if (SelectionManagerKt.m3015containsInclusiveUv8p0NA(rect, j)) {
                return 0;
            }
            int i = (int) (j >> 32);
            if (Float.intBitsToFloat(i) < rect.getLeft()) {
                return -1;
            }
            return (Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) >= rect.getTop() || Float.intBitsToFloat(i) >= rect.getRight()) ? 1 : -1;
        }
    };

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    /* synthetic */ SelectionMode(jh2 jh2Var) {
        this();
    }

    /* JADX INFO: renamed from: containsInclusive-Uv8p0NA, reason: not valid java name */
    private final boolean m3018containsInclusiveUv8p0NA(Rect rect, long j) {
        float left = rect.getLeft();
        float right = rect.getRight();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        if (left > fIntBitsToFloat || fIntBitsToFloat > right) {
            return false;
        }
        float top = rect.getTop();
        float bottom = rect.getBottom();
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return top <= fIntBitsToFloat2 && fIntBitsToFloat2 <= bottom;
    }

    public static g03<SelectionMode> getEntries() {
        return $ENTRIES;
    }

    /* JADX INFO: renamed from: compare-3MmeM6k$foundation, reason: not valid java name */
    public abstract int mo3019compare3MmeM6k$foundation(long j, Rect rect);

    /* JADX INFO: renamed from: isSelected-2x9bVx0$foundation, reason: not valid java name */
    public final boolean m3020isSelected2x9bVx0$foundation(Rect rect, long j, long j2) {
        if (m3018containsInclusiveUv8p0NA(rect, j) || m3018containsInclusiveUv8p0NA(rect, j2)) {
            return true;
        }
        return (mo3019compare3MmeM6k$foundation(j, rect) > 0) ^ (mo3019compare3MmeM6k$foundation(j2, rect) > 0);
    }
}
