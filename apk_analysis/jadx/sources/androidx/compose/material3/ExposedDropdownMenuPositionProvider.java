package androidx.compose.material3;

import androidx.compose.material3.internal.MenuPosition;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.p43;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ExposedDropdownMenuPositionProvider implements PopupPositionProvider {
    public static final int $stable = 0;
    private final MenuPosition.Vertical bottomToAnchorTop;
    private final MenuPosition.Vertical bottomToWindowBottom;
    private final Density density;
    private final MenuPosition.Horizontal endToAnchorEnd;
    private final State<j59> keyboardSignalState;
    private final MenuPosition.Horizontal leftToWindowLeft;
    private final bm3<IntRect, IntRect, j59> onPositionCalculated;
    private final MenuPosition.Horizontal rightToWindowRight;
    private final MenuPosition.Horizontal startToAnchorStart;
    private final MenuPosition.Vertical topToAnchorBottom;
    private final MenuPosition.Vertical topToWindowTop;
    private final int topWindowInsets;
    private final int verticalMargin;

    /* JADX WARN: Multi-variable type inference failed */
    public ExposedDropdownMenuPositionProvider(Density density, int i, State<j59> state, int i2, bm3<? super IntRect, ? super IntRect, j59> bm3Var) {
        this.density = density;
        this.topWindowInsets = i;
        this.keyboardSignalState = state;
        this.verticalMargin = i2;
        this.onPositionCalculated = bm3Var;
        MenuPosition menuPosition = MenuPosition.INSTANCE;
        this.startToAnchorStart = MenuPosition.startToAnchorStart$default(menuPosition, 0, 1, null);
        this.endToAnchorEnd = MenuPosition.endToAnchorEnd$default(menuPosition, 0, 1, null);
        this.leftToWindowLeft = MenuPosition.leftToWindowLeft$default(menuPosition, 0, 1, null);
        this.rightToWindowRight = MenuPosition.rightToWindowRight$default(menuPosition, 0, 1, null);
        this.topToAnchorBottom = MenuPosition.topToAnchorBottom$default(menuPosition, 0, 1, null);
        this.bottomToAnchorTop = MenuPosition.bottomToAnchorTop$default(menuPosition, 0, 1, null);
        this.topToWindowTop = menuPosition.topToWindowTop(i2);
        this.bottomToWindowBottom = menuPosition.bottomToWindowBottom(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$1(IntRect intRect, IntRect intRect2) {
        return j59.a;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* JADX INFO: renamed from: calculatePosition-llwVHH4 */
    public long mo1402calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        IntRect intRect2;
        char c;
        long j3;
        int iMo4355position95KtPRI;
        State<j59> state = this.keyboardSignalState;
        if (state != null) {
            state.getValue();
        }
        char c2 = ' ';
        long j4 = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long jM9208constructorimpl = IntSize.m9208constructorimpl((((long) (((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + this.topWindowInsets)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) ((int) (j >> 32))) << 32));
        int i = (int) (jM9208constructorimpl >> 32);
        int i2 = 0;
        List listI = u96.i(this.startToAnchorStart, this.endToAnchorEnd, IntOffset.m9170getXimpl(intRect.m9194getCenternOccac()) < i / 2 ? this.leftToWindowLeft : this.rightToWindowRight);
        int size = listI.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                intRect2 = intRect;
                c = c2;
                j3 = j4;
                iMo4355position95KtPRI = 0;
                break;
            }
            c = c2;
            j3 = j4;
            int i4 = (int) (j2 >> c);
            int i5 = size;
            int i6 = i3;
            intRect2 = intRect;
            List list = listI;
            iMo4355position95KtPRI = ((MenuPosition.Horizontal) listI.get(i3)).mo4355position95KtPRI(intRect2, jM9208constructorimpl, i4, layoutDirection);
            if (i6 == list.size() - 1 || (iMo4355position95KtPRI >= 0 && i4 + iMo4355position95KtPRI <= i)) {
                break;
            }
            i3 = i6 + 1;
            listI = list;
            size = i5;
            c2 = c;
            j4 = j3;
        }
        int i7 = (int) (jM9208constructorimpl & j3);
        List listI2 = u96.i(this.topToAnchorBottom, this.bottomToAnchorTop, IntOffset.m9171getYimpl(intRect2.m9194getCenternOccac()) < i7 / 2 ? this.topToWindowTop : this.bottomToWindowBottom);
        int size2 = listI2.size();
        for (int i8 = 0; i8 < size2; i8++) {
            int i9 = (int) (j2 & j3);
            int iMo4356positionJVtK1S4 = ((MenuPosition.Vertical) listI2.get(i8)).mo4356positionJVtK1S4(intRect2, jM9208constructorimpl, i9);
            if (i8 == listI2.size() - 1 || (iMo4356positionJVtK1S4 >= 0 && i9 + iMo4356positionJVtK1S4 <= i7)) {
                i2 = iMo4356positionJVtK1S4;
                break;
            }
        }
        long jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo4355position95KtPRI) << c) | (((long) i2) & j3));
        this.onPositionCalculated.invoke(intRect2, IntRectKt.m9203IntRectVbeCjmY(jM9164constructorimpl, j2));
        return jM9164constructorimpl;
    }

    public final Density getDensity() {
        return this.density;
    }

    public final State<j59> getKeyboardSignalState() {
        return this.keyboardSignalState;
    }

    public final bm3<IntRect, IntRect, j59> getOnPositionCalculated() {
        return this.onPositionCalculated;
    }

    public final int getTopWindowInsets() {
        return this.topWindowInsets;
    }

    public final int getVerticalMargin() {
        return this.verticalMargin;
    }

    public /* synthetic */ ExposedDropdownMenuPositionProvider(Density density, int i, State state, int i2, bm3 bm3Var, int i3, jh2 jh2Var) {
        this(density, i, (i3 & 4) != 0 ? null : state, (i3 & 8) != 0 ? density.mo1428roundToPx0680j_4(MenuKt.getMenuVerticalMargin()) : i2, (i3 & 16) != 0 ? new p43(0) : bm3Var);
    }
}
