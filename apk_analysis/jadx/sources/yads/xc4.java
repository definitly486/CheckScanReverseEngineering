package yads;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class xc4 extends rf6 {
    public final b05 c;
    public final q84 d;
    public final d9 e;
    public final defpackage.y22 f;

    public xc4(ViewPager2 viewPager2, b05 b05Var, q84 q84Var, d9 d9Var, defpackage.y22 y22Var) {
        super(viewPager2);
        this.c = b05Var;
        this.d = q84Var;
        this.e = d9Var;
        this.f = y22Var;
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        return ((ViewPager2) view).getAdapter() instanceof uc4;
    }

    @Override // yads.rf6
    public final void b(View view, Object obj) {
        try {
            ((ViewPager2) view).setAdapter(new uc4(this.c, (List) obj, this.e, this.f));
        } catch (IllegalArgumentException e) {
            q84 q84Var = this.d;
            String message = e.getMessage();
            if (message == null) {
                message = "IllegalArgumentException: set adapter exception";
            }
            q84Var.reportError(message, e);
        }
    }
}
