package yads;

import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes6.dex */
public final class h51 {
    public final Path a = new Path();
    public final RectF b = new RectF();
    public final /* synthetic */ l51 c;

    public h51(l51 l51Var) {
        this.c = l51Var;
    }

    public final void a(float[] fArr) {
        this.b.set(0.0f, 0.0f, this.c.b.getWidth(), this.c.b.getHeight());
        this.a.reset();
        this.a.addRoundRect(this.b, (float[]) fArr.clone(), Path.Direction.CW);
        this.a.close();
    }
}
