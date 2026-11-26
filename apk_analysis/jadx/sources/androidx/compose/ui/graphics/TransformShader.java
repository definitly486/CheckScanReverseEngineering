package androidx.compose.ui.graphics;

import android.graphics.Shader;

/* JADX INFO: loaded from: classes2.dex */
public final class TransformShader {
    public static final int $stable = 8;
    private android.graphics.Matrix aMatrix;
    private Shader shader;

    private final android.graphics.Matrix obtainMatrix() {
        android.graphics.Matrix matrix = this.aMatrix;
        if (matrix != null) {
            return matrix;
        }
        android.graphics.Matrix matrix2 = new android.graphics.Matrix();
        this.aMatrix = matrix2;
        return matrix2;
    }

    public final Shader getShader() {
        return this.shader;
    }

    public final void setShader(Shader shader) {
        android.graphics.Matrix matrix = this.aMatrix;
        if (matrix != null && shader != null) {
            shader.setLocalMatrix(matrix);
        }
        this.shader = shader;
    }

    /* JADX INFO: renamed from: transform-Q8lPUPs, reason: not valid java name */
    public final void m6646transformQ8lPUPs(float[] fArr) {
        android.graphics.Matrix matrix;
        if (fArr == null) {
            matrix = null;
            this.aMatrix = null;
        } else {
            android.graphics.Matrix matrixObtainMatrix = obtainMatrix();
            AndroidMatrixConversions_androidKt.m6099setFromEL8BTi8(matrixObtainMatrix, fArr);
            matrix = matrixObtainMatrix;
        }
        Shader shader = this.shader;
        if (shader != null) {
            shader.setLocalMatrix(matrix);
        }
    }
}
