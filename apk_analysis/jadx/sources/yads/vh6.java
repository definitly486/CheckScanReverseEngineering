package yads;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class vh6 {
    public final Rect a(View view) {
        zg5 zg5Var;
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return null;
        }
        Context context = view.getContext();
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA == null || !fe5VarA.n) {
            return rect;
        }
        Rect rectA = yk6.a(view);
        Rect rect2 = new Rect(rect);
        if (rect2.intersect(rectA)) {
            return rect2;
        }
        return null;
    }
}
