package yads;

import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import defpackage.j59;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public final class rg2 extends oh2 {
    public final g36 b;
    public final nh2 c;
    public final ExecutorService d;

    public rg2(v41 v41Var, g36 g36Var, nh2 nh2Var, ExecutorService executorService) {
        super(v41Var);
        this.b = g36Var;
        this.c = nh2Var;
        this.d = executorService;
    }

    public final void a(mh2 mh2Var, tt ttVar, ng2 ng2Var, ng2 ng2Var2) {
        i05 i05Var;
        mv1 lv1Var;
        b31 b31Var;
        fs2 fs2Var = ttVar.b;
        List<ah2> list = ng2Var.Q;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        for (ah2 ah2Var : list) {
            Uri uri = (Uri) ah2Var.d.a(fs2Var);
            String str = (String) ah2Var.b.a(fs2Var);
            zg2 zg2Var = ah2Var.c;
            wg2 wg2Var = zg2Var != null ? new wg2((int) ((Number) zg2Var.b.a(fs2Var)).longValue(), (int) ((Number) zg2Var.a.a(fs2Var)).longValue()) : null;
            as2 as2Var = ah2Var.a;
            arrayList.add(new bh2(uri, str, wg2Var, as2Var != null ? (Long) as2Var.a(fs2Var) : null));
        }
        ((Boolean) ng2Var.g.a(fs2Var)).getClass();
        ((Boolean) ng2Var.w.a(fs2Var)).getClass();
        ((Boolean) ng2Var.C.a(fs2Var)).getClass();
        mv1 mv1VarJ = mh2Var.j();
        int childCount = mh2Var.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                i05Var = null;
                break;
            }
            View childAt = mh2Var.getChildAt(i);
            if (childAt instanceof i05) {
                i05Var = (i05) childAt;
                break;
            }
            i++;
        }
        if (mv1VarJ == null) {
            lv1Var = new lv1(mh2Var.getContext());
            lv1Var.setVisibility(4);
        } else {
            lv1Var = mv1VarJ;
        }
        i05 i05Var2 = i05Var == null ? new i05(mh2Var.getContext()) : i05Var;
        defpackage.at0 at0Var = new defpackage.at0(2, lv1Var, i05Var2);
        as2 as2Var2 = ng2Var.B;
        String str2 = as2Var2 != null ? (String) as2Var2.a(fs2Var) : null;
        if (str2 == null) {
            b31Var = null;
            at0Var.invoke(null);
        } else {
            b31Var = null;
            this.d.submit(new hi0(str2, false, at0Var));
        }
        kv1 kv1Var = new kv1();
        String str3 = ng2Var.m;
        if (str3 != null) {
            mh2Var.l.a(this.b.a(ttVar, str3, new qg2(kv1Var)));
        }
        a(mh2Var, ng2Var, fs2Var, kv1Var);
        a(mh2Var, ng2Var, fs2Var, lv1Var, i05Var2);
        if (i05Var == null && mv1VarJ == null) {
            mh2Var.removeAllViews();
            mh2Var.addView(lv1Var);
            mh2Var.addView(i05Var2);
        }
        this.c.a.put(mh2Var, ng2Var);
        tq.a(mh2Var, ng2Var.f, ng2Var2 != null ? ng2Var2.f : b31Var, fs2Var);
    }

    @Override // yads.oh2
    public final /* bridge */ /* synthetic */ void a(View view, tt ttVar, p41 p41Var, p41 p41Var2, n32 n32Var) {
        a((mh2) view, ttVar, (ng2) p41Var, (ng2) p41Var2);
    }

    public static final j59 a(mv1 mv1Var, i05 i05Var, hd3 hd3Var) {
        if (hd3Var != null) {
            i05Var.setVisibility(0);
            if (hd3Var instanceof gd3) {
                i05Var.setImageBitmap(((gd3) hd3Var).a);
            }
        }
        mv1Var.setVisibility(0);
        return j59.a;
    }

    public static void a(mh2 mh2Var, ng2 ng2Var, fs2 fs2Var, kv1 kv1Var) {
        mh2Var.l.a(ng2Var.w.b(fs2Var, new defpackage.rh0(kv1Var, 7)));
    }

    public static final j59 a(kv1 kv1Var, boolean z) {
        kv1Var.getClass();
        return j59.a;
    }

    public static void a(mh2 mh2Var, ng2 ng2Var, fs2 fs2Var, mv1 mv1Var, i05 i05Var) {
        mh2Var.l.a(ng2Var.G.b(fs2Var, new defpackage.sh0(2, mv1Var, i05Var)));
    }

    public static final j59 a(mv1 mv1Var, i05 i05Var, yg2 yg2Var) {
        ImageView.ScaleType scaleType;
        mv1Var.setScale(yg2Var);
        i05Var.getClass();
        int iOrdinal = yg2Var.ordinal();
        if (iOrdinal == 0) {
            scaleType = i05.c;
        } else if (iOrdinal == 1) {
            scaleType = i05.a;
        } else {
            if (iOrdinal != 2) {
                defpackage.me0.e();
                return null;
            }
            scaleType = i05.b;
        }
        i05Var.setScaleType(scaleType);
        return j59.a;
    }
}
