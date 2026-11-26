package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
public final class ba5 implements l46, wr3 {
    public final Path a = new Path();
    public final Path b = new Path();
    public final Path c = new Path();
    public final ArrayList d = new ArrayList();
    public final aa5 e;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[aa5.a.values().length];
            a = iArr;
            try {
                iArr[aa5.a.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[aa5.a.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[aa5.a.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[aa5.a.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[aa5.a.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public ba5(aa5 aa5Var) {
        this.e = aa5Var;
    }

    public final void a(Path.Op op) {
        Path path = this.b;
        path.reset();
        Path path2 = this.a;
        path2.reset();
        ArrayList arrayList = this.d;
        for (int size = arrayList.size() - 1; size >= 1; size--) {
            l46 l46Var = (l46) arrayList.get(size);
            if (l46Var instanceof tx1) {
                tx1 tx1Var = (tx1) l46Var;
                ArrayList arrayList2 = (ArrayList) tx1Var.c();
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    Path path3 = ((l46) arrayList2.get(size2)).getPath();
                    Matrix matrixE = tx1Var.d;
                    o19 o19Var = tx1Var.l;
                    if (o19Var != null) {
                        matrixE = o19Var.e();
                    } else {
                        matrixE.reset();
                    }
                    path3.transform(matrixE);
                    path.addPath(path3);
                }
            } else {
                path.addPath(l46Var.getPath());
            }
        }
        int i = 0;
        l46 l46Var2 = (l46) arrayList.get(0);
        if (l46Var2 instanceof tx1) {
            tx1 tx1Var2 = (tx1) l46Var2;
            List<l46> listC = tx1Var2.c();
            while (true) {
                ArrayList arrayList3 = (ArrayList) listC;
                if (i >= arrayList3.size()) {
                    break;
                }
                Path path4 = ((l46) arrayList3.get(i)).getPath();
                Matrix matrixE2 = tx1Var2.d;
                o19 o19Var2 = tx1Var2.l;
                if (o19Var2 != null) {
                    matrixE2 = o19Var2.e();
                } else {
                    matrixE2.reset();
                }
                path4.transform(matrixE2);
                path2.addPath(path4);
                i++;
            }
        } else {
            path2.set(l46Var2.getPath());
        }
        this.c.op(path2, path, op);
    }

    @Override // defpackage.wr3
    public final void c(ListIterator<sx1> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            sx1 sx1VarPrevious = listIterator.previous();
            if (sx1VarPrevious instanceof l46) {
                this.d.add((l46) sx1VarPrevious);
                listIterator.remove();
            }
        }
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.d;
            if (i >= arrayList.size()) {
                return;
            }
            ((l46) arrayList.get(i)).f(list, list2);
            i++;
        }
    }

    @Override // defpackage.l46
    public final Path getPath() {
        Path path = this.c;
        path.reset();
        aa5 aa5Var = this.e;
        if (!aa5Var.b) {
            int i = a.a[aa5Var.a.ordinal()];
            if (i == 1) {
                int i2 = 0;
                while (true) {
                    ArrayList arrayList = this.d;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    path.addPath(((l46) arrayList.get(i2)).getPath());
                    i2++;
                }
            } else {
                if (i == 2) {
                    a(Path.Op.UNION);
                    return path;
                }
                if (i == 3) {
                    a(Path.Op.REVERSE_DIFFERENCE);
                    return path;
                }
                if (i == 4) {
                    a(Path.Op.INTERSECT);
                    return path;
                }
                if (i == 5) {
                    a(Path.Op.XOR);
                    return path;
                }
            }
        }
        return path;
    }
}
