package androidx.compose.animation;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.jh2;
import defpackage.ln;
import defpackage.r01;
import defpackage.sg;

/* JADX INFO: loaded from: classes.dex */
public final class LookaheadAnimationVisualDebugConfig {
    public static final int $stable = 0;
    private final boolean isEnabled;
    private final boolean isShowKeyLabelEnabled;
    private final long multipleMatchesColor;
    private final long overlayColor;
    private final long unmatchedElementColor;

    public /* synthetic */ LookaheadAnimationVisualDebugConfig(boolean z, long j, long j2, long j3, boolean z2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? ColorKt.Color(2150934611L) : j, (i & 4) != 0 ? ColorKt.Color(4293542709L) : j2, (i & 8) != 0 ? ColorKt.Color(4288323750L) : j3, (i & 16) != 0 ? false : z2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LookaheadAnimationVisualDebugConfig)) {
            return false;
        }
        LookaheadAnimationVisualDebugConfig lookaheadAnimationVisualDebugConfig = (LookaheadAnimationVisualDebugConfig) obj;
        return this.isEnabled == lookaheadAnimationVisualDebugConfig.isEnabled && Color.m6233equalsimpl0(this.overlayColor, lookaheadAnimationVisualDebugConfig.overlayColor) && Color.m6233equalsimpl0(this.multipleMatchesColor, lookaheadAnimationVisualDebugConfig.multipleMatchesColor) && Color.m6233equalsimpl0(this.unmatchedElementColor, lookaheadAnimationVisualDebugConfig.unmatchedElementColor) && this.isShowKeyLabelEnabled == lookaheadAnimationVisualDebugConfig.isShowKeyLabelEnabled;
    }

    /* JADX INFO: renamed from: getMultipleMatchesColor-0d7_KjU, reason: not valid java name */
    public final long m1119getMultipleMatchesColor0d7_KjU() {
        return this.multipleMatchesColor;
    }

    /* JADX INFO: renamed from: getOverlayColor-0d7_KjU, reason: not valid java name */
    public final long m1120getOverlayColor0d7_KjU() {
        return this.overlayColor;
    }

    /* JADX INFO: renamed from: getUnmatchedElementColor-0d7_KjU, reason: not valid java name */
    public final long m1121getUnmatchedElementColor0d7_KjU() {
        return this.unmatchedElementColor;
    }

    public int hashCode() {
        return Boolean.hashCode(this.isShowKeyLabelEnabled) + r01.b(r01.b(r01.b(Boolean.hashCode(this.isEnabled) * 31, 31, this.overlayColor), 31, this.multipleMatchesColor), 31, this.unmatchedElementColor);
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final boolean isShowKeyLabelEnabled() {
        return this.isShowKeyLabelEnabled;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LookaheadAnimationVisualDebugConfig(isEnabled=");
        sb.append(this.isEnabled);
        sb.append(", overlayColor=");
        ln.g(this.overlayColor, ", multipleMatchesColor=", sb);
        ln.g(this.multipleMatchesColor, ", unmatchedElementColor=", sb);
        ln.g(this.unmatchedElementColor, ", isShowKeyLabelEnabled=", sb);
        return sg.d(sb, this.isShowKeyLabelEnabled, ')');
    }

    private LookaheadAnimationVisualDebugConfig(boolean z, long j, long j2, long j3, boolean z2) {
        this.isEnabled = z;
        this.overlayColor = j;
        this.multipleMatchesColor = j2;
        this.unmatchedElementColor = j3;
        this.isShowKeyLabelEnabled = z2;
    }

    public /* synthetic */ LookaheadAnimationVisualDebugConfig(boolean z, long j, long j2, long j3, boolean z2, jh2 jh2Var) {
        this(z, j, j2, j3, z2);
    }
}
