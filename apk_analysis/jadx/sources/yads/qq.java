package yads;

import android.graphics.Bitmap;
import android.view.View;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class qq implements View.OnLayoutChangeListener {
    public final /* synthetic */ View b;
    public final /* synthetic */ Bitmap c;
    public final /* synthetic */ List d;
    public final /* synthetic */ fs2 e;
    public final /* synthetic */ fu f;
    public final /* synthetic */ nl3 g;

    public qq(View view, Bitmap bitmap, List list, fs2 fs2Var, fu fuVar, nl3 nl3Var) {
        this.b = view;
        this.c = bitmap;
        this.d = list;
        this.e = fs2Var;
        this.f = fuVar;
        this.g = nl3Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        float fMax = Math.max(this.b.getHeight() / this.c.getHeight(), this.b.getWidth() / this.c.getWidth());
        Bitmap bitmap = this.c;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMax), (int) (fMax * this.c.getHeight()), false);
        for (wd1 wd1Var : this.d) {
            if (wd1Var instanceof ud1) {
                long jLongValue = ((Number) ((ud1) wd1Var).a().a.a(this.e)).longValue();
                long j = jLongValue >> 31;
                bitmapCreateScaledBitmap = ((yv3) this.f).a(bitmapCreateScaledBitmap, pq.a(Integer.valueOf((j == 0 || j == -1) ? (int) jLongValue : jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE), this.b.getResources().getDisplayMetrics()));
            } else if ((wd1Var instanceof vd1) && oh6.b(this.b)) {
                this.f.getClass();
                bitmapCreateScaledBitmap = fu.a(bitmapCreateScaledBitmap);
            }
        }
        this.g.invoke(bitmapCreateScaledBitmap);
    }
}
