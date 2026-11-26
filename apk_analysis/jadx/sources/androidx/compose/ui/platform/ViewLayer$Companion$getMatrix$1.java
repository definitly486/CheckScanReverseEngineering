package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewLayer$Companion$getMatrix$1 extends gh4 implements bm3<View, Matrix, j59> {
    public static final ViewLayer$Companion$getMatrix$1 INSTANCE = new ViewLayer$Companion$getMatrix$1();

    public ViewLayer$Companion$getMatrix$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(View view, Matrix matrix) {
        invoke2(view, matrix);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(View view, Matrix matrix) {
        matrix.set(view.getMatrix());
    }
}
