package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class ws1 extends pi2 {
    public final ll3 m;

    public ws1(Context context, ll3 ll3Var) {
        super(context, null, 6, 0);
        this.m = ll3Var;
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        if (view != null && view.getVisibility() == 0) {
            tq.a(view, canvas);
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // yads.g03, android.view.View
    public final void onMeasure(int i, int i2) {
        if (getChildCount() == 0) {
            super.onMeasure(i, i2);
            return;
        }
        ViewGroup.LayoutParams layoutParams = getChildAt(0).getLayoutParams();
        boolean zBooleanValue = ((Boolean) this.m.invoke()).booleanValue();
        if (zBooleanValue) {
            setMinimumHeight(View.MeasureSpec.getMode(i2) == 0 ? 0 : View.MeasureSpec.getSize(i2));
        } else {
            setMinimumWidth(View.MeasureSpec.getMode(i) == 0 ? 0 : View.MeasureSpec.getSize(i));
        }
        int i3 = layoutParams.width;
        if (!zBooleanValue && i3 != -1 && i3 != -3) {
            i = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        int i4 = layoutParams.height;
        if (zBooleanValue && i4 != -1 && i4 != -3) {
            i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        super.onMeasure(i, i2);
    }
}
