package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long contentColor;
    private final long modalContainerColor;
    private final long modalContentColor;
    private final long modalScrimColor;

    private WideNavigationRailColors(long j, long j2, long j3, long j4, long j5) {
        this.containerColor = j;
        this.contentColor = j2;
        this.modalContainerColor = j3;
        this.modalScrimColor = j4;
        this.modalContentColor = j5;
    }

    /* JADX INFO: renamed from: copy-t635Npw$default, reason: not valid java name */
    public static /* synthetic */ WideNavigationRailColors m4314copyt635Npw$default(WideNavigationRailColors wideNavigationRailColors, long j, long j2, long j3, long j4, long j5, int i, Object obj) {
        if ((i & 1) != 0) {
            j = wideNavigationRailColors.containerColor;
        }
        long j6 = j;
        if ((i & 2) != 0) {
            j2 = wideNavigationRailColors.contentColor;
        }
        return wideNavigationRailColors.m4315copyt635Npw(j6, j2, (i & 4) != 0 ? wideNavigationRailColors.modalContainerColor : j3, (i & 8) != 0 ? wideNavigationRailColors.modalScrimColor : j4, (i & 16) != 0 ? wideNavigationRailColors.modalContentColor : j5);
    }

    /* JADX INFO: renamed from: copy-t635Npw, reason: not valid java name */
    public final WideNavigationRailColors m4315copyt635Npw(long j, long j2, long j3, long j4, long j5) {
        return new WideNavigationRailColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.contentColor, j3 != 16 ? j3 : this.modalContainerColor, j4 != 16 ? j4 : this.modalScrimColor, j5 != 16 ? j5 : this.modalContentColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WideNavigationRailColors)) {
            return false;
        }
        WideNavigationRailColors wideNavigationRailColors = (WideNavigationRailColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, wideNavigationRailColors.containerColor) && Color.m6233equalsimpl0(this.contentColor, wideNavigationRailColors.contentColor) && Color.m6233equalsimpl0(this.modalContainerColor, wideNavigationRailColors.modalContainerColor) && Color.m6233equalsimpl0(this.modalScrimColor, wideNavigationRailColors.modalScrimColor);
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4316getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getContentColor-0d7_KjU, reason: not valid java name */
    public final long m4317getContentColor0d7_KjU() {
        return this.contentColor;
    }

    /* JADX INFO: renamed from: getModalContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4318getModalContainerColor0d7_KjU() {
        return this.modalContainerColor;
    }

    /* JADX INFO: renamed from: getModalContentColor-0d7_KjU, reason: not valid java name */
    public final long m4319getModalContentColor0d7_KjU() {
        return this.modalContentColor;
    }

    /* JADX INFO: renamed from: getModalScrimColor-0d7_KjU, reason: not valid java name */
    public final long m4320getModalScrimColor0d7_KjU() {
        return this.modalScrimColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.modalContentColor) + r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.contentColor), 31, this.modalContainerColor), 31, this.modalScrimColor);
    }

    public /* synthetic */ WideNavigationRailColors(long j, long j2, long j3, long j4, long j5, jh2 jh2Var) {
        this(j, j2, j3, j4, j5);
    }
}
