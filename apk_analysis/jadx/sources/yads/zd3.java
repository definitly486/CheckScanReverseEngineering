package yads;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class zd3 implements defpackage.id3 {
    public final /* synthetic */ be3 a;
    public final /* synthetic */ rd3 b;

    public zd3(be3 be3Var, rd3 rd3Var) {
        this.a = be3Var;
        this.b = rd3Var;
    }

    @Override // defpackage.id3
    public final Object emit(Object obj, defpackage.e02 e02Var) {
        ImageView imageView;
        Drawable drawable = (Drawable) obj;
        if (drawable != null && (imageView = (ImageView) this.a.b()) != null) {
            be3 be3Var = this.a;
            rd3 rd3Var = this.b;
            be3Var.getClass();
            if (rd3Var.e != null) {
                be3Var.f.a(imageView, rd3Var, drawable);
            } else {
                imageView.setImageDrawable(drawable);
            }
        }
        return j59.a;
    }
}
