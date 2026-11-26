package defpackage;

import android.content.Context;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.inputmethod.InputMethodManager;
import com.google.android.material.textfield.TextInputEditText;

/* JADX INFO: loaded from: classes.dex */
public final class le9 {

    public static final class a extends ViewOutlineProvider {
        public final /* synthetic */ int a;

        public a(int i) {
            this.a = i;
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            view.getClass();
            outline.getClass();
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), pl2.e(this.a));
        }
    }

    public static final class b extends ViewOutlineProvider {
        public final /* synthetic */ int a;

        public b(int i) {
            this.a = i;
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            view.getClass();
            outline.getClass();
            int width = view.getWidth();
            int height = view.getHeight();
            int iE = pl2.e(this.a);
            outline.setRoundRect(0, 0, width, height + iE, iE);
        }
    }

    public static void a(TextInputEditText textInputEditText, fm3 fm3Var) {
        textInputEditText.addTextChangedListener(new se8(fm3Var, 1));
    }

    public static final void b(View view) {
        Context context = view.getContext();
        if (context != null) {
            Object systemService = context.getSystemService("input_method");
            InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        }
    }

    public static final void c(int i, View view) {
        view.setOutlineProvider(new a(i));
        view.setClipToOutline(true);
    }

    public static final void d(int i, View view) {
        view.setOutlineProvider(new b(i));
        view.setClipToOutline(true);
    }

    public static final void e(View view) {
        view.getClass();
        view.post(new xz6(view, 3));
    }
}
