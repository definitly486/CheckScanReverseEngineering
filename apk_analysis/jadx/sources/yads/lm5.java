package yads;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class lm5 extends pm5 {
    @Override // yads.nm5
    public final float b(int i, View view, ViewGroup viewGroup) {
        float translationY = view.getTranslationY();
        jm5 jm5Var = qm5.c;
        int bottom = view.getBottom();
        if (i == -1) {
            i = bottom;
        }
        return translationY - i;
    }
}
