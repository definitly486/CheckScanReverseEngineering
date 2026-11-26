package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;

/* JADX INFO: loaded from: classes6.dex */
public class tt5 extends AppCompatTextView implements ox2 {
    public final nx2 a;
    public boolean b;

    public tt5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new nx2(this);
    }

    @Override // android.widget.TextView
    public final int getCompoundPaddingBottom() {
        return super.getCompoundPaddingBottom() + this.a.c;
    }

    @Override // android.widget.TextView
    public final int getCompoundPaddingTop() {
        return super.getCompoundPaddingTop() + this.a.b;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        nx2 nx2Var = this.a;
        int iMin = Math.min(getLineCount(), getMaxLines());
        if (nx2Var.d != -1 && !nh6.a(i2)) {
            int paddingBottom = nx2Var.a.getPaddingBottom() + nx2Var.a.getPaddingTop() + ow5.a(nx2Var.a, iMin) + (iMin >= nx2Var.a.getLineCount() ? nx2Var.b + nx2Var.c : 0);
            int minimumHeight = nx2Var.a.getMinimumHeight();
            if (paddingBottom < minimumHeight) {
                paddingBottom = minimumHeight;
            }
            super.setMeasuredDimension(getMeasuredWidthAndState(), View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE ? View.MeasureSpec.makeMeasureSpec(Math.min(paddingBottom, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE) : View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824));
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        ro1 ro1Var = layoutParams instanceof ro1 ? (ro1) layoutParams : null;
        if (ro1Var != null && this.b && ((ViewGroup.MarginLayoutParams) ro1Var).width == -3 && ro1Var.h != Integer.MAX_VALUE) {
            int lineCount = getLayout().getLineCount();
            float fMax = 0.0f;
            for (int i3 = 0; i3 < lineCount; i3++) {
                fMax = Math.max(fMax, getLayout().getLineWidth(i3));
            }
            int iCeil = (int) Math.ceil(fMax + getCompoundPaddingRight() + getCompoundPaddingLeft());
            if (iCeil < getMeasuredWidth()) {
                super.setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(iCeil, View.MeasureSpec.getMode(getMeasuredWidthAndState())), getMeasuredHeightAndState());
            }
        }
    }

    @Override // yads.ox2
    public void setFixedLineHeight(int i) {
        nx2 nx2Var = this.a;
        if (nx2Var.d == i) {
            return;
        }
        nx2Var.d = i;
        nx2Var.a(i);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        nx2 nx2Var = this.a;
        nx2Var.a(nx2Var.d);
    }

    public final void setTightenWidth(boolean z) {
        boolean z2 = this.b;
        this.b = z;
        if (z2 != z) {
            requestLayout();
        }
    }

    public tt5(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ tt5(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public tt5(Context context) {
        this(context, null, 6, 0);
    }
}
