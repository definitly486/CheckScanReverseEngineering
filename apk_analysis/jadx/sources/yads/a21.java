package yads;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class a21 {
    public final vq0 a;
    public final LinkedHashMap b = new LinkedHashMap();

    public a21(vq0 vq0Var) {
        this.a = vq0Var;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005a  */
    /* JADX WARN: Multi-variable type inference failed */
    public final w11 a(View view, String str) {
        w11 w11Var;
        p41 p41VarA;
        if (view instanceof wh1) {
            br0 br0VarA = ((wh1) view).a();
            List listT = (br0VarA == null || (p41VarA = br0VarA.a()) == null) ? null : p41VarA.t();
            if (listT != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : listT) {
                    if (defpackage.aa4.e(((w11) obj).a().a(), str)) {
                        arrayList.add(obj);
                    }
                }
                if (!arrayList.isEmpty() && arrayList.size() <= 1) {
                    w11Var = (w11) defpackage.qn1.T(arrayList);
                } else {
                    w11Var = null;
                }
            } else {
                w11Var = null;
            }
            if (w11Var != null) {
                return w11Var;
            }
            Object parent = view.getParent();
            View view2 = parent instanceof View ? (View) parent : null;
            if (view2 != null) {
                return a(view2, str);
            }
        } else {
            if (view instanceof vq0) {
                o01.b(this.a, new RuntimeException(defpackage.me0.c("Unable to find animator with id '", str, "'")));
                return null;
            }
            Object parent2 = view.getParent();
            View view3 = parent2 instanceof View ? (View) parent2 : null;
            if (view3 != null) {
                return a(view3, str);
            }
        }
        return null;
    }

    public final void a(String str, View view, yr0 yr0Var, fs2 fs2Var) {
        ObjectAnimator objectAnimatorA;
        Animator animator;
        String str2 = yr0Var.a;
        w11 w11VarA = a(view, str2);
        if (w11VarA == null) {
            return;
        }
        defpackage.b36 b36Var = new defpackage.b36(str, str2);
        if (this.b.containsKey(b36Var) && (animator = (Animator) this.b.remove(b36Var)) != null) {
            animator.cancel();
        }
        vq0 vq0Var = this.a;
        if (w11VarA instanceof v11) {
            objectAnimatorA = xf2.a(vq0Var, ((v11) w11VarA).a, yr0Var, fs2Var);
        } else if (w11VarA instanceof u11) {
            objectAnimatorA = xf2.a(vq0Var, ((u11) w11VarA).a, yr0Var, fs2Var);
        } else {
            defpackage.me0.e();
            return;
        }
        if (objectAnimatorA == null) {
            return;
        }
        objectAnimatorA.addListener(new z11(this, b36Var));
        objectAnimatorA.addListener(new y11(this, b36Var));
        this.b.put(b36Var, objectAnimatorA);
        objectAnimatorA.start();
    }

    public final void a(String str, String str2) {
        Animator animator = (Animator) this.b.remove(new defpackage.b36(str, str2));
        if (animator == null) {
            return;
        }
        animator.cancel();
    }

    public final void a() {
        Iterator it = new ArrayList(this.b.values()).iterator();
        while (it.hasNext()) {
            ((Animator) it.next()).cancel();
        }
        this.b.clear();
    }
}
