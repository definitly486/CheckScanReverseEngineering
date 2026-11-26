package androidx.camera.viewfinder.core;

import androidx.tracing.Trace;
import defpackage.jh2;
import defpackage.jn;
import defpackage.js2;
import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
public final class TransformationInfo {
    public static final float CROP_NONE = Float.NaN;
    public static final Companion Companion = new Companion(null);
    public static final TransformationInfo DEFAULT = new TransformationInfo(0, false, false, 0.0f, 0.0f, 0.0f, 0.0f, Trace.MAX_TRACE_LABEL_LENGTH, null);
    private final float cropRectBottom;
    private final float cropRectLeft;
    private final float cropRectRight;
    private final float cropRectTop;
    private final boolean isSourceMirroredHorizontally;
    private final boolean isSourceMirroredVertically;
    private final int sourceRotation;

    public /* synthetic */ TransformationInfo(int i, boolean z, boolean z2, float f, float f2, float f3, float f4, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? Float.NaN : f, (i2 & 16) != 0 ? Float.NaN : f2, (i2 & 32) != 0 ? Float.NaN : f3, (i2 & 64) != 0 ? Float.NaN : f4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransformationInfo)) {
            return false;
        }
        TransformationInfo transformationInfo = (TransformationInfo) obj;
        return this.sourceRotation == transformationInfo.sourceRotation && this.isSourceMirroredHorizontally == transformationInfo.isSourceMirroredHorizontally && this.isSourceMirroredVertically == transformationInfo.isSourceMirroredVertically && this.cropRectLeft == transformationInfo.cropRectLeft && this.cropRectTop == transformationInfo.cropRectTop && this.cropRectRight == transformationInfo.cropRectRight && this.cropRectBottom == transformationInfo.cropRectBottom;
    }

    public final float getCropRectBottom() {
        return this.cropRectBottom;
    }

    public final float getCropRectLeft() {
        return this.cropRectLeft;
    }

    public final float getCropRectRight() {
        return this.cropRectRight;
    }

    public final float getCropRectTop() {
        return this.cropRectTop;
    }

    public final int getSourceRotation() {
        return this.sourceRotation;
    }

    public int hashCode() {
        return Float.hashCode(this.cropRectBottom) + jn.b(this.cropRectRight, jn.b(this.cropRectTop, jn.b(this.cropRectLeft, tg.c(tg.c(this.sourceRotation * 31, 31, this.isSourceMirroredHorizontally), 31, this.isSourceMirroredVertically), 31), 31), 31);
    }

    public final boolean isSourceMirroredHorizontally() {
        return this.isSourceMirroredHorizontally;
    }

    public final boolean isSourceMirroredVertically() {
        return this.isSourceMirroredVertically;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TransformationInfo(sourceRotation=");
        sb.append(this.sourceRotation);
        sb.append(", isSourceMirroredHorizontally=");
        sb.append(this.isSourceMirroredHorizontally);
        sb.append(", isSourceMirroredVertically=");
        sb.append(this.isSourceMirroredVertically);
        sb.append(", cropRectLeft=");
        sb.append(this.cropRectLeft);
        sb.append(", cropRectTop=");
        sb.append(this.cropRectTop);
        sb.append(", cropRectRight=");
        sb.append(this.cropRectRight);
        sb.append(", cropRectBottom=");
        return js2.b(sb, this.cropRectBottom, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public TransformationInfo(int i) {
        this(i, false, false, 0.0f, 0.0f, 0.0f, 0.0f, 126, null);
    }

    public TransformationInfo(int i, boolean z) {
        this(i, z, false, 0.0f, 0.0f, 0.0f, 0.0f, 124, null);
    }

    public TransformationInfo(int i, boolean z, boolean z2) {
        this(i, z, z2, 0.0f, 0.0f, 0.0f, 0.0f, 120, null);
    }

    public TransformationInfo(int i, boolean z, boolean z2, float f) {
        this(i, z, z2, f, 0.0f, 0.0f, 0.0f, 112, null);
    }

    public TransformationInfo(int i, boolean z, boolean z2, float f, float f2) {
        this(i, z, z2, f, f2, 0.0f, 0.0f, 96, null);
    }

    public TransformationInfo(int i, boolean z, boolean z2, float f, float f2, float f3) {
        this(i, z, z2, f, f2, f3, 0.0f, 64, null);
    }

    public TransformationInfo(int i, boolean z, boolean z2, float f, float f2, float f3, float f4) {
        this.sourceRotation = i;
        this.isSourceMirroredHorizontally = z;
        this.isSourceMirroredVertically = z2;
        this.cropRectLeft = f;
        this.cropRectTop = f2;
        this.cropRectRight = f3;
        this.cropRectBottom = f4;
    }

    public TransformationInfo() {
        this(0, false, false, 0.0f, 0.0f, 0.0f, 0.0f, Trace.MAX_TRACE_LABEL_LENGTH, null);
    }
}
