package yads;

import android.view.View;
import androidx.core.view.ViewKt;
import defpackage.jp7;

/* JADX INFO: loaded from: classes6.dex */
public final class u16 implements r16 {
    public int a;

    @Override // yads.r16
    public final void a(View view) {
        int i = this.a;
        if (i > 0) {
            int i2 = i - 1;
            this.a = i2;
            if (i2 == 0) {
                view.invalidate();
                pa3.a aVar = new pa3.a(jp7.k(ViewKt.getAllViews(view), t16.b));
                while (aVar.hasNext()) {
                    ((s51) aVar.next()).e();
                }
            }
        }
    }

    @Override // yads.r16
    public final void b(View view) {
        int i = this.a + 1;
        this.a = i;
        if (i == 1) {
            view.invalidate();
            pa3.a aVar = new pa3.a(jp7.k(ViewKt.getAllViews(view), t16.b));
            while (aVar.hasNext()) {
                ((s51) aVar.next()).e();
            }
        }
    }

    @Override // yads.r16
    public final boolean g() {
        return this.a != 0;
    }
}
