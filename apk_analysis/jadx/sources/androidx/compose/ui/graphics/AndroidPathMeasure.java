package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPathMeasure implements PathMeasure {
    public static final int $stable = 8;
    private final android.graphics.PathMeasure internalPathMeasure;
    private float[] positionArray;
    private float[] tangentArray;

    public AndroidPathMeasure(android.graphics.PathMeasure pathMeasure) {
        this.internalPathMeasure = pathMeasure;
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public float getLength() {
        return this.internalPathMeasure.getLength();
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    /* JADX INFO: renamed from: getPosition-tuRUvjQ, reason: not valid java name */
    public long mo6127getPositiontuRUvjQ(float f) {
        float[] fArr = this.positionArray;
        if (fArr == null) {
            fArr = new float[2];
            this.positionArray = fArr;
        }
        float[] fArr2 = this.tangentArray;
        if (fArr2 == null) {
            fArr2 = new float[2];
            this.tangentArray = fArr2;
        }
        if (!this.internalPathMeasure.getPosTan(f, fArr, fArr2)) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        float[] fArr3 = this.positionArray;
        fArr3.getClass();
        float f2 = fArr3[0];
        float[] fArr4 = this.positionArray;
        fArr4.getClass();
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fArr4[1])) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f2) << 32));
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public boolean getSegment(float f, float f2, Path path, boolean z) {
        android.graphics.PathMeasure pathMeasure = this.internalPathMeasure;
        if (path instanceof AndroidPath) {
            return pathMeasure.getSegment(f, f2, ((AndroidPath) path).getInternalPath(), z);
        }
        n1.e("Unable to obtain android.graphics.Path");
        return false;
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    /* JADX INFO: renamed from: getTangent-tuRUvjQ, reason: not valid java name */
    public long mo6128getTangenttuRUvjQ(float f) {
        float[] fArr = this.positionArray;
        if (fArr == null) {
            fArr = new float[2];
            this.positionArray = fArr;
        }
        float[] fArr2 = this.tangentArray;
        if (fArr2 == null) {
            fArr2 = new float[2];
            this.tangentArray = fArr2;
        }
        if (!this.internalPathMeasure.getPosTan(f, fArr, fArr2)) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        float[] fArr3 = this.tangentArray;
        fArr3.getClass();
        float f2 = fArr3[0];
        float[] fArr4 = this.tangentArray;
        fArr4.getClass();
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fArr4[1])) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f2) << 32));
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public void setPath(Path path, boolean z) {
        android.graphics.Path internalPath;
        android.graphics.PathMeasure pathMeasure = this.internalPathMeasure;
        if (path == null) {
            internalPath = null;
        } else {
            if (!(path instanceof AndroidPath)) {
                n1.e("Unable to obtain android.graphics.Path");
                return;
            }
            internalPath = ((AndroidPath) path).getInternalPath();
        }
        pathMeasure.setPath(internalPath, z);
    }
}
