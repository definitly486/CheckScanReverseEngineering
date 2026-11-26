package yads;

import android.R;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.StateSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R$drawable;
import com.yandex.mobile.ads.R$id;
import defpackage.j59;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import yads.e41;

/* JADX INFO: loaded from: classes6.dex */
public final class e41 {
    public final oi1 a;

    public e41(oi1 oi1Var) {
        this.a = oi1Var;
    }

    public static d41 a(m31 m31Var, vq0 vq0Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        ArrayList arrayList;
        List list;
        long j;
        Object o31Var;
        List listA;
        a41 z31Var;
        long j2 = -1;
        if (m31Var instanceof i31) {
            i31 i31Var = (i31) m31Var;
            long jLongValue = ((Number) i31Var.b().a.a(fs2Var)).longValue();
            long j3 = jLongValue >> 31;
            return new s31((j3 == 0 || j3 == -1) ? (int) jLongValue : jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE, z30.a(gb1.a(i31Var.b(), fs2Var), vq0Var));
        }
        if (m31Var instanceof k31) {
            k31 k31Var = (k31) m31Var;
            x31 x31VarA = a(k31Var.b().a, displayMetrics, fs2Var);
            x31 x31VarA2 = a(k31Var.b().b, displayMetrics, fs2Var);
            ds2 ds2Var = k31Var.b().d;
            if (ds2Var == null || (listA = ds2Var.a(fs2Var)) == null) {
                listA = defpackage.kx2.b;
            }
            gx1 gx1Var = k31Var.b().e;
            if (gx1Var instanceof ex1) {
                z31Var = new y31(pq.b(((ex1) gx1Var).a, displayMetrics, fs2Var));
            } else {
                if (!(gx1Var instanceof fx1)) {
                    defpackage.me0.e();
                    return null;
                }
                z31Var = new z31((tx1) ((fx1) gx1Var).a.a.a(fs2Var));
            }
            return new b41(x31VarA, x31VarA2, listA, z31Var);
        }
        if (!(m31Var instanceof h31)) {
            if (m31Var instanceof l31) {
                return new c41(((Number) ((l31) m31Var).a.a.a(fs2Var)).intValue());
            }
            if (!(m31Var instanceof j31)) {
                defpackage.me0.e();
                return null;
            }
            j31 j31Var = (j31) m31Var;
            Uri uri = (Uri) j31Var.b().a.a(fs2Var);
            long jLongValue2 = ((Number) j31Var.b().b.b.a(fs2Var)).longValue();
            long j4 = jLongValue2 >> 31;
            int i = (j4 == 0 || j4 == -1) ? (int) jLongValue2 : jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            long jLongValue3 = ((Number) j31Var.b().b.d.a(fs2Var)).longValue();
            long j5 = jLongValue3 >> 31;
            int i2 = (j5 == 0 || j5 == -1) ? (int) jLongValue3 : jLongValue3 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            long jLongValue4 = ((Number) j31Var.b().b.c.a(fs2Var)).longValue();
            long j6 = jLongValue4 >> 31;
            int i3 = (j6 == 0 || j6 == -1) ? (int) jLongValue4 : jLongValue4 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            long jLongValue5 = ((Number) j31Var.b().b.a.a(fs2Var)).longValue();
            long j7 = jLongValue5 >> 31;
            return new u31(uri, new Rect(i, i2, i3, (j7 == 0 || j7 == -1) ? (int) jLongValue5 : jLongValue5 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE));
        }
        h31 h31Var = (h31) m31Var;
        double dDoubleValue = ((Number) h31Var.b().a.a(fs2Var)).doubleValue();
        f11 f11Var = (f11) h31Var.b().b.a(fs2Var);
        h11 h11Var = (h11) h31Var.b().c.a(fs2Var);
        Uri uri2 = (Uri) h31Var.b().e.a(fs2Var);
        boolean zBooleanValue = ((Boolean) h31Var.b().f.a(fs2Var)).booleanValue();
        vi1 vi1Var = (vi1) h31Var.b().g.a(fs2Var);
        List<wd1> list2 = h31Var.b().d;
        if (list2 != null) {
            ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(list2, 10));
            for (wd1 wd1Var : list2) {
                if (wd1Var instanceof ud1) {
                    ud1 ud1Var = (ud1) wd1Var;
                    j = j2;
                    long jLongValue6 = ((Number) ud1Var.a().a.a(fs2Var)).longValue();
                    long j8 = jLongValue6 >> 31;
                    o31Var = new n31((j8 == 0 || j8 == j) ? (int) jLongValue6 : jLongValue6 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE, ud1Var);
                } else {
                    j = j2;
                    if (!(wd1Var instanceof vd1)) {
                        defpackage.me0.e();
                        return null;
                    }
                    o31Var = new o31((vd1) wd1Var);
                }
                arrayList2.add(o31Var);
                j2 = j;
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        bi1 bi1VarB = h31Var.b();
        return new r31(dDoubleValue, f11Var, h11Var, uri2, zBooleanValue, vi1Var, arrayList, ((Number) bi1VarB.a.a(fs2Var)).doubleValue() == 1.0d && ((list = bi1VarB.d) == null || list.isEmpty()));
    }

    public final LayerDrawable b(Drawable drawable, View view, List list, tt ttVar) {
        Drawable v35Var;
        s35 s35Var;
        u35 t35Var;
        p35 o35Var;
        p35 o35Var2;
        vc5 vc5Var;
        tc5 tc5Var;
        uc5 uc5Var;
        if (drawable != null) {
            drawable.mutate();
        }
        if (list == null) {
            if (drawable != null) {
                return new LayerDrawable(new Drawable[]{drawable});
            }
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d41 d41Var = (d41) it.next();
            oi1 oi1Var = this.a;
            d41Var.getClass();
            if (d41Var instanceof r31) {
                r31 r31Var = (r31) d41Var;
                wc5 wc5Var = new wc5();
                wc5Var.e.setAlpha((int) (r31Var.a * 255.0d));
                wc5Var.invalidateSelf();
                int iOrdinal = r31Var.f.ordinal();
                if (iOrdinal == 0) {
                    vc5Var = vc5.FILL;
                } else if (iOrdinal != 2) {
                    vc5Var = iOrdinal != 3 ? vc5.NO_SCALE : vc5.STRETCH;
                } else {
                    vc5Var = vc5.FIT;
                }
                wc5Var.a = vc5Var;
                f11 f11Var = r31Var.b;
                boolean zB = oh6.b(view);
                int iOrdinal2 = f11Var.ordinal();
                if (iOrdinal2 == 0) {
                    tc5Var = tc5.LEFT;
                } else if (iOrdinal2 == 1) {
                    tc5Var = tc5.CENTER;
                } else if (iOrdinal2 == 2) {
                    tc5Var = tc5.RIGHT;
                } else if (iOrdinal2 == 3) {
                    tc5Var = zB ? tc5.RIGHT : tc5.LEFT;
                } else {
                    if (iOrdinal2 != 4) {
                        defpackage.me0.e();
                        return null;
                    }
                    tc5Var = zB ? tc5.LEFT : tc5.RIGHT;
                }
                wc5Var.b = tc5Var;
                int iOrdinal3 = r31Var.c.ordinal();
                if (iOrdinal3 != 1) {
                    uc5Var = iOrdinal3 != 2 ? uc5.TOP : uc5.BOTTOM;
                } else {
                    uc5Var = uc5.CENTER;
                }
                wc5Var.c = uc5Var;
                ttVar.a.a(oi1Var.b(r31Var.d.toString(), new q31(view, ttVar, r31Var, wc5Var, ttVar.a)));
                v35Var = wc5Var;
            } else if (d41Var instanceof u31) {
                u31 u31Var = (u31) d41Var;
                vq0 vq0Var = ttVar.a;
                bo4 bo4Var = new bo4();
                vq0Var.a(oi1Var.b(u31Var.a.toString(), new t31(vq0Var, bo4Var, u31Var)));
                v35Var = bo4Var;
            } else if (d41Var instanceof c41) {
                v35Var = new ColorDrawable(((c41) d41Var).a);
            } else if (d41Var instanceof s31) {
                s31 s31Var = (s31) d41Var;
                v35Var = new lt3(s31Var.a, s31Var.b);
            } else {
                if (!(d41Var instanceof b41)) {
                    defpackage.me0.e();
                    return null;
                }
                b41 b41Var = (b41) d41Var;
                a41 a41Var = b41Var.d;
                if (a41Var instanceof y31) {
                    t35Var = new r35(((y31) a41Var).a);
                } else {
                    if (!(a41Var instanceof z31)) {
                        defpackage.me0.e();
                        return null;
                    }
                    int iOrdinal4 = ((z31) a41Var).a.ordinal();
                    if (iOrdinal4 == 0) {
                        s35Var = s35.NEAREST_CORNER;
                    } else if (iOrdinal4 == 1) {
                        s35Var = s35.FARTHEST_CORNER;
                    } else if (iOrdinal4 == 2) {
                        s35Var = s35.NEAREST_SIDE;
                    } else {
                        if (iOrdinal4 != 3) {
                            defpackage.me0.e();
                            return null;
                        }
                        s35Var = s35.FARTHEST_SIDE;
                    }
                    t35Var = new t35(s35Var);
                }
                x31 x31Var = b41Var.a;
                if (x31Var instanceof v31) {
                    o35Var = new n35(((v31) x31Var).a);
                } else {
                    if (!(x31Var instanceof w31)) {
                        defpackage.me0.e();
                        return null;
                    }
                    o35Var = new o35(((w31) x31Var).a);
                }
                x31 x31Var2 = b41Var.b;
                if (x31Var2 instanceof v31) {
                    o35Var2 = new n35(((v31) x31Var2).a);
                } else {
                    if (!(x31Var2 instanceof w31)) {
                        defpackage.me0.e();
                        return null;
                    }
                    o35Var2 = new o35(((w31) x31Var2).a);
                }
                v35Var = new v35(t35Var, o35Var, o35Var2, defpackage.qn1.s0(b41Var.c));
            }
            Drawable drawableMutate = v35Var.mutate();
            if (drawableMutate != null) {
                arrayList.add(drawableMutate);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        if (drawable != null) {
            arrayList2.add(drawable);
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        return new LayerDrawable((Drawable[]) arrayList2.toArray(new Drawable[0]));
    }

    public static final j59 a(e41 e41Var, View view, tt ttVar, Drawable drawable, List list, Object obj) {
        e41Var.a(drawable, view, list, ttVar);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kx2] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v0, types: [yads.e41] */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.view.View] */
    public final void a(Drawable drawable, View view, List list, tt ttVar) {
        ?? arrayList;
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        fs2 fs2Var = ttVar.b;
        if (list != null) {
            arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a((m31) it.next(), ttVar.a, displayMetrics, fs2Var));
            }
        } else {
            arrayList = defpackage.kx2.b;
        }
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_default_background_list_tag);
        List list2 = tag instanceof List ? (List) tag : null;
        Object tag2 = view.getTag(R$id.monetization_ads_divkit_div_additional_background_layer_tag);
        Drawable drawable2 = tag2 instanceof Drawable ? (Drawable) tag2 : null;
        if (defpackage.aa4.e(list2, arrayList) && defpackage.aa4.e(drawable2, drawable)) {
            return;
        }
        a(view, b(drawable, view, arrayList, ttVar));
        view.setTag(R$id.monetization_ads_divkit_div_default_background_list_tag, arrayList);
        view.setTag(R$id.monetization_ads_divkit_div_focused_background_list_tag, null);
        view.setTag(R$id.monetization_ads_divkit_div_additional_background_layer_tag, drawable);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ec A[LOOP:1: B:60:0x00c3->B:66:0x00ec, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:72:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:? A[RETURN, SYNTHETIC] */
    public final void a(final tt ttVar, final View view, final Drawable drawable, final List list, List list2, final List list3, List list4, hs2 hs2Var) {
        Iterator it;
        List list5 = defpackage.kx2.b;
        List list6 = list == null ? list5 : list;
        List list7 = list2 == null ? list5 : list2;
        if (list4 != null) {
            list5 = list4;
        }
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_additional_background_layer_tag);
        Drawable drawable2 = tag instanceof Drawable ? (Drawable) tag : null;
        if (list6.size() == list7.size()) {
            Iterator it2 = list6.iterator();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    if (list3.size() != list5.size()) {
                        break;
                    }
                    Iterator it3 = list3.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            if (!defpackage.aa4.e(drawable, drawable2)) {
                                break;
                            } else {
                                return;
                            }
                        }
                        Object next = it3.next();
                        int i3 = i + 1;
                        if (i >= 0) {
                            if (!gb1.a((m31) next, (m31) list5.get(i))) {
                                break;
                            } else {
                                i = i3;
                            }
                        } else {
                            u96.o();
                            throw null;
                        }
                    }
                } else {
                    Object next2 = it2.next();
                    int i4 = i2 + 1;
                    if (i2 >= 0) {
                        if (!gb1.a((m31) next2, (m31) list7.get(i2))) {
                            break;
                        } else {
                            i2 = i4;
                        }
                    } else {
                        u96.o();
                        throw null;
                    }
                }
            }
        }
        a(view, ttVar, drawable, list, list3);
        if (!list6.isEmpty()) {
            Iterator it4 = list6.iterator();
            while (it4.hasNext()) {
                if (!gb1.a((m31) it4.next())) {
                }
            }
            if (list3.isEmpty()) {
                return;
            }
            it = list3.iterator();
            while (it.hasNext()) {
                if (!gb1.a((m31) it.next())) {
                }
            }
            return;
        }
        if (list3.isEmpty()) {
            return;
        }
        it = list3.iterator();
        while (it.hasNext()) {
            if (!gb1.a((m31) it.next())) {
            }
        }
        return;
        nl3 nl3Var = new nl3() { // from class: xt9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return e41.a(this.b, view, ttVar, drawable, list, list3, obj);
            }
        };
        fs2 fs2Var = ttVar.b;
        a(list, fs2Var, hs2Var, nl3Var);
        a(list3, fs2Var, hs2Var, nl3Var);
    }

    public static final j59 a(e41 e41Var, View view, tt ttVar, Drawable drawable, List list, List list2, Object obj) {
        e41Var.a(view, ttVar, drawable, list, list2);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [kx2] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v0, types: [yads.e41] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.view.View] */
    public final void a(View view, tt ttVar, Drawable drawable, List list, List list2) {
        ?? arrayList;
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        vq0 vq0Var = ttVar.a;
        fs2 fs2Var = ttVar.b;
        if (list != null) {
            arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a((m31) it.next(), vq0Var, displayMetrics, fs2Var));
            }
        } else {
            arrayList = defpackage.kx2.b;
        }
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(a((m31) it2.next(), vq0Var, displayMetrics, fs2Var));
        }
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_default_background_list_tag);
        List list3 = tag instanceof List ? (List) tag : null;
        Object tag2 = view.getTag(R$id.monetization_ads_divkit_div_focused_background_list_tag);
        List list4 = tag2 instanceof List ? (List) tag2 : null;
        Object tag3 = view.getTag(R$id.monetization_ads_divkit_div_additional_background_layer_tag);
        Drawable drawable2 = tag3 instanceof Drawable ? (Drawable) tag3 : null;
        if (defpackage.aa4.e(list3, arrayList) && defpackage.aa4.e(list4, arrayList2) && defpackage.aa4.e(drawable2, drawable)) {
            return;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_focused}, b(drawable, view, arrayList2, ttVar));
        if (list != null || drawable != null) {
            stateListDrawable.addState(StateSet.WILD_CARD, b(drawable, view, arrayList, ttVar));
        }
        a(view, stateListDrawable);
        view.setTag(R$id.monetization_ads_divkit_div_default_background_list_tag, arrayList);
        view.setTag(R$id.monetization_ads_divkit_div_focused_background_list_tag, arrayList2);
        view.setTag(R$id.monetization_ads_divkit_div_additional_background_layer_tag, drawable);
    }

    public static void a(View view, Drawable drawable) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (drawable != null) {
            arrayList.add(drawable);
        }
        Drawable background = view.getBackground();
        LayerDrawable layerDrawable = background instanceof LayerDrawable ? (LayerDrawable) background : null;
        if ((layerDrawable != null ? layerDrawable.findDrawableByLayerId(R$drawable.monetization_ads_divkit_native_animation_background) : null) != null) {
            Drawable drawable2 = ContextCompat.getDrawable(view.getContext(), R$drawable.monetization_ads_divkit_native_animation_background);
            if (drawable2 != null) {
                arrayList.add(drawable2);
            }
            z = true;
        } else {
            z = false;
        }
        view.setBackground(new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[0])));
        if (z) {
            Drawable background2 = view.getBackground();
            background2.getClass();
            Drawable background3 = view.getBackground();
            background3.getClass();
            ((LayerDrawable) background2).setId(((LayerDrawable) background3).getNumberOfLayers() - 1, R$drawable.monetization_ads_divkit_native_animation_background);
        }
    }

    public final void a(final tt ttVar, final View view, final Drawable drawable, final List list, List list2, hs2 hs2Var) {
        defpackage.kx2 kx2Var = defpackage.kx2.b;
        List list3 = list == null ? kx2Var : list;
        if (list2 == null) {
            list2 = kx2Var;
        }
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_additional_background_layer_tag);
        Drawable drawable2 = tag instanceof Drawable ? (Drawable) tag : null;
        if (list3.size() == list2.size()) {
            Iterator it = list3.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    if (!defpackage.aa4.e(drawable, drawable2)) {
                        break;
                    } else {
                        return;
                    }
                }
                Object next = it.next();
                int i2 = i + 1;
                if (i >= 0) {
                    if (!gb1.a((m31) next, (m31) list2.get(i))) {
                        break;
                    } else {
                        i = i2;
                    }
                } else {
                    u96.o();
                    throw null;
                }
            }
        }
        a(drawable, view, list, ttVar);
        if (list3.isEmpty()) {
            return;
        }
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            if (!gb1.a((m31) it2.next())) {
                a(list, ttVar.b, hs2Var, new nl3() { // from class: yt9
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return e41.a(this.b, view, ttVar, drawable, list, obj);
                    }
                });
                return;
            }
        }
    }

    public static x31 a(jw1 jw1Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        float fA;
        if (jw1Var instanceof hw1) {
            hw1 hw1Var = (hw1) jw1Var;
            long jLongValue = ((Number) hw1Var.a.b.a(fs2Var)).longValue();
            int iOrdinal = ((g12) hw1Var.a.a.a(fs2Var)).ordinal();
            if (iOrdinal == 0) {
                fA = pq.a((Number) Long.valueOf(jLongValue), displayMetrics);
            } else if (iOrdinal == 1) {
                fA = pq.b((Number) Long.valueOf(jLongValue), displayMetrics);
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return null;
                }
                fA = jLongValue;
            }
            return new v31(fA);
        }
        if (jw1Var instanceof iw1) {
            return new w31((float) ((Number) ((iw1) jw1Var).a.a.a(fs2Var)).doubleValue());
        }
        defpackage.me0.e();
        return null;
    }

    public static void a(List list, fs2 fs2Var, hs2 hs2Var, nl3 nl3Var) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                m31 m31Var = (m31) it.next();
                if (m31Var != null) {
                    if (m31Var instanceof l31) {
                        hs2Var.a(((l31) m31Var).a.a.a(fs2Var, nl3Var));
                    } else if (m31Var instanceof h31) {
                        bi1 bi1Var = ((h31) m31Var).a;
                        hs2Var.a(bi1Var.a.a(fs2Var, nl3Var));
                        hs2Var.a(bi1Var.e.a(fs2Var, nl3Var));
                        hs2Var.a(bi1Var.b.a(fs2Var, nl3Var));
                        hs2Var.a(bi1Var.c.a(fs2Var, nl3Var));
                        hs2Var.a(bi1Var.f.a(fs2Var, nl3Var));
                        hs2Var.a(bi1Var.g.a(fs2Var, nl3Var));
                        List<wd1> list2 = bi1Var.d;
                        if (list2 != null) {
                            for (wd1 wd1Var : list2) {
                                if (wd1Var != null && !(wd1Var instanceof vd1) && (wd1Var instanceof ud1)) {
                                    hs2Var.a(((ud1) wd1Var).a.a.a(fs2Var, nl3Var));
                                }
                            }
                        }
                    } else if (m31Var instanceof i31) {
                        dp1 dp1Var = ((i31) m31Var).a;
                        hs2Var.a(dp1Var.a.a(fs2Var, nl3Var));
                        ds2 ds2Var = dp1Var.c;
                        hs2Var.a(ds2Var != null ? ds2Var.a(fs2Var, nl3Var) : null);
                        List<cp1> list3 = dp1Var.b;
                        if (list3 != null) {
                            for (cp1 cp1Var : list3) {
                                if (cp1Var != null) {
                                    hs2Var.a(cp1Var.a.a(fs2Var, nl3Var));
                                    hs2Var.a(cp1Var.b.a(fs2Var, nl3Var));
                                }
                            }
                        }
                    } else if (m31Var instanceof k31) {
                        gw1 gw1Var = ((k31) m31Var).a;
                        ds2 ds2Var2 = gw1Var.d;
                        hs2Var.a(ds2Var2 != null ? ds2Var2.a(fs2Var, nl3Var) : null);
                        js2.a(hs2Var, gw1Var.a, fs2Var, nl3Var);
                        js2.a(hs2Var, gw1Var.b, fs2Var, nl3Var);
                        gx1 gx1Var = gw1Var.e;
                        if (gx1Var != null) {
                            if (gx1Var instanceof ex1) {
                                ex1 ex1Var = (ex1) gx1Var;
                                hs2Var.a(ex1Var.a.a.a(fs2Var, nl3Var));
                                hs2Var.a(ex1Var.a.b.a(fs2Var, nl3Var));
                            } else if (gx1Var instanceof fx1) {
                                hs2Var.a(((fx1) gx1Var).a.a.a(fs2Var, nl3Var));
                            }
                        }
                    } else if (m31Var instanceof j31) {
                        aq1 aq1Var = ((j31) m31Var).a;
                        hs2Var.a(aq1Var.a.a(fs2Var, nl3Var));
                        cr0 cr0Var = aq1Var.b;
                        if (cr0Var != null) {
                            hs2Var.a(cr0Var.b.a(fs2Var, nl3Var));
                            hs2Var.a(cr0Var.d.a(fs2Var, nl3Var));
                            hs2Var.a(cr0Var.c.a(fs2Var, nl3Var));
                            hs2Var.a(cr0Var.a.a(fs2Var, nl3Var));
                        }
                    }
                }
            }
        }
    }
}
