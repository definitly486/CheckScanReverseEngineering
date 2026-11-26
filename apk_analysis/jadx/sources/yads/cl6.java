package yads;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class cl6 extends RecyclerView.ItemDecoration {
    public final int a;
    public final ts1 b;
    public final rr1 c;

    public cl6(int i, ts1 ts1Var, rr1 rr1Var) {
        this.a = i;
        this.b = ts1Var;
        this.c = rr1Var;
    }

    public final int a(View view) {
        float f;
        int measuredWidth;
        float measuredWidth2;
        int iOrdinal = this.c.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                measuredWidth2 = (this.a - view.getMeasuredWidth()) / 2.0f;
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return 0;
                }
                f = this.a - this.b.h;
                measuredWidth = view.getMeasuredWidth();
            }
            return defpackage.w65.b(measuredWidth2);
        }
        f = this.a - this.b.g;
        measuredWidth = view.getMeasuredWidth();
        measuredWidth2 = f - measuredWidth;
        return defpackage.w65.b(measuredWidth2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        View viewJ;
        float measuredHeight;
        int iB;
        float measuredHeight2;
        int iB2;
        int width = recyclerView.getWidth();
        ts1 ts1Var = this.b;
        int iB3 = width - defpackage.w65.b(ts1Var.c + ts1Var.e);
        int height = recyclerView.getHeight();
        ts1 ts1Var2 = this.b;
        view.measure(View.MeasureSpec.makeMeasureSpec(iB3, 1073741824), View.MeasureSpec.makeMeasureSpec(height - defpackage.w65.b(ts1Var2.d + ts1Var2.f), 1073741824));
        ws1 ws1Var = view instanceof ws1 ? (ws1) view : null;
        if (ws1Var == null || (viewJ = ws1Var.j()) == null) {
            return;
        }
        Integer num = this.b.i;
        int iIntValue = num != null ? num.intValue() : a(viewJ);
        Integer num2 = this.b.j;
        if (num2 != null) {
            iB = num2.intValue();
        } else {
            int iOrdinal = this.c.ordinal();
            if (iOrdinal == 0) {
                measuredHeight = this.b.g;
            } else if (iOrdinal == 1) {
                measuredHeight = (this.a - viewJ.getMeasuredHeight()) / 2.0f;
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return;
                }
                measuredHeight = (this.a - this.b.h) - viewJ.getMeasuredHeight();
            }
            iB = defpackage.w65.b(measuredHeight);
        }
        Integer num3 = this.b.k;
        int iIntValue2 = num3 != null ? num3.intValue() : a(viewJ);
        Integer num4 = this.b.l;
        if (num4 != null) {
            iB2 = num4.intValue();
        } else {
            int iOrdinal2 = this.c.ordinal();
            if (iOrdinal2 == 0) {
                measuredHeight2 = (this.a - this.b.g) - viewJ.getMeasuredHeight();
            } else if (iOrdinal2 == 1) {
                measuredHeight2 = (this.a - viewJ.getMeasuredHeight()) / 2.0f;
            } else {
                if (iOrdinal2 != 2) {
                    defpackage.me0.e();
                    return;
                }
                measuredHeight2 = this.b.h;
            }
            iB2 = defpackage.w65.b(measuredHeight2);
        }
        rect.set(iIntValue, iB, iIntValue2, iB2);
    }
}
