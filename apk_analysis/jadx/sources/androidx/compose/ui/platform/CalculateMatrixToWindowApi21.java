package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
final class CalculateMatrixToWindowApi21 implements CalculateMatrixToWindow {
    private final int[] tmpLocation;
    private final float[] tmpMatrix;

    private CalculateMatrixToWindowApi21(float[] fArr) {
        this.tmpMatrix = fArr;
        this.tmpLocation = new int[2];
    }

    /* JADX INFO: renamed from: preConcat-tU-YjHk, reason: not valid java name */
    private final void m8163preConcattUYjHk(float[] fArr, Matrix matrix) {
        AndroidMatrixConversions_androidKt.m6100setFromtUYjHk(this.tmpMatrix, matrix);
        AndroidComposeView_androidKt.m8150preTransformJiSxe2E(fArr, this.tmpMatrix);
    }

    /* JADX INFO: renamed from: preTranslate-3XD1CNM, reason: not valid java name */
    private final void m8164preTranslate3XD1CNM(float[] fArr, float f, float f2) {
        AndroidComposeView_androidKt.m8151preTranslatecG2Xzmc(fArr, f, f2, this.tmpMatrix);
    }

    /* JADX INFO: renamed from: transformMatrixToWindow-EL8BTi8, reason: not valid java name */
    private final void m8165transformMatrixToWindowEL8BTi8(View view, float[] fArr) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            m8165transformMatrixToWindowEL8BTi8((View) parent, fArr);
            m8164preTranslate3XD1CNM(fArr, -view.getScrollX(), -view.getScrollY());
            m8164preTranslate3XD1CNM(fArr, view.getLeft(), view.getTop());
        } else {
            int[] iArr = this.tmpLocation;
            view.getLocationInWindow(iArr);
            m8164preTranslate3XD1CNM(fArr, -view.getScrollX(), -view.getScrollY());
            m8164preTranslate3XD1CNM(fArr, iArr[0], iArr[1]);
        }
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            return;
        }
        m8163preConcattUYjHk(fArr, matrix);
    }

    @Override // androidx.compose.ui.platform.CalculateMatrixToWindow
    /* JADX INFO: renamed from: calculateMatrixToWindow-EL8BTi8 */
    public void mo8162calculateMatrixToWindowEL8BTi8(View view, float[] fArr) {
        androidx.compose.ui.graphics.Matrix.m6485resetimpl(fArr);
        m8165transformMatrixToWindowEL8BTi8(view, fArr);
    }

    public /* synthetic */ CalculateMatrixToWindowApi21(float[] fArr, jh2 jh2Var) {
        this(fArr);
    }
}
