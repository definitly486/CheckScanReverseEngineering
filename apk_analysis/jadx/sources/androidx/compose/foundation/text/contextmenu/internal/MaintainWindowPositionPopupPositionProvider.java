package androidx.compose.foundation.text.contextmenu.internal;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* JADX INFO: loaded from: classes2.dex */
final class MaintainWindowPositionPopupPositionProvider implements PopupPositionProvider {
    private final PopupPositionProvider popupPositionProvider;
    private LayoutDirection previousLayoutDirection;
    private IntSize previousPopupContentSize;
    private IntOffset previousPosition;
    private IntSize previousWindowSize;

    public MaintainWindowPositionPopupPositionProvider(PopupPositionProvider popupPositionProvider) {
        this.popupPositionProvider = popupPositionProvider;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* JADX INFO: renamed from: calculatePosition-llwVHH4 */
    public long mo1402calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        IntOffset intOffset = this.previousPosition;
        if (intOffset != null) {
            IntSize intSize = this.previousWindowSize;
            if ((intSize == null ? false : IntSize.m9211equalsimpl0(intSize.m9217unboximpl(), j)) && this.previousLayoutDirection == layoutDirection) {
                IntSize intSize2 = this.previousPopupContentSize;
                if (intSize2 != null ? IntSize.m9211equalsimpl0(intSize2.m9217unboximpl(), j2) : false) {
                    return intOffset.m9179unboximpl();
                }
            }
        }
        long jMo1402calculatePositionllwVHH4 = this.popupPositionProvider.mo1402calculatePositionllwVHH4(intRect, j, layoutDirection, j2);
        this.previousWindowSize = IntSize.m9205boximpl(j);
        this.previousLayoutDirection = layoutDirection;
        this.previousPopupContentSize = IntSize.m9205boximpl(j2);
        this.previousPosition = IntOffset.m9161boximpl(jMo1402calculatePositionllwVHH4);
        return jMo1402calculatePositionllwVHH4;
    }

    public final PopupPositionProvider getPopupPositionProvider() {
        return this.popupPositionProvider;
    }

    public final LayoutDirection getPreviousLayoutDirection() {
        return this.previousLayoutDirection;
    }

    /* JADX INFO: renamed from: getPreviousPopupContentSize-bOM6tXw, reason: not valid java name */
    public final IntSize m2639getPreviousPopupContentSizebOM6tXw() {
        return this.previousPopupContentSize;
    }

    /* JADX INFO: renamed from: getPreviousPosition-JyOPPKE, reason: not valid java name */
    public final IntOffset m2640getPreviousPositionJyOPPKE() {
        return this.previousPosition;
    }

    /* JADX INFO: renamed from: getPreviousWindowSize-bOM6tXw, reason: not valid java name */
    public final IntSize m2641getPreviousWindowSizebOM6tXw() {
        return this.previousWindowSize;
    }

    public final void setPreviousLayoutDirection(LayoutDirection layoutDirection) {
        this.previousLayoutDirection = layoutDirection;
    }

    /* JADX INFO: renamed from: setPreviousPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m2642setPreviousPopupContentSizefhxjrPA(IntSize intSize) {
        this.previousPopupContentSize = intSize;
    }

    /* JADX INFO: renamed from: setPreviousPosition-fg0MpWk, reason: not valid java name */
    public final void m2643setPreviousPositionfg0MpWk(IntOffset intOffset) {
        this.previousPosition = intOffset;
    }

    /* JADX INFO: renamed from: setPreviousWindowSize-fhxjrPA, reason: not valid java name */
    public final void m2644setPreviousWindowSizefhxjrPA(IntSize intSize) {
        this.previousWindowSize = intSize;
    }
}
