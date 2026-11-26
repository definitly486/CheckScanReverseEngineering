package yads;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes6.dex */
public abstract class t05 extends ps2 {
    public t05(Context context) {
        super(context);
    }

    public abstract void privateSetViewBinderProvider(dj3 dj3Var);

    public void setViewBinderProvider(dj3 dj3Var) {
        privateSetViewBinderProvider(dj3Var);
    }

    public t05(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public t05(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
