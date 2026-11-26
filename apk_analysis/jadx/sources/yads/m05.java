package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public abstract class m05 extends FrameLayout {
    private final yz5 mTouchRecorder;

    public m05(Context context) {
        super(context);
        this.mTouchRecorder = new yz5(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.mTouchRecorder.b.onTouchEvent(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    public yz5 getTouchRecorder() {
        return this.mTouchRecorder;
    }

    public m05(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTouchRecorder = new yz5(context);
    }

    public m05(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTouchRecorder = new yz5(context);
    }
}
