package yads;

import android.app.Activity;
import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class ic implements wx3 {
    public final boolean a;
    public final bo0 b;
    public final ip0 c;
    public final Context d;

    public ic(Activity activity, int i) {
        boolean z = (i & 2) == 0;
        bo0 bo0Var = new bo0();
        ip0 ip0Var = new ip0();
        this.a = z;
        this.b = bo0Var;
        this.c = ip0Var;
        this.d = activity.getApplicationContext();
    }

    @Override // yads.wx3
    public final vx3 a(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        if (mode != 0) {
            int iE = eh6.e(this.d);
            ip0 ip0Var = this.c;
            Context context = this.d;
            ip0Var.getClass();
            int iA = ip0.a(context, 420.0f);
            int i3 = this.d.getResources().getConfiguration().orientation;
            if (this.b.a(this.d) != ao0.PHONE || i3 != 1) {
                iE = (int) Math.min(iE, iA);
            }
            i = View.MeasureSpec.makeMeasureSpec((int) Math.min(iE, size), 1073741824);
        }
        if (mode2 != 0) {
            boolean z = this.a;
            int iC = eh6.c(this.d);
            ip0 ip0Var2 = this.c;
            Context context2 = this.d;
            ip0Var2.getClass();
            int iA2 = ip0.a(context2, 350.0f);
            if (!z) {
                iC = (int) Math.min(iC, iA2);
            }
            i2 = View.MeasureSpec.makeMeasureSpec((int) Math.min(iC, size2), 1073741824);
        }
        vx3 vx3Var = new vx3();
        vx3Var.b = i2;
        vx3Var.a = i;
        return vx3Var;
    }
}
