package yads;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class im5 extends pm5 {
    @Override // yads.nm5
    public final float b(int i, View view, ViewGroup viewGroup) {
        float translationY = view.getTranslationY();
        jm5 jm5Var = qm5.c;
        int height = viewGroup.getHeight() - view.getTop();
        if (i == -1) {
            i = height;
        }
        return translationY + i;
    }
}
