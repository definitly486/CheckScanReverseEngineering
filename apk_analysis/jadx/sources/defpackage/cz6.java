package defpackage;

import android.graphics.Bitmap;
import android.os.Looper;
import android.view.View;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes3.dex */
public final class cz6 {
    public static final ep2 a(b24 b24Var, nk2 nk2Var) {
        xk8 xk8Var = b24Var.c;
        if (!(xk8Var instanceof re9)) {
            return new ix5(nk2Var);
        }
        View view = ((re9) xk8Var).getView();
        Object tag = view.getTag(R.id.coil3_request_manager);
        ve9 ve9Var = tag instanceof ve9 ? (ve9) tag : null;
        if (ve9Var == null) {
            synchronized (view) {
                try {
                    Object tag2 = view.getTag(R.id.coil3_request_manager);
                    ve9Var = tag2 instanceof ve9 ? (ve9) tag2 : null;
                    if (ve9Var == null) {
                        ve9Var = new ve9(view);
                        view.addOnAttachStateChangeListener(ve9Var);
                        view.setTag(R.id.coil3_request_manager, ve9Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (ve9Var) {
            se9 se9Var = ve9Var.c;
            if (se9Var != null) {
                Bitmap.Config[] configArr = sb9.a;
                if (aa4.e(Looper.myLooper(), Looper.getMainLooper()) && ve9Var.f) {
                    ve9Var.f = false;
                    se9Var.b = nk2Var;
                    return se9Var;
                }
            }
            s68 s68Var = ve9Var.d;
            if (s68Var != null) {
                s68Var.cancel(null);
            }
            ve9Var.d = null;
            View view2 = ve9Var.b;
            se9 se9Var2 = new se9();
            se9Var2.c = view2;
            se9Var2.b = nk2Var;
            ve9Var.c = se9Var2;
            return se9Var2;
        }
    }
}
