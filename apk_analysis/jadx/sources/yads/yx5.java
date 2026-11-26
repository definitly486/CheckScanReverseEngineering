package yads;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.widget.CheckBox;

/* JADX INFO: loaded from: classes6.dex */
public final class yx5 extends CheckBox {
    public Drawable a;
    public Drawable b;

    public yx5(Context context) {
        super(context);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setButtonDrawable((Drawable) null);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, this.a);
        stateListDrawable.addState(new int[0], this.b);
        setBackground(stateListDrawable);
    }

    public final void setCheckedIcon(Drawable drawable) {
        this.a = drawable;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, this.a);
        stateListDrawable.addState(new int[0], this.b);
        setBackground(stateListDrawable);
    }

    public void setMuted(boolean z) {
        setChecked(z);
    }

    public final void setUncheckedIcon(Drawable drawable) {
        this.b = drawable;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, this.a);
        stateListDrawable.addState(new int[0], this.b);
        setBackground(stateListDrawable);
    }

    public yx5(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public yx5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
