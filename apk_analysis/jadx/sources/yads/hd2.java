package yads;

import android.view.ContextThemeWrapper;
import androidx.transition.ChangeBounds;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;
import defpackage.zo7;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class hd2 {
    public final ContextThemeWrapper a;
    public final zh2 b;

    public hd2(ContextThemeWrapper contextThemeWrapper, zh2 zh2Var) {
        this.a = contextThemeWrapper;
        this.b = zh2Var;
    }

    public final Transition a(s21 s21Var, int i, fs2 fs2Var) {
        if (s21Var instanceof q21) {
            TransitionSet transitionSet = new TransitionSet();
            Iterator it = ((q21) s21Var).a.a.iterator();
            while (it.hasNext()) {
                Transition transitionA = a((s21) it.next(), i, fs2Var);
                transitionSet.setDuration(Math.max(transitionSet.getDuration(), transitionA.getDuration() + transitionA.getStartDelay()));
                transitionSet.addTransition(transitionA);
            }
            return transitionSet;
        }
        if (s21Var instanceof o21) {
            o21 o21Var = (o21) s21Var;
            it2 it2Var = new it2((float) ((Number) o21Var.a.a.a(fs2Var)).doubleValue());
            it2Var.setMode(i);
            it2Var.setDuration(((Number) o21Var.a.b.a(fs2Var)).longValue());
            it2Var.setStartDelay(((Number) o21Var.a.d.a(fs2Var)).longValue());
            it2Var.setInterpolator(jf2.a((o11) o21Var.a.c.a(fs2Var)));
            return it2Var;
        }
        if (s21Var instanceof p21) {
            p21 p21Var = (p21) s21Var;
            oc5 oc5Var = new oc5((float) ((Number) p21Var.a.e.a(fs2Var)).doubleValue(), (float) ((Number) p21Var.a.c.a(fs2Var)).doubleValue(), (float) ((Number) p21Var.a.d.a(fs2Var)).doubleValue());
            oc5Var.setMode(i);
            oc5Var.setDuration(((Number) p21Var.a.a.a(fs2Var)).longValue());
            oc5Var.setStartDelay(((Number) p21Var.a.f.a(fs2Var)).longValue());
            oc5Var.setInterpolator(jf2.a((o11) p21Var.a.b.a(fs2Var)));
            return oc5Var;
        }
        if (!(s21Var instanceof r21)) {
            defpackage.me0.e();
            return null;
        }
        r21 r21Var = (r21) s21Var;
        ac1 ac1Var = r21Var.a.a;
        int iA = ac1Var != null ? pq.a(ac1Var, this.a.getResources().getDisplayMetrics(), fs2Var) : -1;
        int iOrdinal = ((o12) r21Var.a.c.a(fs2Var)).ordinal();
        int i2 = 3;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                i2 = 48;
            } else if (iOrdinal == 2) {
                i2 = 5;
            } else {
                if (iOrdinal != 3) {
                    defpackage.me0.e();
                    return null;
                }
                i2 = 80;
            }
        }
        qm5 qm5Var = new qm5(iA, i2);
        qm5Var.setMode(i);
        qm5Var.setDuration(((Number) r21Var.a.b.a(fs2Var)).longValue());
        qm5Var.setStartDelay(((Number) r21Var.a.e.a(fs2Var)).longValue());
        qm5Var.setInterpolator(jf2.a((o11) r21Var.a.d.a(fs2Var)));
        return qm5Var;
    }

    public final TransitionSet a(zo7 zo7Var, zo7 zo7Var2, fs2 fs2Var, fs2 fs2Var2) {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        if (zo7Var != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = zo7Var.iterator();
            while (it.hasNext()) {
                cn1 cn1Var = (cn1) it.next();
                String strA = cn1Var.a.a().a();
                s21 s21VarA = cn1Var.a.a().A();
                if (strA != null && s21VarA != null) {
                    Transition transitionA = a(s21VarA, 2, fs2Var);
                    transitionA.addTarget(this.b.a(strA));
                    arrayList.add(transitionA);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                transitionSet.addTransition((Transition) it2.next());
            }
        }
        if (zo7Var != null && zo7Var2 != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it3 = zo7Var.iterator();
            while (it3.hasNext()) {
                cn1 cn1Var2 = (cn1) it3.next();
                String strA2 = cn1Var2.a.a().a();
                j61 j61VarB = cn1Var2.a.a().B();
                if (strA2 != null && j61VarB != null) {
                    Transition transitionA2 = a(j61VarB, fs2Var);
                    transitionA2.addTarget(this.b.a(strA2));
                    arrayList2.add(transitionA2);
                }
            }
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                transitionSet.addTransition((Transition) it4.next());
            }
        }
        if (zo7Var2 != null) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it5 = zo7Var2.iterator();
            while (it5.hasNext()) {
                cn1 cn1Var3 = (cn1) it5.next();
                String strA3 = cn1Var3.a.a().a();
                s21 s21VarR = cn1Var3.a.a().r();
                if (strA3 != null && s21VarR != null) {
                    Transition transitionA3 = a(s21VarR, 1, fs2Var2);
                    transitionA3.addTarget(this.b.a(strA3));
                    arrayList3.add(transitionA3);
                }
            }
            Iterator it6 = arrayList3.iterator();
            while (it6.hasNext()) {
                transitionSet.addTransition((Transition) it6.next());
            }
        }
        return transitionSet;
    }

    public static Transition a(j61 j61Var, fs2 fs2Var) {
        if (j61Var instanceof i61) {
            TransitionSet transitionSet = new TransitionSet();
            Iterator it = ((i61) j61Var).a.a.iterator();
            while (it.hasNext()) {
                transitionSet.addTransition(a((j61) it.next(), fs2Var));
            }
            return transitionSet;
        }
        if (j61Var instanceof h61) {
            ChangeBounds changeBounds = new ChangeBounds();
            h61 h61Var = (h61) j61Var;
            changeBounds.setDuration(((Number) h61Var.a.a.a(fs2Var)).longValue());
            changeBounds.setStartDelay(((Number) h61Var.a.c.a(fs2Var)).longValue());
            changeBounds.setInterpolator(jf2.a((o11) h61Var.a.b.a(fs2Var)));
            return changeBounds;
        }
        defpackage.me0.e();
        return null;
    }
}
