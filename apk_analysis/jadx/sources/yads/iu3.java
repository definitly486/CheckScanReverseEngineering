package yads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.muxer.WebmConstants;
import com.yandex.mobile.ads.R$id;
import defpackage.j59;
import defpackage.ll3;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes6.dex */
public class iu3 extends sj implements fu3, r55 {
    public Bitmap g;
    public du3 h;
    public ll3 i;
    public Drawable j;
    public hu3 k;
    public Drawable l;

    public iu3(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = gu3.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setImageChangeCallback$default(iu3 iu3Var, ll3 ll3Var, int i, Object obj) {
        if (obj != null) {
            defpackage.n1.e("Super calls with default arguments not supported in this target, function: setImageChangeCallback");
            return;
        }
        if ((i & 1) != 0) {
            ll3Var = null;
        }
        iu3Var.setImageChangeCallback(ll3Var);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0029  */
    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:19:0x004c  */
    public final Drawable a(Drawable drawable) {
        int i;
        Bitmap bitmap;
        int i2 = getLayoutParams().width;
        if ((i2 != -3 && i2 != -2) || ((i = getLayoutParams().height) != -3 && i != -2)) {
            hp0 hp0Var = this.c;
            defpackage.ze4 ze4Var = sj.f[2];
            hp0Var.getClass();
            if (((qj) hp0Var.a) == qj.NO_SCALE) {
                if (drawable instanceof BitmapDrawable) {
                    BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                    bitmap = bitmapDrawable.getBitmap();
                    if (bitmap != null) {
                        bitmap.setDensity(WebmConstants.MkvEbmlElement.BLOCK_GROUP);
                    }
                    bitmapDrawable.setTargetDensity(getContext().getResources().getDisplayMetrics());
                    return drawable;
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    return new qc5(drawable, getContext().getResources().getDisplayMetrics().density);
                }
            }
        } else {
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable2 = (BitmapDrawable) drawable;
                bitmap = bitmapDrawable2.getBitmap();
                if (bitmap != null) {
                    bitmap.setDensity(WebmConstants.MkvEbmlElement.BLOCK_GROUP);
                }
                bitmapDrawable2.setTargetDensity(getContext().getResources().getDisplayMetrics());
                return drawable;
            }
            if (Build.VERSION.SDK_INT >= 28 && defpackage.js2.e(drawable)) {
                return new qc5(drawable, getContext().getResources().getDisplayMetrics().density);
            }
        }
        return drawable;
    }

    public final void h() {
        setTag(R$id.monetization_ads_divkit_bitmap_load_references_tag, null);
    }

    public final Future j() {
        Object tag = getTag(R$id.monetization_ads_divkit_bitmap_load_references_tag);
        if (tag instanceof Future) {
            return (Future) tag;
        }
        return null;
    }

    public final void k() {
        setTag(R$id.monetization_ads_divkit_image_loaded_flag, Boolean.TRUE);
    }

    public final boolean l() {
        return defpackage.aa4.e(getTag(R$id.monetization_ads_divkit_image_loaded_flag), Boolean.TRUE);
    }

    public final boolean m() {
        return defpackage.aa4.e(getTag(R$id.monetization_ads_divkit_image_loaded_flag), Boolean.FALSE);
    }

    public final void n() {
        setTag(R$id.monetization_ads_divkit_image_loaded_flag, Boolean.FALSE);
    }

    public void o() {
        setTag(R$id.monetization_ads_divkit_image_loaded_flag, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
    }

    @Override // yads.r55
    public void release() {
        this.g = null;
        setExternalImage(null);
        this.j = null;
        o();
        Future futureJ = j();
        if (futureJ != null) {
            futureJ.cancel(true);
        }
        setTag(R$id.monetization_ads_divkit_bitmap_load_references_tag, null);
    }

    public final void setCurrentBitmapWithoutFilters$mobileads_externalRelease(Bitmap bitmap) {
        this.g = bitmap;
    }

    public void setDelegate(uh2 uh2Var) {
    }

    public final void setExternalImage(Drawable drawable) {
        this.l = drawable != null ? a(drawable) : null;
        invalidate();
    }

    public void setImage(Drawable drawable) {
        setImageDrawable(drawable);
        Object drawable2 = getDrawable();
        if ((drawable2 instanceof Animatable) && this.l == null) {
            ((Animatable) drawable2).start();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0029 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        int i;
        int i2 = getLayoutParams().width;
        if ((i2 != -3 && i2 != -2) || ((i = getLayoutParams().height) != -3 && i != -2)) {
            hp0 hp0Var = this.c;
            defpackage.ze4 ze4Var = sj.f[2];
            hp0Var.getClass();
            if (((qj) hp0Var.a) == qj.NO_SCALE) {
                if (bitmap != null) {
                    bitmap.setDensity(WebmConstants.MkvEbmlElement.BLOCK_GROUP);
                }
            }
        } else if (bitmap != null) {
            bitmap.setDensity(WebmConstants.MkvEbmlElement.BLOCK_GROUP);
        }
        setImageDrawable(new BitmapDrawable(getContext().getResources(), bitmap));
    }

    public final void setImageChangeCallback(ll3<j59> ll3Var) {
        this.i = ll3Var;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.j = drawable;
        if (this.l == null) {
            ((gu3) this.k).getClass();
            super.setImageDrawable(drawable != null ? a(drawable) : null);
            ll3 ll3Var = this.i;
            if (ll3Var != null) {
                ll3Var.invoke();
                return;
            }
            return;
        }
        Drawable drawable2 = getDrawable();
        Drawable drawable3 = this.l;
        if (drawable2 != drawable3) {
            super.setImageDrawable(drawable3);
        }
        ll3 ll3Var2 = this.i;
        if (ll3Var2 != null) {
            ll3Var2.invoke();
        }
    }

    public final void setImageTransformer(hu3 hu3Var) {
        if (hu3Var == null) {
            hu3Var = gu3.a;
        }
        this.k = hu3Var;
        Drawable drawable = this.j;
        if (drawable != null) {
            setImageDrawable(drawable);
        }
    }

    public final void setLoadReference$mobileads_externalRelease(du3 du3Var) {
        this.h = du3Var;
    }

    public void setPlaceholder(Drawable drawable) {
        setImageDrawable(drawable);
    }

    public void setPreview(Drawable drawable) {
        setImageDrawable(drawable);
    }

    public void setPreview(Bitmap bitmap) {
        setImageBitmap(bitmap);
    }

    public void setImage(Bitmap bitmap) {
        setImageBitmap(bitmap);
    }

    public final void a(Future future) {
        setTag(R$id.monetization_ads_divkit_bitmap_load_references_tag, future);
    }
}
