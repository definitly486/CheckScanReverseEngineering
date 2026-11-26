package yads;

import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes6.dex */
public final class g51 {
    public final Paint a;
    public final Path b;
    public boolean c;
    public final float d;
    public final float e;
    public final float f;
    public final RectF g;
    public final /* synthetic */ l51 h;

    public g51(l51 l51Var) {
        this.h = l51Var;
        Paint paint = new Paint();
        this.a = paint;
        this.b = new Path();
        this.d = pq.a(Double.valueOf(0.5d), l51Var.b.getResources().getDisplayMetrics());
        this.e = pq.a((Number) 6, l51Var.b.getResources().getDisplayMetrics());
        this.f = pq.a((Number) 2, l51Var.b.getResources().getDisplayMetrics());
        this.g = new RectF();
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
    }
}
