package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes5.dex */
public final class cr4 implements cp2, fp2 {
    public LinkedList b;
    public volatile boolean c;

    @Override // defpackage.fp2
    public final boolean a(cp2 cp2Var) {
        if (this.c) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.c) {
                    return false;
                }
                LinkedList linkedList = this.b;
                if (linkedList != null && linkedList.remove(cp2Var)) {
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.fp2
    public final boolean b(cp2 cp2Var) {
        if (!this.c) {
            synchronized (this) {
                try {
                    if (!this.c) {
                        LinkedList linkedList = this.b;
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            this.b = linkedList;
                        }
                        linkedList.add(cp2Var);
                        return true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        cp2Var.dispose();
        return false;
    }

    @Override // defpackage.fp2
    public final boolean c(cp2 cp2Var) {
        if (!a(cp2Var)) {
            return false;
        }
        ((ge7) cp2Var).dispose();
        return true;
    }

    @Override // defpackage.cp2
    public final void dispose() {
        if (this.c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.c) {
                    return;
                }
                this.c = true;
                LinkedList linkedList = this.b;
                ArrayList arrayList = null;
                this.b = null;
                if (linkedList == null) {
                    return;
                }
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    try {
                        ((cp2) it.next()).dispose();
                    } catch (Throwable th) {
                        m13.d(th);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(th);
                    }
                }
                if (arrayList != null) {
                    if (arrayList.size() != 1) {
                        throw new CompositeException(arrayList);
                    }
                    throw k13.d((Throwable) arrayList.get(0));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return this.c;
    }
}
