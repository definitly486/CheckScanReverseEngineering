package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class MenuItemColors {
    public static final int $stable = 0;
    private final long disabledLeadingIconColor;
    private final long disabledTextColor;
    private final long disabledTrailingIconColor;
    private final long leadingIconColor;
    private final long textColor;
    private final long trailingIconColor;

    private MenuItemColors(long j, long j2, long j3, long j4, long j5, long j6) {
        this.textColor = j;
        this.leadingIconColor = j2;
        this.trailingIconColor = j3;
        this.disabledTextColor = j4;
        this.disabledLeadingIconColor = j5;
        this.disabledTrailingIconColor = j6;
    }

    /* JADX INFO: renamed from: copy-tNS2XkQ$default, reason: not valid java name */
    public static /* synthetic */ MenuItemColors m3610copytNS2XkQ$default(MenuItemColors menuItemColors, long j, long j2, long j3, long j4, long j5, long j6, int i, Object obj) {
        if ((i & 1) != 0) {
            j = menuItemColors.textColor;
        }
        return menuItemColors.m3611copytNS2XkQ(j, (i & 2) != 0 ? menuItemColors.leadingIconColor : j2, (i & 4) != 0 ? menuItemColors.trailingIconColor : j3, (i & 8) != 0 ? menuItemColors.disabledTextColor : j4, (i & 16) != 0 ? menuItemColors.disabledLeadingIconColor : j5, (i & 32) != 0 ? menuItemColors.disabledTrailingIconColor : j6);
    }

    /* JADX INFO: renamed from: copy-tNS2XkQ, reason: not valid java name */
    public final MenuItemColors m3611copytNS2XkQ(long j, long j2, long j3, long j4, long j5, long j6) {
        return new MenuItemColors(j != 16 ? j : this.textColor, j2 != 16 ? j2 : this.leadingIconColor, j3 != 16 ? j3 : this.trailingIconColor, j4 != 16 ? j4 : this.disabledTextColor, j5 != 16 ? j5 : this.disabledLeadingIconColor, j6 != 16 ? j6 : this.disabledTrailingIconColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof MenuItemColors)) {
            return false;
        }
        MenuItemColors menuItemColors = (MenuItemColors) obj;
        return Color.m6233equalsimpl0(this.textColor, menuItemColors.textColor) && Color.m6233equalsimpl0(this.leadingIconColor, menuItemColors.leadingIconColor) && Color.m6233equalsimpl0(this.trailingIconColor, menuItemColors.trailingIconColor) && Color.m6233equalsimpl0(this.disabledTextColor, menuItemColors.disabledTextColor) && Color.m6233equalsimpl0(this.disabledLeadingIconColor, menuItemColors.disabledLeadingIconColor) && Color.m6233equalsimpl0(this.disabledTrailingIconColor, menuItemColors.disabledTrailingIconColor);
    }

    /* JADX INFO: renamed from: getDisabledLeadingIconColor-0d7_KjU, reason: not valid java name */
    public final long m3612getDisabledLeadingIconColor0d7_KjU() {
        return this.disabledLeadingIconColor;
    }

    /* JADX INFO: renamed from: getDisabledTextColor-0d7_KjU, reason: not valid java name */
    public final long m3613getDisabledTextColor0d7_KjU() {
        return this.disabledTextColor;
    }

    /* JADX INFO: renamed from: getDisabledTrailingIconColor-0d7_KjU, reason: not valid java name */
    public final long m3614getDisabledTrailingIconColor0d7_KjU() {
        return this.disabledTrailingIconColor;
    }

    /* JADX INFO: renamed from: getLeadingIconColor-0d7_KjU, reason: not valid java name */
    public final long m3615getLeadingIconColor0d7_KjU() {
        return this.leadingIconColor;
    }

    /* JADX INFO: renamed from: getTextColor-0d7_KjU, reason: not valid java name */
    public final long m3616getTextColor0d7_KjU() {
        return this.textColor;
    }

    /* JADX INFO: renamed from: getTrailingIconColor-0d7_KjU, reason: not valid java name */
    public final long m3617getTrailingIconColor0d7_KjU() {
        return this.trailingIconColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledTrailingIconColor) + r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.textColor) * 31, 31, this.leadingIconColor), 31, this.trailingIconColor), 31, this.disabledTextColor), 31, this.disabledLeadingIconColor);
    }

    /* JADX INFO: renamed from: leadingIconColor-vNxB06k$material3, reason: not valid java name */
    public final long m3618leadingIconColorvNxB06k$material3(boolean z) {
        return z ? this.leadingIconColor : this.disabledLeadingIconColor;
    }

    /* JADX INFO: renamed from: textColor-vNxB06k$material3, reason: not valid java name */
    public final long m3619textColorvNxB06k$material3(boolean z) {
        return z ? this.textColor : this.disabledTextColor;
    }

    /* JADX INFO: renamed from: trailingIconColor-vNxB06k$material3, reason: not valid java name */
    public final long m3620trailingIconColorvNxB06k$material3(boolean z) {
        return z ? this.trailingIconColor : this.disabledTrailingIconColor;
    }

    public /* synthetic */ MenuItemColors(long j, long j2, long j3, long j4, long j5, long j6, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6);
    }
}
