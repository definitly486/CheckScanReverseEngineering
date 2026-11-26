package yads;

import android.util.DisplayMetrics;
import androidx.recyclerview.widget.AdsDivLinearLayoutManager;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.monetization.ads.core.divkit.AdsDivGridLayoutManager;
import defpackage.bs9;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ws6;
import java.util.ArrayList;
import org.json.JSONException;
import yads.rg1;

/* JADX INFO: loaded from: classes6.dex */
public final class rg1 extends oh2 {
    public final v41 b;
    public final qh2 c;
    public final ws6 d;
    public final rt1 e;

    public rg1(v41 v41Var, qh2 qh2Var, ws6 ws6Var, rt1 rt1Var) {
        super(v41Var);
        this.b = v41Var;
        this.c = qh2Var;
        this.d = ws6Var;
        this.e = rt1Var;
    }

    public final void a(cy1 cy1Var, tt ttVar, og1 og1Var, n32 n32Var) {
        fs2 fs2Var = ttVar.b;
        bs9 bs9Var = new bs9(this, cy1Var, ttVar, og1Var, 1);
        cy1Var.b.a(og1Var.x.a(fs2Var, bs9Var));
        cy1Var.b.a(og1Var.D.a(fs2Var, bs9Var));
        cy1Var.b.a(og1Var.C.a(fs2Var, bs9Var));
        cy1Var.b.a(og1Var.t.a(fs2Var, bs9Var));
        cy1Var.b.a(og1Var.z.a(fs2Var, bs9Var));
        as2 as2Var = og1Var.h;
        if (as2Var != null) {
            cy1Var.b.a(as2Var.a(fs2Var, bs9Var));
        }
        cy1Var.setRecycledViewPool(new x55(ttVar.a.u()));
        cy1Var.setScrollingTouchSlop(1);
        cy1Var.setClipToPadding(false);
        cy1Var.setOverScrollMode(2);
        cy1Var.setAdapter(new pg1(f71.a(og1Var.u, og1Var.s, fs2Var), ttVar, (w41) this.d.get(), this.c, n32Var));
        a(cy1Var, ttVar, og1Var);
        RecyclerView.ItemAnimator itemAnimator = cy1Var.getItemAnimator();
        cy1Var.setItemAnimator(null);
        if (!oh6.a(cy1Var) || cy1Var.isLayoutRequested()) {
            cy1Var.addOnLayoutChangeListener(new qg1(cy1Var, itemAnimator));
        } else if (cy1Var.getItemAnimator() == null) {
            cy1Var.setItemAnimator(itemAnimator);
        }
        b(cy1Var, ttVar, og1Var);
    }

    public final void b(cy1 cy1Var, tt ttVar, og1 og1Var) {
        as4 as4Var;
        int i;
        id5 id5Var;
        js4 js4VarH;
        DisplayMetrics displayMetrics = cy1Var.getResources().getDisplayMetrics();
        fs2 fs2VarB = ttVar.b();
        int paddingStart = 0;
        int i2 = ((jg1) og1Var.x.a(fs2VarB)) == jg1.HORIZONTAL ? 0 : 1;
        boolean z = og1Var.D.a(fs2VarB) == ng1.AUTO;
        cy1Var.setVerticalScrollBarEnabled(z && i2 == 1);
        cy1Var.setHorizontalScrollBarEnabled(z && i2 == 0);
        cy1Var.setScrollbarFadingEnabled(false);
        as2 as2Var = og1Var.h;
        long jLongValue = as2Var != null ? ((Number) as2Var.a(fs2VarB)).longValue() : 1L;
        cy1Var.setClipChildren(false);
        as2 as2Var2 = og1Var.t;
        if (jLongValue == 1) {
            as4Var = new as4(pq.a((Long) as2Var2.a(fs2VarB), displayMetrics), 0, i2, 61);
        } else {
            int iA = pq.a((Long) as2Var2.a(fs2VarB), displayMetrics);
            as2 as2Var3 = og1Var.k;
            if (as2Var3 == null) {
                as2Var3 = og1Var.t;
            }
            as4Var = new as4(iA, pq.a((Long) as2Var3.a(fs2VarB), displayMetrics), i2, 57);
        }
        for (int itemDecorationCount = cy1Var.getItemDecorationCount() - 1; -1 < itemDecorationCount; itemDecorationCount--) {
            cy1Var.removeItemDecorationAt(itemDecorationCount);
        }
        cy1Var.addItemDecoration(as4Var);
        lg1 lg1Var = (lg1) og1Var.C.a(fs2VarB);
        cy1Var.setScrollMode(lg1Var);
        int iOrdinal = lg1Var.ordinal();
        if (iOrdinal == 0) {
            pq.a((Long) og1Var.t.a(fs2VarB), cy1Var.getResources().getDisplayMetrics());
            js4 js4VarH2 = cy1Var.h();
            if (js4VarH2 == null) {
                js4VarH2 = new js4();
                cy1Var.setPagerSnapStartHelper(js4VarH2);
            }
            js4VarH2.attachToRecyclerView(cy1Var);
        } else if (iOrdinal == 1 && (js4VarH = cy1Var.h()) != null) {
            js4VarH.attachToRecyclerView(null);
        }
        tg1 adsDivLinearLayoutManager = jLongValue == 1 ? new AdsDivLinearLayoutManager(ttVar, cy1Var, og1Var, i2) : new AdsDivGridLayoutManager(ttVar, cy1Var, og1Var, i2);
        cy1Var.setLayoutManager(adsDivLinearLayoutManager.f());
        cy1Var.setScrollInterceptionAngle(0.0f);
        cy1Var.clearOnScrollListeners();
        bi2 bi2VarN = ttVar.a().n();
        if (bi2VarN != null) {
            String strA = og1Var.a();
            if (strA == null) {
                strA = String.valueOf(og1Var.hashCode());
            }
            ai2 ai2VarA = bi2VarN.a(strA);
            e23 e23Var = ai2VarA instanceof e23 ? (e23) ai2VarA : null;
            if (e23Var != null) {
                i = e23Var.a;
            } else {
                long jLongValue2 = ((Number) og1Var.l.a(fs2VarB)).longValue();
                long j = jLongValue2 >> 31;
                i = (j == 0 || j == -1) ? (int) jLongValue2 : jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            if (e23Var != null) {
                paddingStart = e23Var.b;
            } else if (i == 0) {
                paddingStart = i2 == 0 ? cy1Var.getPaddingStart() : cy1Var.getPaddingTop();
            }
            int iOrdinal2 = lg1Var.ordinal();
            if (iOrdinal2 == 0) {
                id5Var = id5.CENTER;
            } else {
                if (iOrdinal2 != 1) {
                    defpackage.me0.e();
                    return;
                }
                id5Var = id5.DEFAULT;
            }
            Object layoutManager = cy1Var.getLayoutManager();
            tg1 tg1Var = layoutManager instanceof tg1 ? (tg1) layoutManager : null;
            if (tg1Var != null) {
                if (paddingStart == 0 && i == 0) {
                    tg1Var.a(i, id5Var);
                } else {
                    tg1Var.a(i, paddingStart, id5Var);
                }
            }
            cy1Var.addOnScrollListener(new m46(strA, bi2VarN, adsDivLinearLayoutManager));
        }
        cy1Var.addOnScrollListener(new ah1(ttVar, cy1Var, adsDivLinearLayoutManager, og1Var));
        cy1Var.setOnInterceptTouchEventListener(((Boolean) og1Var.z.a(fs2VarB)).booleanValue() ? ms4.a : null);
    }

    public static final j59 a(rg1 rg1Var, cy1 cy1Var, tt ttVar, og1 og1Var, Object obj) {
        rg1Var.b(cy1Var, ttVar, og1Var);
        return j59.a;
    }

    public static void a(final cy1 cy1Var, final tt ttVar, og1 og1Var) throws JSONException {
        final j71 j71Var = og1Var.s;
        if (j71Var == null) {
            return;
        }
        pq.a(j71Var, ttVar.b, new nl3() { // from class: w7a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return rg1.a(cy1Var, j71Var, ttVar, obj);
            }
        });
    }

    public static final j59 a(cy1 cy1Var, j71 j71Var, tt ttVar, Object obj) throws Exception {
        pg1 pg1Var = (pg1) cy1Var.getAdapter();
        if (pg1Var != null) {
            ArrayList arrayListA = f71.a(j71Var, ttVar.b);
            c71 c71Var = new c71(pg1Var.a, arrayListA);
            DiffUtil.calculateDiff(c71Var).dispatchUpdatesTo(new d71(pg1Var, arrayListA));
            pg1Var.h = du1.b(pg1Var.a);
            pg1Var.e();
        }
        return j59.a;
    }
}
