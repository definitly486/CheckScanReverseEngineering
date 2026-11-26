package defpackage;

import android.view.View;
import android.view.Window;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class si9 implements yv5 {
    public final /* synthetic */ wl7 a;
    public final /* synthetic */ Window b;
    public final /* synthetic */ nd6 c;

    public si9(wl7 wl7Var, Window window, nd6 nd6Var) {
        this.a = wl7Var;
        this.b = window;
        this.c = nd6Var;
    }

    @Override // defpackage.yv5
    public final void onContentChanged() {
        ((CopyOnWriteArrayList) this.a.c).remove(this);
        View viewPeekDecorView = this.b.peekDecorView();
        viewPeekDecorView.getClass();
        this.c.invoke(viewPeekDecorView);
    }
}
