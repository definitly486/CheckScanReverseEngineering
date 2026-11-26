package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
@ul2
public interface BringIntoViewResponder {
    Object bringChildIntoView(ll3<Rect> ll3Var, e02<? super j59> e02Var);

    Rect calculateRectForParent(Rect rect);
}
