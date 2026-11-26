package defpackage;

import android.app.Activity;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.tasks.ads.AdLoaderManager", f = "AdLoaderManager.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "showFirstAvailable")
public final class z7 extends f02 {
    public Activity l;
    public ll3 m;
    public nl3 n;
    public ll3 o;
    public ll3 p;
    public List q;
    public Iterator r;
    public d8 s;
    public /* synthetic */ Object t;
    public final /* synthetic */ a8 u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z7(a8 a8Var, f02 f02Var) {
        super(f02Var);
        this.u = a8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return this.u.b(null, null, null, null, null, null, this);
    }
}
