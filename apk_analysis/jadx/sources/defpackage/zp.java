package defpackage;

import android.content.ActivityNotFoundException;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentFactory;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.warefly.checkscan.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class zp implements zl5 {
    public final FragmentActivity a;
    public final FragmentManager b;
    public final FragmentFactory c;
    public final ArrayList d;

    public zp(FragmentActivity fragmentActivity, FragmentManager fragmentManager) {
        FragmentFactory fragmentFactory = fragmentManager.getFragmentFactory();
        fragmentFactory.getClass();
        fragmentActivity.getClass();
        fragmentManager.getClass();
        this.a = fragmentActivity;
        this.b = fragmentManager;
        this.c = fragmentFactory;
        this.d = new ArrayList();
    }

    @Override // defpackage.zl5
    public final void a(so1[] so1VarArr) {
        so1VarArr.getClass();
        FragmentManager fragmentManager = this.b;
        fragmentManager.executePendingTransactions();
        ArrayList arrayList = this.d;
        arrayList.clear();
        int backStackEntryCount = fragmentManager.getBackStackEntryCount();
        int i = 0;
        if (backStackEntryCount > 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                String name = fragmentManager.getBackStackEntryAt(i2).getName();
                name.getClass();
                arrayList.add(name);
                if (i3 >= backStackEntryCount) {
                    break;
                } else {
                    i2 = i3;
                }
            }
        }
        int length = so1VarArr.length;
        while (i < length) {
            so1 so1Var = so1VarArr[i];
            i++;
            try {
                c(so1Var);
            } catch (RuntimeException e) {
                e(so1Var, e);
                throw null;
            }
        }
    }

    public void b() {
        this.a.finish();
    }

    public final void c(so1 so1Var) {
        so1Var.getClass();
        boolean z = so1Var instanceof xi3;
        FragmentActivity fragmentActivity = this.a;
        if (z) {
            df7 df7Var = ((xi3) so1Var).a;
            if (df7Var instanceof jg7) {
                try {
                    fragmentActivity.startActivity(((jg7) df7Var).c(fragmentActivity), null);
                    return;
                } catch (ActivityNotFoundException unused) {
                    return;
                }
            } else {
                if (df7Var instanceof lk3) {
                    d((lk3) df7Var, true);
                    return;
                }
                return;
            }
        }
        boolean z2 = so1Var instanceof l27;
        FragmentManager fragmentManager = this.b;
        ArrayList arrayList = this.d;
        if (z2) {
            df7 df7Var2 = ((l27) so1Var).a;
            if (df7Var2 instanceof jg7) {
                try {
                    fragmentActivity.startActivity(((jg7) df7Var2).c(fragmentActivity), null);
                } catch (ActivityNotFoundException unused2) {
                }
                fragmentActivity.finish();
                return;
            } else {
                if (df7Var2 instanceof lk3) {
                    if (arrayList.isEmpty()) {
                        d((lk3) df7Var2, false);
                        return;
                    }
                    fragmentManager.popBackStack();
                    arrayList.remove(arrayList.size() - 1);
                    d((lk3) df7Var2, true);
                    return;
                }
                return;
            }
        }
        if (!(so1Var instanceof c00)) {
            if (so1Var instanceof vz) {
                if (arrayList.isEmpty()) {
                    b();
                    return;
                } else {
                    fragmentManager.popBackStack();
                    arrayList.remove(arrayList.size() - 1);
                    return;
                }
            }
            return;
        }
        df7 df7Var3 = ((c00) so1Var).a;
        if (df7Var3 == null) {
            arrayList.clear();
            fragmentManager.popBackStack((String) null, 1);
            return;
        }
        String strB = df7Var3.b();
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (aa4.e((String) it.next(), strB)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            arrayList.clear();
            fragmentManager.popBackStack((String) null, 1);
        } else {
            List listSubList = arrayList.subList(i, arrayList.size());
            fragmentManager.popBackStack(((String) qn1.T(listSubList)).toString(), 0);
            listSubList.clear();
        }
    }

    public final void d(lk3 lk3Var, boolean z) {
        Fragment fragmentA = lk3Var.a(this.c);
        FragmentManager fragmentManager = this.b;
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.setReorderingAllowed(true);
        fragmentManager.findFragmentById(R.id.container);
        f(lk3Var, fragmentTransactionBeginTransaction, fragmentA);
        fragmentTransactionBeginTransaction.replace(R.id.container, fragmentA, lk3Var.b());
        if (z) {
            fragmentTransactionBeginTransaction.addToBackStack(lk3Var.b());
            this.d.add(lk3Var.b());
        }
        fragmentTransactionBeginTransaction.commit();
    }

    public void e(so1 so1Var, RuntimeException runtimeException) {
        throw null;
    }

    public void f(lk3 lk3Var, FragmentTransaction fragmentTransaction, Fragment fragment) {
        throw null;
    }
}
