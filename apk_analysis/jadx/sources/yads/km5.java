package yads;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class km5 extends mm5 {
    @Override // yads.nm5
    public final float a(int i, View view, ViewGroup viewGroup) {
        float translationX = view.getTranslationX();
        jm5 jm5Var = qm5.c;
        int width = viewGroup.getWidth() - view.getLeft();
        if (i == -1) {
            i = width;
        }
        return translationX + i;
    }
}
