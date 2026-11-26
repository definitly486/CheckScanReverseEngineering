package yads;

import android.view.View;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class t40 implements af {
    public final List a;

    public t40(List list) {
        this.a = list;
    }

    @Override // yads.af
    public final void a(View view) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((af) it.next()).a(view);
        }
    }

    @Override // yads.af
    public final void cancel() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((af) it.next()).cancel();
        }
    }
}
