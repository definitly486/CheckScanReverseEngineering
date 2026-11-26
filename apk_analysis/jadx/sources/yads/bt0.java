package yads;

import android.view.MotionEvent;
import android.view.View;
import defpackage.j59;
import defpackage.ll3;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import yads.bt0;

/* JADX INFO: loaded from: classes6.dex */
public final class bt0 {
    public final lu0 a;
    public final ys0 b;

    public bt0(lu0 lu0Var, ys0 ys0Var) {
        this.a = lu0Var;
        this.b = ys0Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final j59 a(List list, fs2 fs2Var, String str, bt0 bt0Var, vq0 vq0Var, View view) {
        String string = UUID.randomUUID().toString();
        for (xr0 xr0Var : ct0.a(list, fs2Var)) {
            switch (str.hashCode()) {
                case -338877947:
                    if (str.equals("long_click")) {
                        bt0Var.getClass();
                    }
                    break;
                case -287575485:
                    if (str.equals("unhover")) {
                        bt0Var.getClass();
                    }
                    break;
                case 3027047:
                    if (str.equals("blur")) {
                        bt0Var.getClass();
                    }
                    break;
                case 94750088:
                    if (str.equals("click")) {
                        bt0Var.getClass();
                    }
                    break;
                case 96667352:
                    if (str.equals("enter")) {
                        bt0Var.getClass();
                    }
                    break;
                case 97604824:
                    if (str.equals("focus")) {
                        bt0Var.getClass();
                    }
                    break;
                case 99469628:
                    if (str.equals("hover")) {
                        bt0Var.getClass();
                    }
                    break;
                case 106931267:
                    if (str.equals("press")) {
                        bt0Var.getClass();
                    }
                    break;
                case 1090594823:
                    if (str.equals("release")) {
                        bt0Var.getClass();
                    }
                    break;
                case 1374143386:
                    if (str.equals("double_click")) {
                        bt0Var.getClass();
                    }
                    break;
            }
            bt0Var.b.getClass();
            ys0.a(xr0Var, fs2Var);
            switch (str.hashCode()) {
                case -338877947:
                    str.equals("long_click");
                    break;
                case -287575485:
                    str.equals("unhover");
                    break;
                case 3027047:
                    str.equals("blur");
                    break;
                case 94750088:
                    str.equals("click");
                    break;
                case 96667352:
                    str.equals("enter");
                    break;
                case 97604824:
                    str.equals("focus");
                    break;
                case 99469628:
                    str.equals("hover");
                    break;
                case 106931267:
                    str.equals("press");
                    break;
                case 1090594823:
                    str.equals("release");
                    break;
                case 1374143386:
                    str.equals("double_click");
                    break;
            }
            a(bt0Var, vq0Var, fs2Var, xr0Var, string, 32);
        }
        return j59.a;
    }

    public static final j59 c(ll3 ll3Var, Object obj) {
        ll3Var.invoke();
        return j59.a;
    }

    public static final j59 d(ll3 ll3Var, Object obj) {
        ll3Var.invoke();
        return j59.a;
    }

    public final defpackage.bm3 b(final tt ttVar, final View view, final List list, final List list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            return null;
        }
        return new defpackage.bm3() { // from class: bp9
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(bt0.b(this.b, ttVar, view, list, list2, (View) obj, (MotionEvent) obj2));
            }
        };
    }

    public static final j59 b(ll3 ll3Var, Object obj) {
        ll3Var.invoke();
        return j59.a;
    }

    public static final void b(as2 as2Var, tt ttVar, bt0 bt0Var, View view, List list, View view2) {
        ct0.a(view2, as2Var, ttVar.a.K, ttVar.b);
        bt0Var.a(ttVar, view, list, "click");
    }

    public static final boolean b(bt0 bt0Var, tt ttVar, View view, List list, List list2, View view2, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            bt0Var.a(ttVar, view, list, "press");
            return true;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        bt0Var.a(ttVar, view, list2, "release");
        return true;
    }

    public static final boolean a(as2 as2Var, tt ttVar, bt0 bt0Var, View view, List list, View view2) {
        ct0.a(view2, as2Var, ttVar.a.K, ttVar.b);
        bt0Var.a(ttVar, view, list, "long_click");
        return true;
    }

    public static final void a(as2 as2Var, tt ttVar, View view) {
        sg3 sg3Var = ttVar.a.K;
        if (((Boolean) as2Var.a(ttVar.b)).booleanValue()) {
            pq.a(view, sg3Var);
        }
    }

    public final void a(tt ttVar, final View view, final List list, final String str) {
        final vq0 vq0Var = ttVar.a;
        final fs2 fs2Var = ttVar.b;
        vq0Var.a(new ll3() { // from class: ep9
            @Override // defpackage.ll3
            public final Object invoke() {
                return bt0.a(list, fs2Var, str, this, vq0Var, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final tt ttVar, final View view, final List list, final List list2, final List list3, final List list4, final List list5, final List list6, final List list7, final k11 k11Var, final as2 as2Var) {
        final fs2 fs2Var = ttVar.b;
        ll3 ll3Var = new ll3() { // from class: xo9
            @Override // defpackage.ll3
            public final Object invoke() {
                return bt0.a(list, fs2Var, list3, list2, list4, list5, list6, list7, this, ttVar, view, k11Var, as2Var);
            }
        };
        int i = 5;
        ct0.a(view, list, fs2Var, new defpackage.oh0(ll3Var, i));
        ct0.a(view, list2, fs2Var, new defpackage.av5(ll3Var, 2));
        ct0.a(view, list3, fs2Var, new defpackage.vl4(ll3Var, i));
        defpackage.rh0 rh0Var = new defpackage.rh0(ll3Var, 6);
        if (view instanceof hs2) {
            ((hs2) view).a(as2Var.a(fs2Var, rh0Var));
        }
        ll3Var.invoke();
    }

    public static final void a(dh1 dh1Var, View view, View.OnClickListener onClickListener) {
        if (dh1Var.c != null) {
            dh1Var.b = new defpackage.ul(3, onClickListener, view);
        } else {
            view.setOnClickListener(onClickListener);
        }
    }

    public static final j59 a(List list, fs2 fs2Var, List list2, List list3, List list4, List list5, List list6, List list7, bt0 bt0Var, tt ttVar, View view, k11 k11Var, as2 as2Var) {
        List listA = ct0.a(list, fs2Var);
        List listA2 = ct0.a(list2, fs2Var);
        List listA3 = ct0.a(list3, fs2Var);
        List listA4 = ct0.a(list4, fs2Var);
        List listA5 = ct0.a(list5, fs2Var);
        List listA6 = ct0.a(list6, fs2Var);
        List listA7 = ct0.a(list7, fs2Var);
        bt0Var.getClass();
        dh1 dh1Var = new dh1(!listA3.isEmpty() || ct0.a(view));
        bt0Var.a(ttVar, view, listA3, listA.isEmpty(), as2Var);
        bt0Var.a(ttVar, view, dh1Var, listA2, as2Var);
        bt0Var.a(ttVar, view, dh1Var, listA, as2Var, (listA3.isEmpty() && listA2.isEmpty()) ? false : true);
        defpackage.bm3 bm3VarA = tq.a(view, ttVar, !j20.a(listA, listA3, listA2) ? k11Var : null, dh1Var);
        defpackage.bm3 bm3VarB = bt0Var.b(ttVar, view, listA6, listA7);
        bt0Var.a(ttVar, view, listA4, listA5);
        a(view, bm3VarA, bm3VarB);
        return j59.a;
    }

    public static final j59 a(ll3 ll3Var, Object obj) {
        ll3Var.invoke();
        return j59.a;
    }

    public static final j59 a(View.OnClickListener onClickListener, View view) {
        onClickListener.onClick(view);
        return j59.a;
    }

    public final void a(final tt ttVar, final View view, dh1 dh1Var, final List list, final as2 as2Var, boolean z) {
        Object obj = null;
        if (list.isEmpty()) {
            if (z) {
                a(dh1Var, view, new View.OnClickListener() { // from class: ip9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        bt0.a(as2Var, ttVar, view2);
                    }
                });
                return;
            }
            dh1Var.b = null;
            view.setOnClickListener(null);
            view.setClickable(false);
            return;
        }
        for (Object obj2 : list) {
            List list2 = ((xr0) obj2).e;
            if (list2 != null && !list2.isEmpty()) {
                obj = obj2;
                break;
            }
        }
        final xr0 xr0Var = (xr0) obj;
        if (xr0Var != null) {
            List list3 = xr0Var.e;
            if (list3 == null) {
                return;
            }
            view.getContext();
            ttVar.getClass();
            final nr4 nr4VarB = new nr4(view).a(new zs0(this, ttVar, list3)).b();
            vq0 vq0VarA = ttVar.a();
            vq0VarA.k();
            vq0VarA.a(new at0());
            a(dh1Var, view, new View.OnClickListener() { // from class: yo9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    bt0.a(this.b, ttVar, view, xr0Var, as2Var, nr4VarB, view2);
                }
            });
            return;
        }
        a(dh1Var, view, new View.OnClickListener() { // from class: zo9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                bt0.b(as2Var, ttVar, this, view, list, view2);
            }
        });
    }

    public static final void a(bt0 bt0Var, tt ttVar, View view, xr0 xr0Var, as2 as2Var, nr4 nr4Var, View view2) {
        bt0Var.getClass();
        vq0 vq0Var = ttVar.a;
        ys0 ys0Var = bt0Var.b;
        fs2 fs2Var = ttVar.b;
        ys0Var.getClass();
        ys0.a(xr0Var, fs2Var);
        ct0.a(view2, as2Var, ttVar.a.K, ttVar.b);
        nr4Var.a().onClick(view);
    }

    public final void a(final tt ttVar, final View view, final List list, boolean z, final as2 as2Var) {
        Object obj = null;
        if (list.isEmpty()) {
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            return;
        }
        for (Object obj2 : list) {
            List list2 = ((xr0) obj2).e;
            if (list2 != null && !list2.isEmpty()) {
                obj = obj2;
                break;
            }
        }
        final xr0 xr0Var = (xr0) obj;
        if (xr0Var != null) {
            List list3 = xr0Var.e;
            if (list3 == null) {
                return;
            }
            view.getContext();
            ttVar.getClass();
            final nr4 nr4VarB = new nr4(view).a(new zs0(this, ttVar, list3)).b();
            vq0 vq0VarA = ttVar.a();
            vq0VarA.k();
            vq0VarA.a(new at0());
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: gp9
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    return bt0.a(this.b, xr0Var, ttVar, as2Var, nr4VarB, view, list, view2);
                }
            });
            return;
        }
        view.setOnLongClickListener(new View.OnLongClickListener() { // from class: hp9
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return bt0.a(as2Var, ttVar, this, view, list, view2);
            }
        });
    }

    public static final boolean a(bt0 bt0Var, xr0 xr0Var, tt ttVar, as2 as2Var, nr4 nr4Var, View view, List list, View view2) {
        UUID.randomUUID().toString();
        ys0 ys0Var = bt0Var.b;
        fs2 fs2Var = ttVar.b;
        ys0Var.getClass();
        ys0.a(xr0Var, fs2Var);
        ct0.a(view2, as2Var, ttVar.a.K, ttVar.b);
        nr4Var.a().onClick(view);
        Iterator it = list.iterator();
        while (it.hasNext()) {
        }
        return true;
    }

    public final void a(final tt ttVar, final View view, dh1 dh1Var, final List list, final as2 as2Var) {
        Object obj = null;
        if (list.isEmpty()) {
            dh1Var.a(null);
            return;
        }
        for (Object obj2 : list) {
            List list2 = ((xr0) obj2).e;
            if (list2 != null && !list2.isEmpty()) {
                obj = obj2;
                break;
            }
        }
        final xr0 xr0Var = (xr0) obj;
        if (xr0Var != null) {
            List list3 = xr0Var.e;
            if (list3 == null) {
                return;
            }
            view.getContext();
            ttVar.getClass();
            final nr4 nr4VarB = new nr4(view).a(new zs0(this, ttVar, list3)).b();
            vq0 vq0VarA = ttVar.a();
            vq0VarA.k();
            vq0VarA.a(new at0());
            dh1Var.a(new ll3() { // from class: cp9
                @Override // defpackage.ll3
                public final Object invoke() {
                    return bt0.a(this.b, ttVar, view, xr0Var, as2Var, nr4VarB);
                }
            });
            return;
        }
        dh1Var.a(new ll3() { // from class: dp9
            @Override // defpackage.ll3
            public final Object invoke() {
                return bt0.a(view, as2Var, ttVar, this, list);
            }
        });
    }

    public static final j59 a(bt0 bt0Var, tt ttVar, View view, xr0 xr0Var, as2 as2Var, nr4 nr4Var) {
        bt0Var.getClass();
        vq0 vq0Var = ttVar.a;
        ys0 ys0Var = bt0Var.b;
        fs2 fs2Var = ttVar.b;
        ys0Var.getClass();
        ys0.a(xr0Var, fs2Var);
        ct0.a(view, as2Var, ttVar.a.K, ttVar.b);
        nr4Var.a().onClick(view);
        return j59.a;
    }

    public final void a(final tt ttVar, final View view, final List list, final List list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            view.setOnHoverListener(null);
        } else {
            view.setOnHoverListener(new View.OnHoverListener() { // from class: fp9
                @Override // android.view.View.OnHoverListener
                public final boolean onHover(View view2, MotionEvent motionEvent) {
                    return bt0.a(this.b, ttVar, view, list, list2, view2, motionEvent);
                }
            });
        }
    }

    public static final boolean a(bt0 bt0Var, tt ttVar, View view, List list, List list2, View view2, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 9) {
            bt0Var.a(ttVar, view, list, "hover");
            return false;
        }
        if (action != 10) {
            return false;
        }
        bt0Var.a(ttVar, view, list2, "unhover");
        return false;
    }

    public static void a(View view, defpackage.bm3... bm3VarArr) {
        final ArrayList arrayListG = yr.G(bm3VarArr);
        if (!arrayListG.isEmpty()) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: ap9
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return bt0.a(arrayListG, view2, motionEvent);
                }
            });
        } else {
            view.setOnTouchListener(null);
        }
    }

    public static final j59 a(View view, as2 as2Var, tt ttVar, bt0 bt0Var, List list) {
        ct0.a(view, as2Var, ttVar.a.K, ttVar.b);
        bt0Var.a(ttVar, view, list, "double_click");
        return j59.a;
    }

    public static void a(bt0 bt0Var, vh2 vh2Var, fs2 fs2Var, List list) {
        bt0Var.getClass();
        if (list == null) {
            return;
        }
        Iterator it = ct0.a(list, fs2Var).iterator();
        while (it.hasNext()) {
            a(bt0Var, vh2Var, fs2Var, (xr0) it.next(), (String) null, 48);
        }
    }

    public static void a(bt0 bt0Var, vh2 vh2Var, fs2 fs2Var, xr0 xr0Var, String str, int i) {
        vq0 vq0Var = vh2Var instanceof vq0 ? (vq0) vh2Var : null;
        bt0Var.a(vh2Var, fs2Var, xr0Var, vq0Var != null ? vq0Var.R : null);
    }

    public final boolean a(vh2 vh2Var, fs2 fs2Var, xr0 xr0Var, lu0 lu0Var) {
        this.a.getClass();
        if (lu0Var == null || !lu0Var.a(xr0Var, vh2Var, fs2Var)) {
            return this.a.a(xr0Var, vh2Var, fs2Var);
        }
        return true;
    }

    public final void a(tt ttVar, View view, List list) {
        Object next;
        fs2 fs2VarB = ttVar.b();
        List listA = ct0.a(list, fs2VarB);
        Iterator it = listA.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            List list2 = ((xr0) next).e;
            if (list2 != null && !list2.isEmpty()) {
                break;
            }
        }
        xr0 xr0Var = (xr0) next;
        if (xr0Var != null) {
            List list3 = xr0Var.e;
            if (list3 == null) {
                return;
            }
            view.getContext();
            nr4 nr4VarB = new nr4(view).a(new zs0(this, ttVar, list3)).b();
            vq0 vq0VarA = ttVar.a();
            vq0VarA.k();
            vq0VarA.a(new at0());
            this.b.getClass();
            ys0.a(xr0Var, fs2VarB);
            nr4VarB.a().onClick(view);
            return;
        }
        a(ttVar, view, listA, "click");
    }

    public static final boolean a(List list, View view, MotionEvent motionEvent) {
        Iterator it = list.iterator();
        while (true) {
            boolean z = false;
            while (it.hasNext()) {
                if (((Boolean) ((defpackage.bm3) it.next()).invoke(view, motionEvent)).booleanValue() || z) {
                    z = true;
                }
            }
            return z;
        }
    }
}
