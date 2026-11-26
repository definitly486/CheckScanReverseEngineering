package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes6.dex */
public abstract class o05 extends RelativeLayout {
    private final yz5 a;

    public o05(Context context) {
        super(context);
        this.a = new yz5(context);
    }

    public final yz5 a() {
        return this.a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.a.b.onTouchEvent(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    public o05(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new yz5(context);
    }

    public o05(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new yz5(context);
    }
}
