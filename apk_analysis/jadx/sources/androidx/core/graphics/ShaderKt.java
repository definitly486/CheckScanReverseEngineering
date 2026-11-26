package androidx.core.graphics;

import android.graphics.Matrix;
import android.graphics.Shader;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ShaderKt {
    public static final void transform(Shader shader, nl3<? super Matrix, j59> nl3Var) {
        Matrix matrix = new Matrix();
        shader.getLocalMatrix(matrix);
        nl3Var.invoke(matrix);
        shader.setLocalMatrix(matrix);
    }
}
