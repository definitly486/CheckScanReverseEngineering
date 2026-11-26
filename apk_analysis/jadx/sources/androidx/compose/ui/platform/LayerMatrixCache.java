package androidx.compose.ui.platform;

import android.graphics.Matrix;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.MatrixKt;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class LayerMatrixCache<T> {
    public static final int $stable = 8;
    private Matrix androidMatrixCache;
    private final bm3<T, Matrix, j59> getMatrix;
    private boolean isDirty;
    private boolean isInverseDirty;
    private float[] matrixCache = androidx.compose.ui.graphics.Matrix.m6476constructorimpl$default(null, 1, null);
    private float[] inverseMatrixCache = androidx.compose.ui.graphics.Matrix.m6476constructorimpl$default(null, 1, null);
    private boolean isInverseValid = true;
    private boolean isIdentity = true;

    /* JADX WARN: Multi-variable type inference failed */
    public LayerMatrixCache(bm3<? super T, ? super Matrix, j59> bm3Var) {
        this.getMatrix = bm3Var;
    }

    /* JADX INFO: renamed from: calculateInverseMatrix-bWbORWo, reason: not valid java name */
    public final float[] m8203calculateInverseMatrixbWbORWo(T t) {
        float[] fArr = this.inverseMatrixCache;
        if (this.isInverseDirty) {
            this.isInverseValid = InvertMatrixKt.m8201invertToJiSxe2E(m8204calculateMatrixGrdbGEg(t), fArr);
            this.isInverseDirty = false;
        }
        if (this.isInverseValid) {
            return fArr;
        }
        return null;
    }

    /* JADX INFO: renamed from: calculateMatrix-GrdbGEg, reason: not valid java name */
    public final float[] m8204calculateMatrixGrdbGEg(T t) {
        float[] fArr = this.matrixCache;
        if (!this.isDirty) {
            return fArr;
        }
        Matrix matrix = this.androidMatrixCache;
        if (matrix == null) {
            matrix = new Matrix();
            this.androidMatrixCache = matrix;
        }
        this.getMatrix.invoke(t, matrix);
        AndroidMatrixConversions_androidKt.m6100setFromtUYjHk(fArr, matrix);
        this.isDirty = false;
        this.isIdentity = MatrixKt.m6501isIdentity58bKbWc(fArr);
        return fArr;
    }

    public final void invalidate() {
        this.isDirty = true;
        this.isInverseDirty = true;
    }

    public final void map(T t, MutableRect mutableRect) {
        float[] fArrM8204calculateMatrixGrdbGEg = m8204calculateMatrixGrdbGEg(t);
        if (this.isIdentity) {
            return;
        }
        androidx.compose.ui.graphics.Matrix.m6484mapimpl(fArrM8204calculateMatrixGrdbGEg, mutableRect);
    }

    /* JADX INFO: renamed from: map-R5De75A, reason: not valid java name */
    public final long m8205mapR5De75A(T t, long j) {
        return !this.isIdentity ? androidx.compose.ui.graphics.Matrix.m6482mapMKHz9U(m8204calculateMatrixGrdbGEg(t), j) : j;
    }

    public final void mapInverse(T t, MutableRect mutableRect) {
        float[] fArrM8203calculateInverseMatrixbWbORWo = m8203calculateInverseMatrixbWbORWo(t);
        if (fArrM8203calculateInverseMatrixbWbORWo == null) {
            mutableRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            if (this.isIdentity) {
                return;
            }
            androidx.compose.ui.graphics.Matrix.m6484mapimpl(fArrM8203calculateInverseMatrixbWbORWo, mutableRect);
        }
    }

    /* JADX INFO: renamed from: mapInverse-R5De75A, reason: not valid java name */
    public final long m8206mapInverseR5De75A(T t, long j) {
        float[] fArrM8203calculateInverseMatrixbWbORWo = m8203calculateInverseMatrixbWbORWo(t);
        if (fArrM8203calculateInverseMatrixbWbORWo == null) {
            return Offset.Companion.m6001getInfiniteF1C5BW0();
        }
        return !this.isIdentity ? androidx.compose.ui.graphics.Matrix.m6482mapMKHz9U(fArrM8203calculateInverseMatrixbWbORWo, j) : j;
    }

    public final void reset() {
        this.isDirty = false;
        this.isInverseDirty = false;
        this.isIdentity = true;
        this.isInverseValid = true;
        androidx.compose.ui.graphics.Matrix.m6485resetimpl(this.matrixCache);
        androidx.compose.ui.graphics.Matrix.m6485resetimpl(this.inverseMatrixCache);
    }
}
