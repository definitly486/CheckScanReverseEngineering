package defpackage;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public final class x61 extends LinkMovementMethod {
    public static final x61 a = new x61();

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public final boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(textView, spannable, motionEvent);
        } catch (Exception e) {
            Log.e("CatchingLinkMovementMethod", e.getMessage(), e);
            return true;
        }
    }
}
