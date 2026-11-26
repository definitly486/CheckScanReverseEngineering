package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RatingBar;

/* JADX INFO: loaded from: classes2.dex */
public class e45 extends RatingBar implements b45 {
    public e45(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return isClickable() && motionEvent.getAction() == 0;
    }

    @Override // android.widget.RatingBar, yads.b45
    public void setRating(float f) {
        super.setRating(f);
    }

    public e45(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public e45(Context context) {
        super(context);
    }
}
