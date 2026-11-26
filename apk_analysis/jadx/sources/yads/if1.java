package yads;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class if1 implements View.OnFocusChangeListener {
    public final tt a;
    public f51 b;
    public f51 c;
    public List d;
    public List e;
    public final /* synthetic */ jf1 f;

    public if1(jf1 jf1Var, tt ttVar) {
        this.f = jf1Var;
        this.a = ttVar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        f51 f51Var = this.b;
        if (z) {
            jf1 jf1Var = this.f;
            tt ttVar = this.a;
            jf1Var.getClass();
            jf1.a(ttVar, f51Var, view);
            List list = this.d;
            if (list != null) {
                this.f.a.a(this.a, view, list, "focus");
                return;
            }
            return;
        }
        if (f51Var != null) {
            f51 f51Var2 = this.c;
            jf1 jf1Var2 = this.f;
            tt ttVar2 = this.a;
            jf1Var2.getClass();
            jf1.a(ttVar2, f51Var2, view);
        }
        List list2 = this.e;
        if (list2 != null) {
            this.f.a.a(this.a, view, list2, "blur");
        }
    }
}
