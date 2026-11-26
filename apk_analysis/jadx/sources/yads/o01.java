package yads;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes6.dex */
public abstract class o01 {
    public static final void a(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(view.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 2);
        }
    }

    public static final Double b(oe2 oe2Var, fs2 fs2Var) {
        if (oe2Var instanceof ke2) {
            return Double.valueOf(((Number) ((ke2) oe2Var).a.a.a(fs2Var)).longValue());
        }
        if (oe2Var instanceof le2) {
            return (Double) ((le2) oe2Var).a.a.a(fs2Var);
        }
        return null;
    }

    public static final Object c(oe2 oe2Var, fs2 fs2Var) {
        if (oe2Var instanceof ke2) {
            return ((ke2) oe2Var).a.a.a(fs2Var);
        }
        if (oe2Var instanceof me2) {
            return ((me2) oe2Var).a.a.a(fs2Var);
        }
        if (oe2Var instanceof he2) {
            return ((he2) oe2Var).a.a.a(fs2Var);
        }
        if (oe2Var instanceof ie2) {
            return ((ie2) oe2Var).a.a.a(fs2Var);
        }
        if (oe2Var instanceof le2) {
            return ((le2) oe2Var).a.a.a(fs2Var);
        }
        if (oe2Var instanceof ne2) {
            return ((ne2) oe2Var).a.a.a(fs2Var);
        }
        if (oe2Var instanceof ge2) {
            return ((ge2) oe2Var).a.a.a(fs2Var);
        }
        if (oe2Var instanceof je2) {
            return ((je2) oe2Var).a.a.a(fs2Var);
        }
        defpackage.me0.e();
        return null;
    }

    public static final Long d(oe2 oe2Var, fs2 fs2Var) {
        if (oe2Var instanceof ke2) {
            return (Long) ((ke2) oe2Var).a.a.a(fs2Var);
        }
        return null;
    }

    public static final void a(bn1 bn1Var) {
        InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(bn1Var.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(bn1Var, 1);
        }
    }

    public static final Integer a(oe2 oe2Var, fs2 fs2Var) {
        if (oe2Var instanceof ie2) {
            return (Integer) ((ie2) oe2Var).a.a.a(fs2Var);
        }
        return null;
    }

    public static final void a(vq0 vq0Var, Throwable th) {
        ao2 ao2VarA = vq0Var.o.b().a(vq0Var.Q, vq0Var.O);
        ao2VarA.b.add(th);
        ao2VarA.a();
    }

    public static final void b(vq0 vq0Var, Throwable th) {
        ao2 ao2VarA = vq0Var.o.b().a(vq0Var.Q, vq0Var.O);
        ao2VarA.d.add(th);
        ao2VarA.a();
    }
}
