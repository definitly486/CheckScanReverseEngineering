package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.widget.ImageView;
import androidx.core.view.ViewGroupKt;
import androidx.transition.R;
import defpackage.j59;
import defpackage.ll3;
import java.util.Iterator;
import yads.ag6;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ag6 {
    public static final View a(final View view, ViewGroup viewGroup, gr4 gr4Var, int[] iArr) {
        Object tag = view.getTag(R.id.save_overlay_view);
        View view2 = tag instanceof View ? (View) tag : null;
        if (view2 != null) {
            return view2;
        }
        final ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        c(imageView, view);
        imageView.measure(View.MeasureSpec.makeMeasureSpec(view.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getHeight(), 1073741824));
        imageView.layout(0, 0, view.getWidth(), view.getHeight());
        int[] iArr2 = new int[2];
        viewGroup.getLocationOnScreen(iArr2);
        imageView.offsetLeftAndRight(iArr[0] - iArr2[0]);
        imageView.offsetTopAndBottom(iArr[1] - iArr2[1]);
        view.setTag(R.id.save_overlay_view, imageView);
        ViewGroupOverlay overlay = viewGroup.getOverlay();
        view.setVisibility(4);
        overlay.add(imageView);
        gr4Var.addListener(new yf6(view, overlay, imageView));
        a(view, new ll3() { // from class: mn9
            @Override // defpackage.ll3
            public final Object invoke() {
                return ag6.a(imageView, view);
            }
        });
        if (imageView.isAttachedToWindow()) {
            imageView.addOnAttachStateChangeListener(new xf6(imageView, view));
            return imageView;
        }
        a(view, (ll3) null);
        return imageView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(ImageView imageView, View view) {
        if (view.getWidth() <= 0 || view.getHeight() <= 0) {
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.translate(-view.getScrollX(), -view.getScrollY());
        view.draw(canvas);
        imageView.setImageBitmap(bitmapCreateBitmap);
        s51 s51Var = view instanceof s51 ? (s51) view : null;
        if (s51Var == null || s51Var.i() == null) {
            return;
        }
        imageView.setClipToOutline(view.getClipToOutline());
        imageView.setOutlineProvider(view.getOutlineProvider());
    }

    public static final void c(ImageView imageView, View view) {
        Bitmap bitmap;
        if (!(view instanceof s51)) {
            ImageView imageView2 = view instanceof ImageView ? (ImageView) view : null;
            Drawable drawable = imageView2 != null ? imageView2.getDrawable() : null;
            BitmapDrawable bitmapDrawable = drawable instanceof BitmapDrawable ? (BitmapDrawable) drawable : null;
            if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
                imageView.setImageBitmap(bitmap);
                return;
            }
        }
        if (oh6.a(view)) {
            b(imageView, view);
        } else if (!oh6.a(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new zf6(imageView, view));
        } else {
            b(imageView, view);
        }
    }

    public static final j59 a(ImageView imageView, View view) {
        c(imageView, view);
        return j59.a;
    }

    public static final void a(View view, ll3 ll3Var) {
        if (view instanceof yi1) {
            ((yi1) view).setImageChangeCallback(ll3Var);
        } else if (view instanceof ViewGroup) {
            Iterator<View> it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                a(it.next(), ll3Var);
            }
        }
    }
}
