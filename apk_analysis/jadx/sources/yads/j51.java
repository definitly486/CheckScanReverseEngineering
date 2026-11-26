package yads;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes6.dex */
public final class j51 extends ViewOutlineProvider {
    public float a = 0.0f;

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        int width = view.getWidth();
        int height = view.getHeight();
        float f = this.a;
        float width2 = view.getWidth();
        float height2 = view.getHeight();
        float fMin = 0.0f;
        if (height2 > 0.0f && width2 > 0.0f) {
            float fMin2 = Math.min(height2, width2) / 2.0f;
            if (f > fMin2) {
                int i = cr3.a;
                vj5[] vj5VarArr = vj5.b;
                cr3.a();
            }
            fMin = Math.min(f, fMin2);
        }
        outline.setRoundRect(0, 0, width, height, fMin);
    }
}
