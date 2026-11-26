package yads;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.bs9;
import defpackage.j48;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r07;
import defpackage.ws6;
import java.util.ArrayList;
import org.json.JSONException;
import yads.cs1;

/* JADX INFO: loaded from: classes6.dex */
public final class cs1 extends oh2 {
    public final v41 b;
    public final qh2 c;
    public final ws6 d;
    public final rt1 e;
    public final bt0 f;
    public final es4 g;
    public final s0 h;

    public cs1(v41 v41Var, qh2 qh2Var, ws6 ws6Var, rt1 rt1Var, bt0 bt0Var, es4 es4Var, s0 s0Var) {
        super(v41Var);
        this.b = v41Var;
        this.c = qh2Var;
        this.d = ws6Var;
        this.e = rt1Var;
        this.f = bt0Var;
        this.g = es4Var;
        this.h = s0Var;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:71:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:74:0x01fe  */
    public final void a(final et1 et1Var, tt ttVar, final ur1 ur1Var, n32 n32Var) throws JSONException {
        dt1 dt1Var;
        RecyclerView recyclerViewH;
        long jLongValue;
        long j;
        int i;
        int iIntValue;
        as2 as2Var;
        as2 as2Var2;
        as2 as2Var3;
        as2 as2Var4;
        RecyclerView recyclerViewH2 = et1Var.h();
        if (recyclerViewH2 == null) {
            return;
        }
        vq0 vq0VarA = ttVar.a();
        final fs2 fs2VarB = ttVar.b();
        final SparseArray sparseArray = new SparseArray();
        s0 s0Var = this.h;
        Context context = et1Var.getContext();
        s0Var.getClass();
        boolean zA = s0.a(context);
        et1Var.setRecycledViewPool(new x55(vq0VarA.u()));
        final wr1 wr1Var = new wr1(f71.a(ur1Var.t, ur1Var.r, fs2VarB), ttVar, (w41) this.d.get(), sparseArray, this.c, n32Var, et1Var);
        et1Var.j().setAdapter(wr1Var);
        a(et1Var, ur1Var, fs2VarB);
        ct1 ct1Var = et1Var.h;
        if (ct1Var != null) {
            ((defpackage.id) ct1Var).a();
        }
        vq0VarA.p().getClass();
        et1Var.setClipToPage$mobileads_externalRelease(true);
        et1Var.setOrientation(1 ^ (ur1Var.x.a(fs2VarB) == tr1.HORIZONTAL ? 1 : 0));
        wr1Var.q = (rr1) ur1Var.i.a(fs2VarB);
        nl3 nl3Var = new nl3() { // from class: zr9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return cs1.a(this.b, et1Var, ur1Var, fs2VarB, sparseArray, wr1Var, obj);
            }
        };
        yc1 yc1VarY = ur1Var.y();
        et1Var.a((yc1VarY == null || (as2Var4 = yc1VarY.c) == null) ? null : as2Var4.a(fs2VarB, nl3Var));
        yc1 yc1VarY2 = ur1Var.y();
        et1Var.a((yc1VarY2 == null || (as2Var3 = yc1VarY2.d) == null) ? null : as2Var3.a(fs2VarB, nl3Var));
        yc1 yc1VarY3 = ur1Var.y();
        et1Var.a((yc1VarY3 == null || (as2Var2 = yc1VarY3.f) == null) ? null : as2Var2.a(fs2VarB, nl3Var));
        yc1 yc1VarY4 = ur1Var.y();
        et1Var.a((yc1VarY4 == null || (as2Var = yc1VarY4.a) == null) ? null : as2Var.a(fs2VarB, nl3Var));
        et1Var.a(ur1Var.s.b.a(fs2VarB, nl3Var));
        et1Var.a(ur1Var.s.a.a(fs2VarB, nl3Var));
        et1Var.a(ur1Var.D.a(fs2VarB, nl3Var));
        et1Var.a(ur1Var.i.a(fs2VarB, nl3Var));
        et1Var.a(ur1Var.x.a(fs2VarB, nl3Var));
        et1Var.a(new bs1(et1Var.j(), nl3Var, ur1Var));
        ls1 ls1Var = ur1Var.u;
        if (ls1Var instanceof is1) {
            is1 is1Var = (is1) ls1Var;
            et1Var.a(is1Var.b().a.b.a(fs2VarB, nl3Var));
            et1Var.a(is1Var.b().a.a.a(fs2VarB, nl3Var));
        } else if (ls1Var instanceof ks1) {
            et1Var.a(((ks1) ls1Var).a.a.a.a(fs2VarB, nl3Var));
        }
        et1Var.setPagerSelectedActionsDispatcher$mobileads_externalRelease(new is4(vq0VarA, wr1Var.g(), this.f));
        et1Var.setChangePageCallbackForLogger$mobileads_externalRelease(new vs1(ur1Var, wr1Var.g(), ttVar, recyclerViewH2, et1Var));
        bi2 bi2VarN = vq0VarA.n();
        if (bi2VarN != null) {
            String strA = ur1Var.a();
            if (strA == null) {
                strA = String.valueOf(ur1Var.hashCode());
            }
            ai2 ai2VarA = bi2VarN.a(strA);
            ks4 ks4Var = ai2VarA instanceof ks4 ? (ks4) ai2VarA : null;
            et1Var.setChangePageCallbackForState$mobileads_externalRelease(new l46(strA, bi2VarN));
            if (ks4Var != null) {
                int i2 = ks4Var.a;
                Integer numValueOf = i2 < wr1Var.g().size() - (wr1Var.r ? 2 : 0) ? Integer.valueOf(i2) : null;
                if (numValueOf != null) {
                    iIntValue = numValueOf.intValue();
                } else {
                    jLongValue = ((Number) ur1Var.j.a(fs2VarB)).longValue();
                    j = jLongValue >> 31;
                    if (j != 0 || j == -1) {
                        i = (int) jLongValue;
                    } else {
                        i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                    }
                    iIntValue = i + (wr1Var.r ? 2 : 0);
                }
            } else {
                jLongValue = ((Number) ur1Var.j.a(fs2VarB)).longValue();
                j = jLongValue >> 31;
                if (j != 0) {
                    i = (int) jLongValue;
                } else {
                    i = (int) jLongValue;
                }
                iIntValue = i + (wr1Var.r ? 2 : 0);
            }
            et1Var.setCurrentItem$mobileads_externalRelease(iIntValue);
        }
        et1Var.a(ur1Var.A.b(fs2VarB, new j48(et1Var, 2)));
        a(et1Var, ttVar, ur1Var);
        if (!zA || (dt1Var = (dt1) et1Var.j.getValue()) == null || (recyclerViewH = et1Var.h()) == null) {
            return;
        }
        recyclerViewH.setAccessibilityDelegateCompat(dt1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.recyclerview.widget.RecyclerView$OnScrollListener] */
    /* JADX WARN: Type inference failed for: r7v4, types: [T, yads.zr1] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    public static final j59 a(et1 et1Var, r07 r07Var, cs1 cs1Var, RecyclerView recyclerView, boolean z) {
        ?? r7;
        RecyclerView.Adapter adapter = et1Var.a.getAdapter();
        wr1 wr1Var = adapter instanceof wr1 ? (wr1) adapter : null;
        if (wr1Var != null && wr1Var.r != z) {
            wr1Var.r = z;
            wr1Var.notifyItemRangeChanged(0, wr1Var.o.size());
            et1 et1Var2 = wr1Var.n;
            et1Var2.setCurrentItem$mobileads_externalRelease(et1Var2.a.getCurrentItem() + (z ? 2 : -2));
        }
        if (z) {
            RecyclerView.OnScrollListener onScrollListener = (RecyclerView.OnScrollListener) r07Var.b;
            if (onScrollListener == null) {
                r7 = onScrollListener;
                cs1Var.getClass();
                ?? zr1Var = new zr1(et1Var);
                r07Var.b = zr1Var;
                r7 = zr1Var;
            }
            r7 = onScrollListener;
            recyclerView.addOnScrollListener(r7);
        } else {
            RecyclerView.OnScrollListener onScrollListener2 = (RecyclerView.OnScrollListener) r07Var.b;
            if (onScrollListener2 != null) {
                recyclerView.removeOnScrollListener(onScrollListener2);
            }
        }
        return j59.a;
    }

    public static final j59 a(et1 et1Var, j71 j71Var, tt ttVar, Object obj) throws Exception {
        wr1 wr1Var = (wr1) et1Var.a.getAdapter();
        if (wr1Var != null) {
            ArrayList arrayListA = f71.a(j71Var, ttVar.b);
            int size = wr1Var.a.size();
            wr1Var.s = 0;
            int currentItem = wr1Var.n.a.getCurrentItem();
            c71 c71Var = new c71(wr1Var.a, arrayListA);
            DiffUtil.calculateDiff(c71Var).dispatchUpdatesTo(new d71(wr1Var, arrayListA));
            wr1Var.h = du1.b(wr1Var.a);
            wr1Var.e();
            if (wr1Var.s == size) {
                wr1Var.n.setCurrentItem$mobileads_externalRelease(currentItem);
            }
            ct1 ct1Var = et1Var.h;
            if (ct1Var != null) {
                ((defpackage.id) ct1Var).a();
            }
            RecyclerView recyclerViewH = et1Var.h();
            if (recyclerViewH != null) {
                recyclerViewH.scrollToPosition(wr1Var.e(et1Var.a.getCurrentItem()));
            }
            et1Var.a.addOnLayoutChangeListener(new xr1(et1Var));
        }
        return j59.a;
    }

    public final void a(tt ttVar, et1 et1Var, cq0 cq0Var, n32 n32Var) throws JSONException {
        this.g.a.put(cq0Var.a, et1Var);
        cq0 cq0Var2 = (cq0) et1Var.b.c;
        if (cq0Var == cq0Var2) {
            ViewPager2 viewPager2 = et1Var.a;
            RecyclerView.Adapter adapter = viewPager2.getAdapter();
            if ((adapter instanceof wr1 ? (wr1) adapter : null) == null) {
                return;
            }
            et1Var.h();
            if (this.e.a.get(ttVar.a.O) == null) {
                tq.a((w41) this.d.get(), ttVar, et1Var);
                viewPager2.addOnLayoutChangeListener(new yr1(viewPager2));
                return;
            }
            throw new ClassCastException();
        }
        if (cq0Var2 != null) {
            et1Var.setChangePageCallbackForOffScreenPages$mobileads_externalRelease(null);
            ViewPager2 viewPager3 = et1Var.a;
            int itemDecorationCount = viewPager3.getItemDecorationCount();
            for (int i = 0; i < itemDecorationCount; i++) {
                viewPager3.removeItemDecorationAt(i);
            }
            et1Var.setPageTransformer$mobileads_externalRelease(null);
        }
        this.b.a(ttVar, et1Var, cq0Var, cq0Var2);
        a(et1Var, ttVar, cq0Var.a, n32Var);
    }

    public final void a(et1 et1Var, ur1 ur1Var, fs2 fs2Var) {
        View childAt = et1Var.a.getChildAt(0);
        childAt.getClass();
        ur1Var.q.b(fs2Var, new bs9(et1Var, new r07(), this, (RecyclerView) childAt, 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(cs1 cs1Var, et1 et1Var, ur1 ur1Var, fs2 fs2Var, SparseArray sparseArray, wr1 wr1Var, Object obj) {
        int height;
        ts1 ts1Var;
        int i;
        ys1 fl6Var;
        boolean z;
        rr1 rr1Var;
        ys1 ys1Var;
        int i2;
        et1 et1Var2;
        RecyclerView.ItemDecoration cl6Var;
        cs1Var.getClass();
        RecyclerView recyclerViewH = et1Var.h();
        if (recyclerViewH != null) {
            boolean z2 = ur1Var.x.a(fs2Var) == tr1.HORIZONTAL ? 1 : 0;
            et1Var.setOrientation(!z2);
            wr1Var.q = (rr1) ur1Var.i.a(fs2Var);
            if (oh6.a(et1Var)) {
                DisplayMetrics displayMetrics = et1Var.getResources().getDisplayMetrics();
                ViewPager2 viewPager2 = et1Var.a;
                if (z2 != 0) {
                    height = viewPager2.getWidth();
                } else {
                    height = viewPager2.getHeight();
                }
                int i3 = height;
                float fB = pq.b(ur1Var.s, displayMetrics, fs2Var);
                boolean zBooleanValue = ((Boolean) ur1Var.q.a(fs2Var)).booleanValue();
                rr1 rr1Var2 = (rr1) ur1Var.D.a(fs2Var);
                ts1 ts1Var2 = new ts1(ur1Var.y, fs2Var, et1Var, displayMetrics, z2, rr1Var2);
                boolean z3 = z2;
                ls1 ls1Var = ur1Var.u;
                if (ls1Var instanceof ks1) {
                    vt4 vt4Var = new vt4(((ks1) ls1Var).a, fs2Var, i3, ts1Var2, rr1Var2);
                    ts1Var = ts1Var2;
                    rr1Var = rr1Var2;
                    z = z3 ? 1 : 0;
                    ys1Var = vt4Var;
                    i = i3;
                } else {
                    ts1Var = ts1Var2;
                    i = i3;
                    if (ls1Var instanceof is1) {
                        fl6Var = new zm4(((is1) ls1Var).a, fs2Var, displayMetrics, i, fB, ts1Var, rr1Var2);
                        rr1Var = rr1Var2;
                        z = z3 ? 1 : 0;
                    } else if (ls1Var instanceof js1) {
                        fl6Var = new fl6(recyclerViewH, z3, i, ts1Var, rr1Var2);
                        z = z3 ? 1 : 0;
                        rr1Var = rr1Var2;
                        i = i;
                    } else {
                        defpackage.me0.e();
                        return null;
                    }
                    ys1Var = fl6Var;
                }
                if (ys1Var instanceof sx2) {
                    int i4 = i;
                    sx2 sx2Var = (sx2) ys1Var;
                    new rx2(et1Var, i4, fB, sx2Var, ts1Var, zBooleanValue, wr1Var);
                    i2 = i4;
                    cl6Var = new px2(ts1Var, sx2Var);
                    et1Var2 = et1Var;
                } else {
                    i2 = i;
                    new el6(et1Var, fB, ys1Var, ts1Var, wr1Var);
                    et1Var2 = et1Var;
                    cl6Var = new cl6(i2, ts1Var, rr1Var);
                }
                ViewPager2 viewPager3 = et1Var2.a;
                int itemDecorationCount = viewPager3.getItemDecorationCount();
                for (int i5 = 0; i5 < itemDecorationCount; i5++) {
                    viewPager3.removeItemDecorationAt(i5);
                }
                viewPager3.addItemDecoration(cl6Var);
                rr1 rr1Var3 = rr1Var;
                int i6 = i2;
                et1Var.setPageTransformer$mobileads_externalRelease(new zs1(recyclerViewH, fs2Var, sparseArray, i6, ur1Var.z, new xs1(i6, fB, ys1Var, ts1Var, zBooleanValue, wr1Var, rr1Var3), z));
            }
        }
        return j59.a;
    }

    public static final j59 a(et1 et1Var, boolean z) {
        et1Var.setOnInterceptTouchEventListener(z ? ms4.a : null);
        return j59.a;
    }

    public static void a(final et1 et1Var, final tt ttVar, ur1 ur1Var) throws JSONException {
        final j71 j71Var = ur1Var.r;
        if (j71Var == null) {
            return;
        }
        pq.a(j71Var, ttVar.b, new nl3() { // from class: as9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return cs1.a(et1Var, j71Var, ttVar, obj);
            }
        });
    }
}
