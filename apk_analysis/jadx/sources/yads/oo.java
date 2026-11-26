package yads;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class oo {
    public final Context a;
    public final ViewGroup b;
    public final qr3 c;
    public final or3 d;
    public final no e;

    public oo(Context context, ViewGroup viewGroup, List list, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        qr3 qr3Var = new qr3(list);
        or3 or3Var = new or3();
        no noVar = new no(onPreDrawListener);
        this.a = context;
        this.b = viewGroup;
        this.c = qr3Var;
        this.d = or3Var;
        this.e = noVar;
    }
}
