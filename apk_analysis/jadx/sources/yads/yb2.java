package yads;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewGroupKt;
import com.yandex.mobile.ads.R$id;
import defpackage.wha;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class yb2 {
    public static final Point a(View view, View view2, qb2 qb2Var, fs2 fs2Var) {
        int width;
        int height;
        ac1 ac1Var;
        ac1 ac1Var2;
        int[] iArr = new int[2];
        view2.getLocationInWindow(iArr);
        int iA = 0;
        Point point = new Point(iArr[0], iArr[1]);
        pb2 pb2Var = (pb2) qb2Var.j.a(fs2Var);
        int i = point.x;
        switch (pb2Var) {
            case LEFT:
            case TOP_LEFT:
            case BOTTOM_LEFT:
                width = -view.getWidth();
                break;
            case TOP:
            case BOTTOM:
            case CENTER:
                width = (view2.getWidth() - view.getWidth()) / 2;
                break;
            case TOP_RIGHT:
            case RIGHT:
            case BOTTOM_RIGHT:
                width = view2.getWidth();
                break;
            default:
                defpackage.me0.e();
                return null;
        }
        point.x = i + width;
        int i2 = point.y;
        switch (pb2Var) {
            case LEFT:
            case RIGHT:
            case CENTER:
                height = (view2.getHeight() - view.getHeight()) / 2;
                break;
            case TOP_LEFT:
            case TOP:
            case TOP_RIGHT:
                height = -view.getHeight();
                break;
            case BOTTOM_RIGHT:
            case BOTTOM:
            case BOTTOM_LEFT:
                height = view2.getHeight();
                break;
            default:
                defpackage.me0.e();
                return null;
        }
        point.y = i2 + height;
        DisplayMetrics displayMetrics = view2.getResources().getDisplayMetrics();
        int i3 = point.x;
        nv1 nv1Var = qb2Var.i;
        point.x = i3 + ((nv1Var == null || (ac1Var2 = nv1Var.a) == null) ? 0 : pq.a(ac1Var2, displayMetrics, fs2Var));
        int i4 = point.y;
        nv1 nv1Var2 = qb2Var.i;
        if (nv1Var2 != null && (ac1Var = nv1Var2.b) != null) {
            iA = pq.a(ac1Var, displayMetrics, fs2Var);
        }
        point.y = i4 + iA;
        return point;
    }

    public static final defpackage.b36 a(View view, String str) {
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_tooltips_tag);
        List<qb2> list = tag instanceof List ? (List) tag : null;
        if (list != null) {
            for (qb2 qb2Var : list) {
                if (defpackage.aa4.e(qb2Var.g, str)) {
                    return new defpackage.b36(qb2Var, view);
                }
            }
        }
        if (view instanceof ViewGroup) {
            Iterator<View> it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                defpackage.b36 b36VarA = a(it.next(), str);
                if (b36VarA != null) {
                    return b36VarA;
                }
            }
        }
        return null;
    }

    public static final void a(View view, s0 s0Var) {
        AccessibilityEvent accessibilityEventObtain;
        if (view == null) {
            return;
        }
        Context context = view.getContext();
        s0Var.getClass();
        if (s0.a(context)) {
            if (Build.VERSION.SDK_INT >= 30) {
                accessibilityEventObtain = wha.a();
            } else {
                accessibilityEventObtain = AccessibilityEvent.obtain(32);
            }
            view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
        }
    }
}
