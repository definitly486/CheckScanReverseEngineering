package defpackage;

import com.warefly.checkscan.presentation.qrHand.presenter.QrHandPresenter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public interface f93 {

    public static final class a implements f93 {
        public static final a a = new a();

        @Override // defpackage.f93
        public final ArrayList a(List list, String str, QrHandPresenter qrHandPresenter) {
            return b.b(this, list, str, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void b(List list, QrHandPresenter qrHandPresenter) {
            b.a(this, list, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void c(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showBlankDateError(z);
        }

        @Override // defpackage.f93
        public final void d(QrHandPresenter qrHandPresenter, boolean z) {
        }
    }

    public static final class b {
        public static void a(f93 f93Var, List list, QrHandPresenter qrHandPresenter) {
            int i;
            int iNextIndex;
            list.getClass();
            int size = list.size() - 1;
            ListIterator listIterator = list.listIterator(list.size());
            while (true) {
                i = -1;
                if (listIterator.hasPrevious()) {
                    if (aa4.e(((g93) listIterator.previous()).a, f93Var)) {
                        iNextIndex = listIterator.nextIndex();
                        break;
                    }
                } else {
                    iNextIndex = -1;
                    break;
                }
            }
            boolean z = size == iNextIndex;
            Iterator it = list.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (aa4.e(((g93) it.next()).a, f93Var)) {
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i <= 0 || !u96.f(list).c(i)) {
                return;
            }
            if (z) {
                i++;
            }
            for (g93 g93Var : qn1.o0(list, i)) {
                boolean z2 = g93Var.e;
                f93 f93Var2 = g93Var.a;
                if (z2) {
                    f93Var2.c(qrHandPresenter, true);
                } else if (g93Var.f) {
                    f93Var2.d(qrHandPresenter, true);
                } else {
                    f93Var2.c(qrHandPresenter, false);
                    f93Var2.d(qrHandPresenter, false);
                }
            }
        }

        public static ArrayList b(f93 f93Var, List list, String str, QrHandPresenter qrHandPresenter) {
            list.getClass();
            str.getClass();
            ArrayList arrayList = new ArrayList(list);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                if (aa4.e(((g93) it.next()).a, f93Var)) {
                    break;
                }
                i++;
            }
            g93 g93Var = (g93) arrayList.get(i);
            arrayList.set(i, g93.a(g93Var, str, null, ta8.M(str), !g93Var.d.e(str), 77));
            g93 g93Var2 = (g93) arrayList.get(i);
            boolean z = g93Var.f;
            if (z || !g93Var2.f) {
                if (z && !g93Var2.f) {
                    g93Var2.a.d(qrHandPresenter, false);
                }
                return arrayList;
            }
            boolean z2 = g93Var2.e;
            f93 f93Var2 = g93Var2.a;
            if (z2) {
                f93Var2.c(qrHandPresenter, true);
                return arrayList;
            }
            f93Var2.d(qrHandPresenter, true);
            return arrayList;
        }
    }

    public interface c {
        void showBlankDateError(boolean z);

        void showBlankFdError(boolean z);

        void showBlankFnError(boolean z);

        void showBlankFpError(boolean z);

        void showBlankSumError(boolean z);
    }

    public interface d {
        void showInvalidFdError(boolean z);

        void showInvalidFnError(boolean z);

        void showInvalidFpError(boolean z);

        void showInvalidSumError(boolean z);
    }

    public static final class e implements f93 {
        public static final e a = new e();

        @Override // defpackage.f93
        public final ArrayList a(List list, String str, QrHandPresenter qrHandPresenter) {
            return b.b(this, list, str, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void b(List list, QrHandPresenter qrHandPresenter) {
            b.a(this, list, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void c(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showBlankFdError(z);
        }

        @Override // defpackage.f93
        public final void d(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showInvalidFdError(z);
        }
    }

    public static final class f implements f93 {
        public static final f a = new f();

        @Override // defpackage.f93
        public final ArrayList a(List list, String str, QrHandPresenter qrHandPresenter) {
            return b.b(this, list, str, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void b(List list, QrHandPresenter qrHandPresenter) {
            b.a(this, list, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void c(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showBlankFnError(z);
        }

        @Override // defpackage.f93
        public final void d(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showInvalidFnError(z);
        }
    }

    public static final class g implements f93 {
        public static final g a = new g();

        @Override // defpackage.f93
        public final ArrayList a(List list, String str, QrHandPresenter qrHandPresenter) {
            return b.b(this, list, str, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void b(List list, QrHandPresenter qrHandPresenter) {
            b.a(this, list, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void c(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showBlankFpError(z);
        }

        @Override // defpackage.f93
        public final void d(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showInvalidFpError(z);
        }
    }

    public static final class h implements f93 {
        public static final h a = new h();

        @Override // defpackage.f93
        public final ArrayList a(List list, String str, QrHandPresenter qrHandPresenter) {
            return b.b(this, list, str, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void b(List list, QrHandPresenter qrHandPresenter) {
            b.a(this, list, qrHandPresenter);
        }

        @Override // defpackage.f93
        public final void c(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showBlankSumError(z);
        }

        @Override // defpackage.f93
        public final void d(QrHandPresenter qrHandPresenter, boolean z) {
            qrHandPresenter.showInvalidSumError(z);
        }
    }

    ArrayList a(List list, String str, QrHandPresenter qrHandPresenter);

    void b(List list, QrHandPresenter qrHandPresenter);

    void c(QrHandPresenter qrHandPresenter, boolean z);

    void d(QrHandPresenter qrHandPresenter, boolean z);
}
