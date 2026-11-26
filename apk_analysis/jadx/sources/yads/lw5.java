package yads;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import defpackage.nga;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class lw5 extends ExploreByTouchHelper {
    public final /* synthetic */ nw5 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lw5(nw5 nw5Var) {
        super(nw5Var);
        this.a = nw5Var;
    }

    public final nd3 a(int i) {
        if (i != -1 && this.a.n.size() != 0 && i < this.a.n.size() && i >= 0) {
            return (nd3) this.a.n.get(i);
        }
        return null;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final int getVirtualViewAt(float f, float f2) {
        RectF rectF = new RectF();
        nw5 nw5Var = this.a;
        int i = 0;
        for (Object obj : nw5Var.n) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            rectF.set(((nd3) obj).h);
            rectF.offset(nw5Var.getPaddingLeft(), nw5Var.getPaddingTop());
            if (rectF.contains(f, f2)) {
                return i;
            }
            i = i2;
        }
        return -1;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void getVisibleVirtualViews(List list) {
        int i = 0;
        for (Object obj : this.a.n) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            list.add(Integer.valueOf(i));
            i = i2;
        }
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
        ld3 ld3Var;
        md3 md3Var;
        nd3 nd3VarA = a(i);
        if (nd3VarA == null || (ld3Var = nd3VarA.f) == null || (md3Var = ld3Var.c) == null || i2 != 16) {
            return false;
        }
        nga ngaVar = (nga) md3Var;
        wo5.a(ngaVar.a, ngaVar.b, ngaVar.c, ngaVar.d);
        return true;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        String str;
        nd3 nd3VarA = a(i);
        if (nd3VarA == null) {
            return;
        }
        ld3 ld3Var = nd3VarA.f;
        if (ld3Var == null || (str = ld3Var.a) == null) {
            str = "";
        }
        accessibilityNodeInfoCompat.setClassName(str);
        accessibilityNodeInfoCompat.setPackageName(this.a.getContext().getPackageName());
        Rect rect = new Rect();
        rect.set(defpackage.w65.b(nd3VarA.h.left), defpackage.w65.b(nd3VarA.h.top), defpackage.w65.b(nd3VarA.h.right), defpackage.w65.b(nd3VarA.h.bottom));
        nw5 nw5Var = this.a;
        rect.offset(nw5Var.getPaddingLeft(), nw5Var.getPaddingTop());
        ld3 ld3Var2 = nd3VarA.f;
        accessibilityNodeInfoCompat.setContentDescription(ld3Var2 != null ? ld3Var2.b : null);
        ld3 ld3Var3 = nd3VarA.f;
        if ((ld3Var3 != null ? ld3Var3.c : null) == null) {
            accessibilityNodeInfoCompat.setClickable(false);
        } else {
            accessibilityNodeInfoCompat.setClickable(true);
            accessibilityNodeInfoCompat.addAction(16);
        }
        accessibilityNodeInfoCompat.setBoundsInParent(rect);
    }
}
