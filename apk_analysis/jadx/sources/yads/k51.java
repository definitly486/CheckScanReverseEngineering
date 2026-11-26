package yads;

import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Rect;
import com.yandex.mobile.ads.R$dimen;

/* JADX INFO: loaded from: classes6.dex */
public final class k51 {
    public final float a;
    public float b;
    public int c;
    public float d;
    public final Paint e;
    public final Rect f;
    public NinePatch g;
    public float h;
    public float i;
    public final /* synthetic */ l51 j;

    public k51(l51 l51Var) {
        this.j = l51Var;
        float dimension = l51Var.b.getContext().getResources().getDimension(R$dimen.monetization_ads_divkit_div_shadow_elevation);
        this.a = dimension;
        this.b = dimension;
        this.c = -16777216;
        this.d = 0.14f;
        this.e = new Paint();
        this.f = new Rect();
        this.i = 0.5f;
    }

    public final void a(float[] fArr) {
        this.f.set(0, 0, (int) ((this.b * 2.0f) + this.j.b.getWidth()), (int) ((this.b * 2.0f) + this.j.b.getHeight()));
        this.e.setColor(this.c);
        this.e.setAlpha((int) (this.j.b.getAlpha() * this.d * 255.0f));
        Paint paint = xj5.a;
        this.g = xj5.a(fArr, this.b, (fu) this.j.a.n.n.getValue());
    }
}
