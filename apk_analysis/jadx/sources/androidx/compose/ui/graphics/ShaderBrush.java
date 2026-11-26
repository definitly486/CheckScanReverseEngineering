package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Size;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ShaderBrush extends Brush {
    public static final int $stable = 0;
    private long createdSize;
    private TransformShader internalTransformShader;
    private float[] transform;

    public ShaderBrush() {
        super(null);
        this.createdSize = Size.Companion.m6064getUnspecifiedNHjbRc();
    }

    private final TransformShader obtainTransformShader() {
        TransformShader transformShader = this.internalTransformShader;
        if (transformShader != null) {
            return transformShader;
        }
        TransformShader transformShader2 = new TransformShader();
        this.internalTransformShader = transformShader2;
        return transformShader2;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* JADX INFO: renamed from: applyTo-Pq9zytI */
    public final void mo6177applyToPq9zytI(long j, Paint paint, float f) {
        TransformShader transformShaderObtainTransformShader = this.internalTransformShader;
        if (transformShaderObtainTransformShader == null || !Size.m6052equalsimpl0(this.createdSize, j)) {
            if (Size.m6058isEmptyimpl(j)) {
                this.internalTransformShader = null;
                this.createdSize = Size.Companion.m6064getUnspecifiedNHjbRc();
                transformShaderObtainTransformShader = null;
            } else {
                transformShaderObtainTransformShader = obtainTransformShader();
                float[] fArr = this.transform;
                if (fArr != null) {
                    transformShaderObtainTransformShader.m6646transformQ8lPUPs(fArr);
                }
                transformShaderObtainTransformShader.setShader(mo6201createShaderuvyYCjk(j));
                this.internalTransformShader = transformShaderObtainTransformShader;
                this.createdSize = j;
            }
        }
        long jMo6102getColor0d7_KjU = paint.mo6102getColor0d7_KjU();
        Color.Companion companion = Color.Companion;
        if (!Color.m6233equalsimpl0(jMo6102getColor0d7_KjU, companion.m6258getBlack0d7_KjU())) {
            paint.mo6108setColor8_81llA(companion.m6258getBlack0d7_KjU());
        }
        if (!aa4.e(paint.getShader(), transformShaderObtainTransformShader != null ? transformShaderObtainTransformShader.getShader() : null)) {
            paint.setShader(transformShaderObtainTransformShader != null ? transformShaderObtainTransformShader.getShader() : null);
        }
        if (paint.getAlpha() == f) {
            return;
        }
        paint.setAlpha(f);
    }

    /* JADX INFO: renamed from: createShader-uvyYCjk */
    public abstract Shader mo6201createShaderuvyYCjk(long j);

    /* JADX INFO: renamed from: getTransform-3i98HWw, reason: not valid java name */
    public final float[] m6561getTransform3i98HWw() {
        return this.transform;
    }

    /* JADX INFO: renamed from: setTransform-Q8lPUPs, reason: not valid java name */
    public final void m6562setTransformQ8lPUPs(float[] fArr) {
        this.transform = fArr;
        TransformShader transformShader = this.internalTransformShader;
        if (transformShader != null) {
            transformShader.m6646transformQ8lPUPs(fArr);
        }
    }
}
