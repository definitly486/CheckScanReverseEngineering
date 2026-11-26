package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationItemColors {
    public static final int $stable = 0;
    private final long disabledIconColor;
    private final long disabledTextColor;
    private final long selectedIconColor;
    private final long selectedIndicatorColor;
    private final long selectedTextColor;
    private final long unselectedIconColor;
    private final long unselectedTextColor;

    private NavigationItemColors(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.selectedIconColor = j;
        this.selectedTextColor = j2;
        this.selectedIndicatorColor = j3;
        this.unselectedIconColor = j4;
        this.unselectedTextColor = j5;
        this.disabledIconColor = j6;
        this.disabledTextColor = j7;
    }

    /* JADX INFO: renamed from: copy-4JmcsL4, reason: not valid java name */
    public final NavigationItemColors m3665copy4JmcsL4(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        return new NavigationItemColors(j != 16 ? j : this.selectedIconColor, j2 != 16 ? j2 : this.selectedTextColor, j3 != 16 ? j3 : this.selectedIndicatorColor, j4 != 16 ? j4 : this.unselectedIconColor, j5 != 16 ? j5 : this.unselectedTextColor, j6 != 16 ? j6 : this.disabledIconColor, j7 != 16 ? j7 : this.disabledTextColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NavigationItemColors)) {
            return false;
        }
        NavigationItemColors navigationItemColors = (NavigationItemColors) obj;
        return Color.m6233equalsimpl0(this.selectedIconColor, navigationItemColors.selectedIconColor) && Color.m6233equalsimpl0(this.unselectedIconColor, navigationItemColors.unselectedIconColor) && Color.m6233equalsimpl0(this.selectedTextColor, navigationItemColors.selectedTextColor) && Color.m6233equalsimpl0(this.unselectedTextColor, navigationItemColors.unselectedTextColor) && Color.m6233equalsimpl0(this.selectedIndicatorColor, navigationItemColors.selectedIndicatorColor) && Color.m6233equalsimpl0(this.disabledIconColor, navigationItemColors.disabledIconColor) && Color.m6233equalsimpl0(this.disabledTextColor, navigationItemColors.disabledTextColor);
    }

    /* JADX INFO: renamed from: getDisabledIconColor-0d7_KjU, reason: not valid java name */
    public final long m3666getDisabledIconColor0d7_KjU() {
        return this.disabledIconColor;
    }

    /* JADX INFO: renamed from: getDisabledTextColor-0d7_KjU, reason: not valid java name */
    public final long m3667getDisabledTextColor0d7_KjU() {
        return this.disabledTextColor;
    }

    /* JADX INFO: renamed from: getSelectedIconColor-0d7_KjU, reason: not valid java name */
    public final long m3668getSelectedIconColor0d7_KjU() {
        return this.selectedIconColor;
    }

    /* JADX INFO: renamed from: getSelectedIndicatorColor-0d7_KjU, reason: not valid java name */
    public final long m3669getSelectedIndicatorColor0d7_KjU() {
        return this.selectedIndicatorColor;
    }

    /* JADX INFO: renamed from: getSelectedTextColor-0d7_KjU, reason: not valid java name */
    public final long m3670getSelectedTextColor0d7_KjU() {
        return this.selectedTextColor;
    }

    /* JADX INFO: renamed from: getUnselectedIconColor-0d7_KjU, reason: not valid java name */
    public final long m3671getUnselectedIconColor0d7_KjU() {
        return this.unselectedIconColor;
    }

    /* JADX INFO: renamed from: getUnselectedTextColor-0d7_KjU, reason: not valid java name */
    public final long m3672getUnselectedTextColor0d7_KjU() {
        return this.unselectedTextColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledTextColor) + r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.selectedIconColor) * 31, 31, this.unselectedIconColor), 31, this.selectedTextColor), 31, this.unselectedTextColor), 31, this.selectedIndicatorColor), 31, this.disabledIconColor);
    }

    /* JADX INFO: renamed from: iconColor-WaAFU9c, reason: not valid java name */
    public final long m3673iconColorWaAFU9c(boolean z, boolean z2) {
        if (z2) {
            return z ? this.selectedIconColor : this.unselectedIconColor;
        }
        return this.disabledIconColor;
    }

    /* JADX INFO: renamed from: textColor-WaAFU9c, reason: not valid java name */
    public final long m3674textColorWaAFU9c(boolean z, boolean z2) {
        if (z2) {
            return z ? this.selectedTextColor : this.unselectedTextColor;
        }
        return this.disabledTextColor;
    }

    public /* synthetic */ NavigationItemColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7);
    }
}
