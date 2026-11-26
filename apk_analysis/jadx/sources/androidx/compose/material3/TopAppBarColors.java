package androidx.compose.material3;

import androidx.compose.animation.core.EasingKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.jh2;
import defpackage.r01;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class TopAppBarColors {
    public static final int $stable = 0;
    private final long actionIconContentColor;
    private final long containerColor;
    private final long navigationIconContentColor;
    private final long scrolledContainerColor;
    private final long subtitleContentColor;
    private final long titleContentColor;

    private TopAppBarColors(long j, long j2, long j3, long j4, long j5) {
        this(j, j2, j3, j4, j5, j4, null);
    }

    /* JADX INFO: renamed from: copy-tNS2XkQ$default, reason: not valid java name */
    public static /* synthetic */ TopAppBarColors m4279copytNS2XkQ$default(TopAppBarColors topAppBarColors, long j, long j2, long j3, long j4, long j5, long j6, int i, Object obj) {
        if ((i & 1) != 0) {
            j = topAppBarColors.containerColor;
        }
        return topAppBarColors.m4281copytNS2XkQ(j, (i & 2) != 0 ? topAppBarColors.scrolledContainerColor : j2, (i & 4) != 0 ? topAppBarColors.navigationIconContentColor : j3, (i & 8) != 0 ? topAppBarColors.titleContentColor : j4, (i & 16) != 0 ? topAppBarColors.actionIconContentColor : j5, (i & 32) != 0 ? topAppBarColors.subtitleContentColor : j6);
    }

    /* JADX INFO: renamed from: containerColor-vNxB06k$material3, reason: not valid java name */
    public final long m4280containerColorvNxB06k$material3(float f) {
        return ColorKt.m6283lerpjxsXWHM(this.containerColor, this.scrolledContainerColor, EasingKt.getFastOutLinearInEasing().transform(f));
    }

    /* JADX INFO: renamed from: copy-tNS2XkQ, reason: not valid java name */
    public final TopAppBarColors m4281copytNS2XkQ(long j, long j2, long j3, long j4, long j5, long j6) {
        return new TopAppBarColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.scrolledContainerColor, j3 != 16 ? j3 : this.navigationIconContentColor, j4 != 16 ? j4 : this.titleContentColor, j5 != 16 ? j5 : this.actionIconContentColor, j6 != 16 ? j6 : this.subtitleContentColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof TopAppBarColors)) {
            return false;
        }
        TopAppBarColors topAppBarColors = (TopAppBarColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, topAppBarColors.containerColor) && Color.m6233equalsimpl0(this.scrolledContainerColor, topAppBarColors.scrolledContainerColor) && Color.m6233equalsimpl0(this.navigationIconContentColor, topAppBarColors.navigationIconContentColor) && Color.m6233equalsimpl0(this.titleContentColor, topAppBarColors.titleContentColor) && Color.m6233equalsimpl0(this.actionIconContentColor, topAppBarColors.actionIconContentColor) && Color.m6233equalsimpl0(this.subtitleContentColor, topAppBarColors.subtitleContentColor);
    }

    /* JADX INFO: renamed from: getActionIconContentColor-0d7_KjU, reason: not valid java name */
    public final long m4282getActionIconContentColor0d7_KjU() {
        return this.actionIconContentColor;
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4283getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getNavigationIconContentColor-0d7_KjU, reason: not valid java name */
    public final long m4284getNavigationIconContentColor0d7_KjU() {
        return this.navigationIconContentColor;
    }

    /* JADX INFO: renamed from: getScrolledContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4285getScrolledContainerColor0d7_KjU() {
        return this.scrolledContainerColor;
    }

    /* JADX INFO: renamed from: getSubtitleContentColor-0d7_KjU, reason: not valid java name */
    public final long m4286getSubtitleContentColor0d7_KjU() {
        return this.subtitleContentColor;
    }

    /* JADX INFO: renamed from: getTitleContentColor-0d7_KjU, reason: not valid java name */
    public final long m4287getTitleContentColor0d7_KjU() {
        return this.titleContentColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.subtitleContentColor) + r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.scrolledContainerColor), 31, this.navigationIconContentColor), 31, this.titleContentColor), 31, this.actionIconContentColor);
    }

    @ul2
    public /* synthetic */ TopAppBarColors(long j, long j2, long j3, long j4, long j5, jh2 jh2Var) {
        this(j, j2, j3, j4, j5);
    }

    private TopAppBarColors(long j, long j2, long j3, long j4, long j5, long j6) {
        this.containerColor = j;
        this.scrolledContainerColor = j2;
        this.navigationIconContentColor = j3;
        this.titleContentColor = j4;
        this.actionIconContentColor = j5;
        this.subtitleContentColor = j6;
    }

    public /* synthetic */ TopAppBarColors(long j, long j2, long j3, long j4, long j5, long j6, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6);
    }
}
