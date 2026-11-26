package defpackage;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class yk8 implements up4 {
    public final Set<wk8<?>> b = Collections.newSetFromMap(new WeakHashMap());

    @Override // defpackage.up4
    public final void onDestroy() {
        Iterator it = eb9.e(this.b).iterator();
        while (it.hasNext()) {
            ((wk8) it.next()).onDestroy();
        }
    }

    @Override // defpackage.up4
    public final void onStart() {
        Iterator it = eb9.e(this.b).iterator();
        while (it.hasNext()) {
            ((wk8) it.next()).onStart();
        }
    }

    @Override // defpackage.up4
    public final void onStop() {
        Iterator it = eb9.e(this.b).iterator();
        while (it.hasNext()) {
            ((wk8) it.next()).onStop();
        }
    }
}
