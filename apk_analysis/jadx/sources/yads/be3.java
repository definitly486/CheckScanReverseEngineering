package yads;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class be3 extends rf6 {
    public static final /* synthetic */ int l = 0;
    public final defpackage.y22 c;
    public final hc3 d;
    public final vd3 e;
    public final un5 f;
    public defpackage.mb4 g;

    public be3(ImageView imageView, b05 b05Var, d9 d9Var, defpackage.y22 y22Var) {
        hc3 hc3Var = new hc3(imageView.getContext(), new kj4(d9Var), b05Var);
        vd3 vd3Var = new vd3(b05Var);
        un5 un5Var = new un5();
        super(imageView);
        this.c = y22Var;
        this.d = hc3Var;
        this.e = vd3Var;
        this.f = un5Var;
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        rd3 rd3Var = (rd3) obj;
        vd3 vd3Var = this.e;
        Drawable drawable = ((ImageView) view).getDrawable();
        Bitmap bitmapA = vd3Var.a.a(rd3Var);
        if (bitmapA == null) {
            b05 b05Var = vd3Var.a;
            b05Var.getClass();
            a05 a05VarB = b05.b(rd3Var);
            bitmapA = a05VarB != null ? (Bitmap) b05Var.c.get(a05VarB) : null;
        }
        if (drawable == null || bitmapA == null) {
            return false;
        }
        return (drawable instanceof BitmapDrawable ? new du() : new yk2()).a(drawable, bitmapA);
    }

    @Override // yads.rf6
    public final void b(View view, Object obj) {
        rd3 rd3Var = (rd3) obj;
        defpackage.mb4 mb4Var = this.g;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.g = defpackage.av0.c(this.c, null, null, new ae3(this, rd3Var, null), 3);
    }

    @Override // yads.rf6
    public final void a(View view) {
        ImageView imageView = (ImageView) view;
        imageView.setImageDrawable(null);
        this.f.a(imageView);
        imageView.setVisibility(8);
        imageView.setOnClickListener(null);
        imageView.setOnTouchListener(null);
        imageView.setSelected(false);
    }
}
