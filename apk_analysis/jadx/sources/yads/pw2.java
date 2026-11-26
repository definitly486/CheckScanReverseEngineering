package yads;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R$drawable;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class pw2 implements defpackage.id3 {
    public final /* synthetic */ rw2 a;

    public pw2(rw2 rw2Var) {
        this.a = rw2Var;
    }

    @Override // defpackage.id3
    public final Object emit(Object obj, defpackage.e02 e02Var) {
        Drawable drawable = (Drawable) obj;
        rw2 rw2Var = this.a;
        if (drawable != null) {
            ImageView imageView = (ImageView) rw2Var.b();
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        } else {
            ImageView imageView2 = (ImageView) rw2Var.b();
            if (imageView2 != null) {
                this.a.getClass();
                imageView2.setImageDrawable(ContextCompat.getDrawable(imageView2.getContext(), R$drawable.monetization_ads_internal_default_adtune_feedback_icon));
            }
        }
        return j59.a;
    }
}
