package yads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class bc {
    public final Activity a;
    public final uc b;
    public final yb c;
    public final tc d;
    public final ic e;

    public bc(Activity activity, uc ucVar, yb ybVar) {
        tc tcVar = new tc();
        ic icVar = new ic(activity, 14);
        this.a = activity;
        this.b = ucVar;
        this.c = ybVar;
        this.d = tcVar;
        this.e = icVar;
    }

    public static final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout()).bottom);
        return WindowInsetsCompat.CONSUMED;
    }

    public static void a(ViewGroup viewGroup) {
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new defpackage.f2(8));
    }
}
