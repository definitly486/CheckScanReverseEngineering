package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class fu1 implements cp2, fp2 {
    public ln2 b;
    public volatile boolean c;

    public static void e(ln2 ln2Var) {
        if (ln2Var == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : (Object[]) ln2Var.e) {
            if (obj instanceof cp2) {
                try {
                    ((cp2) obj).dispose();
                } catch (Throwable th) {
                    m13.d(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new CompositeException(arrayList);
            }
            throw k13.d((Throwable) arrayList.get(0));
        }
    }

    @Override // defpackage.fp2
    public final boolean a(cp2 cp2Var) {
        Object obj;
        nq5.a(cp2Var, "disposables is null");
        if (this.c) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.c) {
                    return false;
                }
                ln2 ln2Var = this.b;
                if (ln2Var != null) {
                    Object[] objArr = (Object[]) ln2Var.e;
                    int i = ln2Var.b;
                    int iHashCode = cp2Var.hashCode() * (-1640531527);
                    int i2 = (iHashCode ^ (iHashCode >>> 16)) & i;
                    Object obj2 = objArr[i2];
                    if (obj2 != null) {
                        if (obj2.equals(cp2Var)) {
                            ln2Var.b(i2, i, objArr);
                        } else {
                            do {
                                i2 = (i2 + 1) & i;
                                obj = objArr[i2];
                                if (obj == null) {
                                }
                            } while (!obj.equals(cp2Var));
                            ln2Var.b(i2, i, objArr);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Serializable, java.lang.Object[]] */
    @Override // defpackage.fp2
    public final boolean b(cp2 cp2Var) {
        nq5.a(cp2Var, "disposable is null");
        if (!this.c) {
            synchronized (this) {
                try {
                    if (!this.c) {
                        ln2 ln2Var = this.b;
                        if (ln2Var == null) {
                            ln2Var = new ln2();
                            int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(15));
                            ln2Var.b = iNumberOfLeadingZeros - 1;
                            ln2Var.d = (int) (0.75f * iNumberOfLeadingZeros);
                            ln2Var.e = new Object[iNumberOfLeadingZeros];
                            this.b = ln2Var;
                        }
                        ln2Var.a(cp2Var);
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
        cp2Var.dispose();
        return true;
    }

    public final void d() {
        if (this.c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.c) {
                    return;
                }
                ln2 ln2Var = this.b;
                this.b = null;
                e(ln2Var);
            } catch (Throwable th) {
                throw th;
            }
        }
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
                ln2 ln2Var = this.b;
                this.b = null;
                e(ln2Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return this.c;
    }
}
