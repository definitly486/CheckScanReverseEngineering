package androidx.compose.material3.internal;

import androidx.compose.material3.MenuKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.ej0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class DropdownMenuPositionProvider implements PopupPositionProvider {
    public static final int $stable = 0;
    private final MenuPosition.Vertical bottomToAnchorTop;
    private final MenuPosition.Vertical bottomToWindowBottom;
    private final MenuPosition.Vertical centerToAnchorTop;
    private final long contentOffset;
    private final Density density;
    private final MenuPosition.Horizontal endToAnchorEnd;
    private final MenuPosition.Horizontal leftToWindowLeft;
    private final bm3<IntRect, IntRect, j59> onPositionCalculated;
    private final MenuPosition.Horizontal rightToWindowRight;
    private final MenuPosition.Horizontal startToAnchorStart;
    private final MenuPosition.Vertical topToAnchorBottom;
    private final MenuPosition.Vertical topToWindowTop;
    private final int verticalMargin;

    /* JADX WARN: Multi-variable type inference failed */
    private DropdownMenuPositionProvider(long j, Density density, int i, bm3<? super IntRect, ? super IntRect, j59> bm3Var) {
        this.contentOffset = j;
        this.density = density;
        this.verticalMargin = i;
        this.onPositionCalculated = bm3Var;
        int iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(DpOffset.m9103getXD9Ej5fM(j));
        MenuPosition menuPosition = MenuPosition.INSTANCE;
        this.startToAnchorStart = menuPosition.startToAnchorStart(iMo1428roundToPx0680j_4);
        this.endToAnchorEnd = menuPosition.endToAnchorEnd(iMo1428roundToPx0680j_4);
        this.leftToWindowLeft = menuPosition.leftToWindowLeft(0);
        this.rightToWindowRight = menuPosition.rightToWindowRight(0);
        int iMo1428roundToPx0680j_5 = density.mo1428roundToPx0680j_4(DpOffset.m9105getYD9Ej5fM(j));
        this.topToAnchorBottom = menuPosition.topToAnchorBottom(iMo1428roundToPx0680j_5);
        this.bottomToAnchorTop = menuPosition.bottomToAnchorTop(iMo1428roundToPx0680j_5);
        this.centerToAnchorTop = menuPosition.centerToAnchorTop(iMo1428roundToPx0680j_5);
        this.topToWindowTop = menuPosition.topToWindowTop(i);
        this.bottomToWindowBottom = menuPosition.bottomToWindowBottom(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$1(IntRect intRect, IntRect intRect2) {
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-uVxBXkw$default, reason: not valid java name */
    public static /* synthetic */ DropdownMenuPositionProvider m4372copyuVxBXkw$default(DropdownMenuPositionProvider dropdownMenuPositionProvider, long j, Density density, int i, bm3 bm3Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = dropdownMenuPositionProvider.contentOffset;
        }
        long j2 = j;
        if ((i2 & 2) != 0) {
            density = dropdownMenuPositionProvider.density;
        }
        Density density2 = density;
        if ((i2 & 4) != 0) {
            i = dropdownMenuPositionProvider.verticalMargin;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            bm3Var = dropdownMenuPositionProvider.onPositionCalculated;
        }
        return dropdownMenuPositionProvider.m4374copyuVxBXkw(j2, density2, i3, bm3Var);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* JADX INFO: renamed from: calculatePosition-llwVHH4 */
    public long mo1402calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        IntRect intRect2;
        long j3;
        char c;
        int iMo4355position95KtPRI;
        int i;
        int i2;
        char c2 = ' ';
        int i3 = (int) (j >> 32);
        int i4 = 1;
        List listI = u96.i(this.startToAnchorStart, this.endToAnchorEnd, IntOffset.m9170getXimpl(intRect.m9194getCenternOccac()) < i3 / 2 ? this.leftToWindowLeft : this.rightToWindowRight);
        int size = listI.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                intRect2 = intRect;
                j3 = j;
                c = c2;
                iMo4355position95KtPRI = 0;
                break;
            }
            MenuPosition.Horizontal horizontal = (MenuPosition.Horizontal) listI.get(i5);
            int i6 = (int) (j2 >> c2);
            int i7 = size;
            c = c2;
            j3 = j;
            int i8 = i5;
            intRect2 = intRect;
            iMo4355position95KtPRI = horizontal.mo4355position95KtPRI(intRect2, j3, i6, layoutDirection);
            if (i8 == listI.size() - 1 || (iMo4355position95KtPRI >= 0 && i6 + iMo4355position95KtPRI <= i3)) {
                break;
            }
            i5 = i8 + 1;
            size = i7;
            c2 = c;
        }
        MenuPosition.Vertical vertical = this.topToAnchorBottom;
        MenuPosition.Vertical vertical2 = this.bottomToAnchorTop;
        MenuPosition.Vertical vertical3 = this.centerToAnchorTop;
        int iM9171getYimpl = IntOffset.m9171getYimpl(intRect2.m9194getCenternOccac());
        int i9 = (int) (j3 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        List listI2 = u96.i(vertical, vertical2, vertical3, iM9171getYimpl < i9 / 2 ? this.topToWindowTop : this.bottomToWindowBottom);
        int size2 = listI2.size();
        int i10 = 0;
        while (i10 < size2) {
            MenuPosition.Vertical vertical4 = (MenuPosition.Vertical) listI2.get(i10);
            int i11 = i4;
            int i12 = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            int iMo4356positionJVtK1S4 = vertical4.mo4356positionJVtK1S4(intRect2, j3, i12);
            if (i10 == listI2.size() - i11 || (iMo4356positionJVtK1S4 >= (i2 = this.verticalMargin) && i12 + iMo4356positionJVtK1S4 <= i9 - i2)) {
                i = iMo4356positionJVtK1S4;
                long jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo4355position95KtPRI) << c) | (((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                this.onPositionCalculated.invoke(intRect2, IntRectKt.m9203IntRectVbeCjmY(jM9164constructorimpl, j2));
                return jM9164constructorimpl;
            }
            i10++;
            i4 = i11;
        }
        i = 0;
        long jM9164constructorimpl2 = IntOffset.m9164constructorimpl((((long) iMo4355position95KtPRI) << c) | (((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        this.onPositionCalculated.invoke(intRect2, IntRectKt.m9203IntRectVbeCjmY(jM9164constructorimpl2, j2));
        return jM9164constructorimpl2;
    }

    /* JADX INFO: renamed from: component1-RKDOV3M, reason: not valid java name */
    public final long m4373component1RKDOV3M() {
        return this.contentOffset;
    }

    public final Density component2() {
        return this.density;
    }

    public final int component3() {
        return this.verticalMargin;
    }

    public final bm3<IntRect, IntRect, j59> component4() {
        return this.onPositionCalculated;
    }

    /* JADX INFO: renamed from: copy-uVxBXkw, reason: not valid java name */
    public final DropdownMenuPositionProvider m4374copyuVxBXkw(long j, Density density, int i, bm3<? super IntRect, ? super IntRect, j59> bm3Var) {
        return new DropdownMenuPositionProvider(j, density, i, bm3Var, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DropdownMenuPositionProvider)) {
            return false;
        }
        DropdownMenuPositionProvider dropdownMenuPositionProvider = (DropdownMenuPositionProvider) obj;
        return DpOffset.m9102equalsimpl0(this.contentOffset, dropdownMenuPositionProvider.contentOffset) && aa4.e(this.density, dropdownMenuPositionProvider.density) && this.verticalMargin == dropdownMenuPositionProvider.verticalMargin && aa4.e(this.onPositionCalculated, dropdownMenuPositionProvider.onPositionCalculated);
    }

    /* JADX INFO: renamed from: getContentOffset-RKDOV3M, reason: not valid java name */
    public final long m4375getContentOffsetRKDOV3M() {
        return this.contentOffset;
    }

    public final Density getDensity() {
        return this.density;
    }

    public final bm3<IntRect, IntRect, j59> getOnPositionCalculated() {
        return this.onPositionCalculated;
    }

    public final int getVerticalMargin() {
        return this.verticalMargin;
    }

    public int hashCode() {
        return this.onPositionCalculated.hashCode() + ej0.b(this.verticalMargin, (this.density.hashCode() + (DpOffset.m9107hashCodeimpl(this.contentOffset) * 31)) * 31, 31);
    }

    public String toString() {
        return "DropdownMenuPositionProvider(contentOffset=" + ((Object) DpOffset.m9110toStringimpl(this.contentOffset)) + ", density=" + this.density + ", verticalMargin=" + this.verticalMargin + ", onPositionCalculated=" + this.onPositionCalculated + ')';
    }

    public /* synthetic */ DropdownMenuPositionProvider(long j, Density density, int i, bm3 bm3Var, jh2 jh2Var) {
        this(j, density, i, bm3Var);
    }

    public /* synthetic */ DropdownMenuPositionProvider(long j, Density density, int i, bm3 bm3Var, int i2, jh2 jh2Var) {
        this(j, density, (i2 & 4) != 0 ? density.mo1428roundToPx0680j_4(MenuKt.getMenuVerticalMargin()) : i, (i2 & 8) != 0 ? new kt2(0) : bm3Var, null);
    }
}
