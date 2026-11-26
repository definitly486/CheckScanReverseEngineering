package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class ButtonColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long contentColor;
    private final long disabledContainerColor;
    private final long disabledContentColor;

    private ButtonColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.disabledContainerColor = j3;
        this.disabledContentColor = j4;
    }

    /* JADX INFO: renamed from: copy-jRlVdoo$default, reason: not valid java name */
    public static /* synthetic */ ButtonColors m3128copyjRlVdoo$default(ButtonColors buttonColors, long j, long j2, long j3, long j4, int i, Object obj) {
        if ((i & 1) != 0) {
            j = buttonColors.containerColor;
        }
        long j5 = j;
        if ((i & 2) != 0) {
            j2 = buttonColors.contentColor;
        }
        long j6 = j2;
        if ((i & 4) != 0) {
            j3 = buttonColors.disabledContainerColor;
        }
        return buttonColors.m3131copyjRlVdoo(j5, j6, j3, (i & 8) != 0 ? buttonColors.disabledContentColor : j4);
    }

    /* JADX INFO: renamed from: containerColor-vNxB06k$material3, reason: not valid java name */
    public final long m3129containerColorvNxB06k$material3(boolean z) {
        return z ? this.containerColor : this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: contentColor-vNxB06k$material3, reason: not valid java name */
    public final long m3130contentColorvNxB06k$material3(boolean z) {
        return z ? this.contentColor : this.disabledContentColor;
    }

    /* JADX INFO: renamed from: copy-jRlVdoo, reason: not valid java name */
    public final ButtonColors m3131copyjRlVdoo(long j, long j2, long j3, long j4) {
        return new ButtonColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.contentColor, j3 != 16 ? j3 : this.disabledContainerColor, j4 != 16 ? j4 : this.disabledContentColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ButtonColors)) {
            return false;
        }
        ButtonColors buttonColors = (ButtonColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, buttonColors.containerColor) && Color.m6233equalsimpl0(this.contentColor, buttonColors.contentColor) && Color.m6233equalsimpl0(this.disabledContainerColor, buttonColors.disabledContainerColor) && Color.m6233equalsimpl0(this.disabledContentColor, buttonColors.disabledContentColor);
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3132getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getContentColor-0d7_KjU, reason: not valid java name */
    public final long m3133getContentColor0d7_KjU() {
        return this.contentColor;
    }

    /* JADX INFO: renamed from: getDisabledContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3134getDisabledContainerColor0d7_KjU() {
        return this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: getDisabledContentColor-0d7_KjU, reason: not valid java name */
    public final long m3135getDisabledContentColor0d7_KjU() {
        return this.disabledContentColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledContentColor) + r01.b(r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.contentColor), 31, this.disabledContainerColor);
    }

    public /* synthetic */ ButtonColors(long j, long j2, long j3, long j4, jh2 jh2Var) {
        this(j, j2, j3, j4);
    }
}
