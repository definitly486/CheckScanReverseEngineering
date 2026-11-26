package yads;

import android.view.MotionEvent;
import android.view.View;
import defpackage.j59;
import defpackage.nl3;
import defpackage.u96;
import defpackage.xs9;
import java.util.ArrayList;
import java.util.List;
import yads.wy1;

/* JADX INFO: loaded from: classes6.dex */
public final class wy1 extends oh2 {
    public final ef2 b;
    public final h36 c;
    public final bo2 d;

    public wy1(v41 v41Var, ef2 ef2Var, h36 h36Var, bo2 bo2Var) {
        super(v41Var);
        this.b = ef2Var;
        this.c = h36Var;
        this.d = bo2Var;
    }

    public static void b(gz1 gz1Var, uy1 uy1Var, fs2 fs2Var) {
        gz1Var.q.a(uy1Var.t.b(fs2Var, new defpackage.fg1(gz1Var, 3)));
    }

    public static void c(gz1 gz1Var, uy1 uy1Var, fs2 fs2Var) {
        as2 as2Var = uy1Var.u;
        if (as2Var == null) {
            return;
        }
        gz1Var.q.a(as2Var.b(fs2Var, new defpackage.si2(gz1Var, 3)));
    }

    @Override // yads.oh2
    public final void a(View view, tt ttVar, p41 p41Var, p41 p41Var2, n32 n32Var) {
        gz1 gz1Var = (gz1) view;
        uy1 uy1Var = (uy1) p41Var;
        uy1 uy1Var2 = (uy1) p41Var2;
        vq0 vq0Var = ttVar.a;
        fs2 fs2Var = ttVar.b;
        gz1Var.setTextAlignment(5);
        gz1Var.setFocusTracker(vq0Var.K);
        a(gz1Var, uy1Var, ttVar);
        fs2 fs2Var2 = ttVar.b;
        bo2 bo2Var = this.d;
        vq0 vq0Var2 = ttVar.a;
        gz1Var.q.a(this.c.a(ttVar, uy1Var.M, new vy1(uy1Var, gz1Var, bo2Var.a(vq0Var2.Q, vq0Var2.O), fs2Var2)));
        as2 as2Var = uy1Var.m;
        as2 as2Var2 = uy1Var.n;
        as2 as2Var3 = uy1Var.x;
        as2 as2Var4 = uy1Var.F;
        as2 as2Var5 = uy1Var.y;
        as2 as2Var6 = uy1Var.l;
        as2 as2Var7 = uy1Var.p;
        as2 as2Var8 = uy1Var.q;
        as2 as2Var9 = uy1Var.o;
        as2 as2Var10 = uy1Var2 != null ? uy1Var2.m : null;
        as2 as2Var11 = uy1Var2 != null ? uy1Var2.n : null;
        as2 as2Var12 = uy1Var2 != null ? uy1Var2.x : null;
        as2 as2Var13 = uy1Var2 != null ? uy1Var2.F : null;
        as2 as2Var14 = uy1Var2 != null ? uy1Var2.y : null;
        as2 as2Var15 = uy1Var2 != null ? uy1Var2.l : null;
        as2 as2Var16 = uy1Var2 != null ? uy1Var2.p : null;
        as2 as2Var17 = uy1Var2 != null ? uy1Var2.q : null;
        as2 as2Var18 = uy1Var2 != null ? uy1Var2.o : null;
        ef2 ef2Var = this.b;
        gz1 gz1Var2 = gz1Var;
        as2 as2Var19 = as2Var10;
        as2 as2Var20 = as2Var18;
        as2 as2Var21 = as2Var17;
        as2 as2Var22 = as2Var15;
        as2 as2Var23 = as2Var16;
        kw5.a(gz1Var2, as2Var, as2Var2, as2Var19, as2Var11, fs2Var, gz1Var2);
        kw5.b(gz1Var2, as2Var3, as2Var, as2Var12, as2Var19, fs2Var, gz1Var2);
        kw5.a(gz1Var2, as2Var4, as2Var13, fs2Var);
        kw5.c(gz1Var2, as2Var5, as2Var2, as2Var14, as2Var11, fs2Var, gz1Var2);
        if (uy1Var2 == null || !ls2.a(as2Var6, as2Var22) || !ls2.a(as2Var7, as2Var23) || !ls2.a(as2Var8, as2Var21) || (kw5.a() && !ls2.a(as2Var9, as2Var20))) {
            kw5.a(gz1Var2, as2Var6, as2Var7, as2Var8, ef2Var, fs2Var);
            gz1Var2 = gz1Var2;
            kw5.a(gz1Var2, as2Var6, as2Var7, as2Var8, as2Var9, ef2Var, fs2Var);
            fs2Var = fs2Var;
            kw5.a(gz1Var2, as2Var7, as2Var8, as2Var9, fs2Var);
        }
        c(gz1Var2, uy1Var, fs2Var);
        b(gz1Var2, uy1Var, fs2Var);
    }

    public static void a(gz1 gz1Var, uy1 uy1Var, tt ttVar) {
        final defpackage.bm3 bm3VarA = tq.a(gz1Var, ttVar, v56.a, (dh1) null);
        gz1Var.setOnTouchListener(bm3VarA != null ? new View.OnTouchListener() { // from class: zga
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return wy1.a(bm3VarA, view, motionEvent);
            }
        } : null);
        ArrayList arrayListA = a(gz1Var, uy1Var, ttVar.b);
        gz1Var.setItems(arrayListA);
        gz1Var.setOnItemSelectedListener(new xs9(gz1Var, arrayListA, uy1Var, ttVar, 2));
    }

    public static final boolean a(defpackage.bm3 bm3Var, View view, MotionEvent motionEvent) {
        return ((Boolean) bm3Var.invoke(view, motionEvent)).booleanValue();
    }

    public static final j59 a(gz1 gz1Var, List list, uy1 uy1Var, tt ttVar, int i) {
        gz1Var.setText((CharSequence) list.get(i));
        nl3 nl3Var = gz1Var.r;
        if (nl3Var != null) {
            nl3Var.invoke(((ty1) uy1Var.A.get(i)).b.a(ttVar.b));
        }
        return j59.a;
    }

    public static ArrayList a(final gz1 gz1Var, uy1 uy1Var, fs2 fs2Var) {
        final ArrayList arrayList = new ArrayList();
        final int i = 0;
        for (Object obj : uy1Var.A) {
            int i2 = i + 1;
            if (i >= 0) {
                ty1 ty1Var = (ty1) obj;
                as2 as2Var = ty1Var.a;
                if (as2Var == null) {
                    as2Var = ty1Var.b;
                }
                arrayList.add(as2Var.a(fs2Var));
                as2Var.a(fs2Var, new nl3() { // from class: aha
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return wy1.a(arrayList, i, gz1Var, (String) obj2);
                    }
                });
                i = i2;
            } else {
                u96.o();
                throw null;
            }
        }
        return arrayList;
    }

    public static final j59 a(List list, int i, gz1 gz1Var, String str) {
        list.set(i, str);
        gz1Var.setItems(list);
        return j59.a;
    }

    public static final j59 a(gz1 gz1Var, String str) {
        gz1Var.setHint(str);
        return j59.a;
    }

    public static final j59 a(gz1 gz1Var, int i) {
        gz1Var.setHintTextColor(i);
        return j59.a;
    }
}
