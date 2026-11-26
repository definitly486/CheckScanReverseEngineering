package yads;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class pg6 extends FrameLayout {
    public og6 a;
    public int b;
    public Rect c;
    public boolean d;
    public Integer e;

    public /* synthetic */ pg6(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        this.e = Integer.valueOf(i2);
        og6 og6Var = this.a;
        if (og6Var != null) {
            i2 = View.MeasureSpec.makeMeasureSpec(og6Var.a(i, i2), 1073741824);
        }
        super.onMeasure(i, i2);
    }

    public final void setAnimateOnScroll(boolean z) {
        this.d = z;
    }

    public final void setCollapsiblePaddingBottom(int i) {
        if (this.b != i) {
            this.b = i;
        }
    }

    public final void setHeightCalculator(og6 og6Var) {
        this.a = og6Var;
    }

    public pg6(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public pg6(Context context) {
        this(context, null, 6, 0);
    }

    public pg6(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = true;
    }
}
