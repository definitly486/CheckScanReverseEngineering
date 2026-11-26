package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import defpackage.e02;
import defpackage.j59;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface BringIntoViewRequester {
    static /* synthetic */ Object bringIntoView$default(BringIntoViewRequester bringIntoViewRequester, Rect rect, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: bringIntoView");
            return null;
        }
        if ((i & 1) != 0) {
            rect = null;
        }
        return bringIntoViewRequester.bringIntoView(rect, e02Var);
    }

    Object bringIntoView(Rect rect, e02<? super j59> e02Var);
}
