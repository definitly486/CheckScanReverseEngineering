package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.ImageView;
import com.warefly.checkscan.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public abstract class qe9<T extends View, Z> extends le0<Z> {
    public final ImageView b;
    public final a c;

    public static final class a {
        public static Integer d;
        public final ImageView a;
        public final ArrayList b = new ArrayList();
        public ViewTreeObserverOnPreDrawListenerC0318a c;

        /* JADX INFO: renamed from: qe9$a$a, reason: collision with other inner class name */
        public static final class ViewTreeObserverOnPreDrawListenerC0318a implements ViewTreeObserver.OnPreDrawListener {
            public final WeakReference<a> b;

            public ViewTreeObserverOnPreDrawListenerC0318a(a aVar) {
                this.b = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = this.b.get();
                if (aVar == null) {
                    return true;
                }
                ArrayList arrayList = aVar.b;
                ImageView imageView = aVar.a;
                if (arrayList.isEmpty()) {
                    return true;
                }
                int paddingRight = imageView.getPaddingRight() + imageView.getPaddingLeft();
                ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                int iA = aVar.a(imageView.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
                int paddingBottom = imageView.getPaddingBottom() + imageView.getPaddingTop();
                ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
                int iA2 = aVar.a(imageView.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
                if (iA <= 0 && iA != Integer.MIN_VALUE) {
                    return true;
                }
                if (iA2 <= 0 && iA2 != Integer.MIN_VALUE) {
                    return true;
                }
                Iterator it = new ArrayList(arrayList).iterator();
                while (it.hasNext()) {
                    ((v18) it.next()).b(iA, iA2);
                }
                ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(aVar.c);
                }
                aVar.c = null;
                arrayList.clear();
                return true;
            }
        }

        public a(ImageView imageView) {
            this.a = imageView;
        }

        public final int a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            ImageView imageView = this.a;
            if (imageView.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            if (Log.isLoggable("ViewTarget", 4)) {
                Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            Context context = imageView.getContext();
            Integer numValueOf = d;
            if (numValueOf == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                r96.c(windowManager, "Argument must not be null");
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                numValueOf = Integer.valueOf(Math.max(point.x, point.y));
                d = numValueOf;
            }
            return numValueOf.intValue();
        }
    }

    public qe9(ImageView imageView) {
        this.b = imageView;
        this.c = new a(imageView);
    }

    @Override // defpackage.wk8
    public final c37 getRequest() {
        Object tag = this.b.getTag(R.id.glide_custom_view_target_tag);
        if (tag != null) {
            if (tag instanceof c37) {
                return (c37) tag;
            }
            fg.c("You must not call setTag() on a view Glide is targeting");
        }
        return null;
    }

    @Override // defpackage.wk8
    public final void getSize(v18 v18Var) {
        a aVar = this.c;
        ArrayList arrayList = aVar.b;
        ImageView imageView = aVar.a;
        int paddingRight = imageView.getPaddingRight() + imageView.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int iA = aVar.a(imageView.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = imageView.getPaddingBottom() + imageView.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        int iA2 = aVar.a(imageView.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            ((y08) v18Var).b(iA, iA2);
            return;
        }
        if (!arrayList.contains(v18Var)) {
            arrayList.add(v18Var);
        }
        if (aVar.c == null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            a.ViewTreeObserverOnPreDrawListenerC0318a viewTreeObserverOnPreDrawListenerC0318a = new a.ViewTreeObserverOnPreDrawListenerC0318a(aVar);
            aVar.c = viewTreeObserverOnPreDrawListenerC0318a;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0318a);
        }
    }

    @Override // defpackage.wk8
    public void onLoadCleared(Drawable drawable) {
        a aVar = this.c;
        ViewTreeObserver viewTreeObserver = aVar.a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(aVar.c);
        }
        aVar.c = null;
        aVar.b.clear();
    }

    @Override // defpackage.wk8
    public final void removeCallback(v18 v18Var) {
        this.c.b.remove(v18Var);
    }

    @Override // defpackage.wk8
    public final void setRequest(c37 c37Var) {
        this.b.setTag(R.id.glide_custom_view_target_tag, c37Var);
    }

    public final String toString() {
        return "Target for: " + this.b;
    }
}
