package yads;

import android.view.View;
import android.webkit.WebView;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class hp6 extends xp6 {
    public static final hp6 d = new hp6();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.xp6
    public final void a(boolean z) {
        Iterator it = Collections.unmodifiableCollection(tp6.c.a).iterator();
        while (it.hasNext()) {
            s9 s9Var = ((dp6) it.next()).e;
            if (s9Var.b.get() != 0) {
                nq6.a.a((WebView) s9Var.b.get(), "setState", z ? "foregrounded" : "backgrounded", s9Var.a);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.xp6
    public final boolean a() {
        Iterator it = Collections.unmodifiableCollection(tp6.c.b).iterator();
        while (it.hasNext()) {
            View view = (View) ((dp6) it.next()).d.get();
            if (view != null && view.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
