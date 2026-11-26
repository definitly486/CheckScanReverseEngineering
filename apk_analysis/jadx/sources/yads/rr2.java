package yads;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class rr2 {
    public final qr2 a(View view) {
        int iA;
        RectF rectF = null;
        if (ih6.a(view)) {
            iA = eh6.a(view);
            Rect rect = new Rect();
            if (view.getLocalVisibleRect(rect)) {
                rect.offset(view.getLeft(), view.getTop());
            } else {
                rect = null;
            }
            Context context = view.getContext();
            if (rect != null) {
                float fA = ip0.a(context, rect.left);
                float fB = defpackage.w65.b(rect.top / context.getResources().getDisplayMetrics().density);
                float fB2 = defpackage.w65.b(rect.right / context.getResources().getDisplayMetrics().density);
                float fB3 = defpackage.w65.b(rect.bottom / context.getResources().getDisplayMetrics().density);
                float f = fB3 - fB;
                if (fB2 - fA > 0.0f && f > 0.0f) {
                    rectF = new RectF(fA, fB, fB2, fB3);
                }
            }
        } else {
            iA = 0;
        }
        return new qr2(iA, rectF);
    }
}
