package yads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class ki6 {
    public static final boolean c = li6.a;
    public final ArrayList a = new ArrayList();
    public boolean b = false;

    public final synchronized void a() {
        long j;
        this.b = true;
        if (this.a.size() == 0) {
            j = 0;
        } else {
            long j2 = ((ji6) this.a.get(0)).a;
            ArrayList arrayList = this.a;
            j = ((ji6) arrayList.get(arrayList.size() - 1)).a - j2;
        }
        if (j <= 0) {
            return;
        }
        long j3 = ((ji6) this.a.get(0)).a;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            long j4 = ((ji6) it.next()).a;
        }
    }

    public final void finalize() {
        if (this.b) {
            return;
        }
        a();
    }

    public final synchronized void a(String str, long j) {
        if (!this.b) {
            this.a.add(new ji6(str, j, SystemClock.elapsedRealtime()));
        } else {
            throw new IllegalStateException("Marker added to finished log");
        }
    }
}
