package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import defpackage.jh2;
import defpackage.js2;

/* JADX INFO: loaded from: classes.dex */
final class AnimationData {
    private final float degrees;
    private final long offset;
    private final float zoom;

    private AnimationData(float f, long j, float f2) {
        this.zoom = f;
        this.offset = j;
        this.degrees = f2;
    }

    /* JADX INFO: renamed from: copy-d-4ec7I$default, reason: not valid java name */
    public static /* synthetic */ AnimationData m1455copyd4ec7I$default(AnimationData animationData, float f, long j, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = animationData.zoom;
        }
        if ((i & 2) != 0) {
            j = animationData.offset;
        }
        if ((i & 4) != 0) {
            f2 = animationData.degrees;
        }
        return animationData.m1457copyd4ec7I(f, j, f2);
    }

    public final float component1() {
        return this.zoom;
    }

    /* JADX INFO: renamed from: component2-F1C5BW0, reason: not valid java name */
    public final long m1456component2F1C5BW0() {
        return this.offset;
    }

    public final float component3() {
        return this.degrees;
    }

    /* JADX INFO: renamed from: copy-d-4ec7I, reason: not valid java name */
    public final AnimationData m1457copyd4ec7I(float f, long j, float f2) {
        return new AnimationData(f, j, f2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnimationData)) {
            return false;
        }
        AnimationData animationData = (AnimationData) obj;
        return Float.compare(this.zoom, animationData.zoom) == 0 && Offset.m5984equalsimpl0(this.offset, animationData.offset) && Float.compare(this.degrees, animationData.degrees) == 0;
    }

    public final float getDegrees() {
        return this.degrees;
    }

    /* JADX INFO: renamed from: getOffset-F1C5BW0, reason: not valid java name */
    public final long m1458getOffsetF1C5BW0() {
        return this.offset;
    }

    public final float getZoom() {
        return this.zoom;
    }

    public int hashCode() {
        return Float.hashCode(this.degrees) + ((Offset.m5989hashCodeimpl(this.offset) + (Float.hashCode(this.zoom) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AnimationData(zoom=");
        sb.append(this.zoom);
        sb.append(", offset=");
        sb.append((Object) Offset.m5995toStringimpl(this.offset));
        sb.append(", degrees=");
        return js2.b(sb, this.degrees, ')');
    }

    public /* synthetic */ AnimationData(float f, long j, float f2, jh2 jh2Var) {
        this(f, j, f2);
    }
}
