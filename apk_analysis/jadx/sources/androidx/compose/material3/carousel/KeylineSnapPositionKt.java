package androidx.compose.material3.carousel;

import androidx.compose.foundation.gestures.snapping.SnapPosition;
import defpackage.kx6;
import defpackage.u96;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
public final class KeylineSnapPositionKt {
    public static final SnapPosition KeylineSnapPosition(final CarouselPageSize carouselPageSize) {
        return new SnapPosition() { // from class: androidx.compose.material3.carousel.KeylineSnapPositionKt.KeylineSnapPosition.1
            @Override // androidx.compose.foundation.gestures.snapping.SnapPosition
            public int position(int i, int i2, int i3, int i4, int i5, int i6) {
                return KeylineSnapPositionKt.getSnapPositionOffset(carouselPageSize.getStrategy(), i5, i6);
            }
        };
    }

    public static final int getSnapPositionOffset(Strategy strategy, int i, int i2) {
        if (!strategy.isValid()) {
            return 0;
        }
        int iB = w65.b(strategy.getDefaultKeylines().getFirstFocal().getUnadjustedOffset() - (strategy.getItemMainAxisSize() / 2.0f));
        if (i <= u96.g(strategy.getStartKeylineSteps())) {
            iB = w65.b(strategy.getStartKeylineSteps().get(kx6.f(u96.g(strategy.getStartKeylineSteps()) - i, 0, u96.g(strategy.getStartKeylineSteps()))).getFirstFocal().getUnadjustedOffset() - (strategy.getItemMainAxisSize() / 2.0f));
        }
        int i3 = i2 - 1;
        if (i < i3 - u96.g(strategy.getEndKeylineSteps()) || i2 <= strategy.getDefaultKeylines().getFocalCount()) {
            return iB;
        }
        return w65.b(strategy.getEndKeylineSteps().get(kx6.f(u96.g(strategy.getEndKeylineSteps()) - (i3 - i), 0, u96.g(strategy.getEndKeylineSteps()))).getFirstFocal().getUnadjustedOffset() - (strategy.getItemMainAxisSize() / 2.0f));
    }
}
