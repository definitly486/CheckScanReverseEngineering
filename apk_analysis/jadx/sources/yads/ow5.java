package yads;

import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ow5 {
    public static final int a(TextView textView, int i) {
        if (textView.getLayout() == null) {
            return 0;
        }
        if (i > 0 && i <= textView.getLayout().getLineCount()) {
            return textView.getLayout().getLineTop(i) - textView.getLayout().getLineTop(0);
        }
        return textView.getLayout().getHeight();
    }
}
