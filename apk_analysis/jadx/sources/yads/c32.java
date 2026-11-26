package yads;

import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationSet;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewGroupKt;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import androidx.webkit.ProxyConfig;
import defpackage.j59;
import defpackage.jp7;
import defpackage.ll3;
import defpackage.n47;
import defpackage.nl3;
import defpackage.u96;
import defpackage.ws6;
import java.util.Iterator;
import java.util.List;
import yads.c32;

/* JADX INFO: loaded from: classes6.dex */
public final class c32 extends oh2 {
    public final v41 b;
    public final qh2 c;
    public final ws6 d;
    public final ff3 e;
    public final sv5 f;
    public final bt0 g;
    public final ys0 h;
    public final zt1 i;
    public final rt1 j;
    public final bj2 k;
    public final bo2 l;
    public final h36 m;
    public final my1 n;

    public c32(v41 v41Var, qh2 qh2Var, ws6 ws6Var, ff3 ff3Var, sv5 sv5Var, bt0 bt0Var, ys0 ys0Var, zt1 zt1Var, rt1 rt1Var, bj2 bj2Var, bo2 bo2Var, h36 h36Var, my1 my1Var) {
        super(v41Var);
        this.b = v41Var;
        this.c = qh2Var;
        this.d = ws6Var;
        this.e = ff3Var;
        this.f = sv5Var;
        this.g = bt0Var;
        this.h = ys0Var;
        this.i = zt1Var;
        this.j = rt1Var;
        this.k = bj2Var;
        this.l = bo2Var;
        this.m = h36Var;
        this.n = my1Var;
    }

    public static final boolean b(cn1 cn1Var) {
        List listC = cn1Var.a.a().c();
        if (listC != null) {
            return listC.contains(pd2.STATE_CHANGE);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00e3  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void a(tt ttVar, k32 k32Var, gq0 gq0Var, n32 n32Var) {
        n32 n32Var2;
        z22 z22Var;
        View view;
        View viewC;
        View view2;
        z22 z22Var2;
        vq0 vq0Var;
        br0 br0Var;
        fs2 fs2Var;
        p41 p41VarA;
        TransitionSet transitionSetA;
        tt ttVarA;
        fs2 fs2Var2;
        boolean z;
        c32 c32Var = this;
        z22 z22Var3 = gq0Var.a;
        xh1 xh1Var = k32Var.l;
        gq0 gq0Var2 = (gq0) xh1Var.c;
        tt ttVar2 = xh1Var.d;
        fs2 fs2Var3 = ttVar2 != null ? ttVar2.b : null;
        String str = z22Var3.p;
        if (str == null && (str = z22Var3.x) == null) {
            a(c32Var, ttVar, n32Var);
            str = "";
        }
        defpackage.b36 b36VarA = c32Var.a(z22Var3, ttVar, k32Var, n32Var, str);
        String str2 = str;
        y22 y22Var = (y22) b36VarA.b;
        y22 y22Var2 = (y22) b36VarA.c;
        if (y22Var == null || y22Var2 == null) {
            return;
        }
        br0 br0Var2 = k32Var.q;
        if (gq0Var2 != gq0Var) {
            c32Var.b.a(ttVar, k32Var, gq0Var, br0Var2);
            c32Var.a(k32Var, ttVar, z22Var3, gq0Var2 != null ? gq0Var2.a : null, y22Var2, n32Var);
            n32Var2 = n32Var;
            y22Var2 = y22Var2;
        } else {
            n32Var2 = n32Var;
        }
        z22 z22Var4 = gq0Var2 != null ? gq0Var2.a : null;
        vq0 vq0Var2 = r2.a;
        fs2 fs2Var4 = r2.b;
        br0 br0Var3 = y22Var2.c;
        p41 p41VarA2 = br0Var3 != null ? br0Var3.a() : null;
        n32 n32VarA = n32Var2.a(str2, y22Var2, y22Var2.d);
        View childAt = k32Var.getChildCount() != 0 ? k32Var.getChildAt(0) : null;
        if (br0Var3 != null) {
            vq0Var2.getClass();
        }
        if (defpackage.aa4.e(k32Var.k(), y22Var2.d)) {
            z22Var = z22Var3;
            br0Var3 = br0Var3;
            view = childAt;
            if (p41VarA2 != null) {
                boolean z2 = (view == null || fs2Var3 == null || !b81.a(br0Var2, br0Var3, fs2Var3, fs2Var4)) ? false : true;
                if (z2) {
                    view2 = view;
                } else {
                    View viewC2 = c32Var.c.c(br0Var3, fs2Var4);
                    viewC2.setLayoutParams(new ro1(-1, -2));
                    view2 = viewC2;
                }
                if (!z2) {
                    Iterator<View> it = ViewGroupKt.getChildren(k32Var).iterator();
                    while (it.hasNext()) {
                        di2.a(vq0Var2.u(), it.next());
                    }
                    k32Var.removeAllViews();
                    k32Var.addView(view2);
                }
                if (view2 != null) {
                    ((w41) c32Var.d.get()).a(r2, view2, br0Var3, n32VarA);
                }
                viewC = view2;
            } else {
                fs2Var4 = fs2Var4;
                Iterator<View> it2 = ViewGroupKt.getChildren(k32Var).iterator();
                while (it2.hasNext()) {
                    di2.a(vq0Var2.u(), it2.next());
                }
                k32Var.removeAllViews();
                viewC = null;
            }
        } else {
            if (br0Var3 != null) {
                viewC = c32Var.c.c(br0Var3, fs2Var4);
                viewC.setLayoutParams(new ro1(-1, -2));
            } else {
                viewC = null;
            }
            if (childAt == 0 || (ttVarA = pq.a(childAt)) == null || (fs2Var2 = ttVarA.b) == null) {
                z22Var = z22Var3;
                view = childAt;
                transitionSetA = a(r2, y22Var2, y22Var, viewC, view);
            } else {
                fs2 fs2Var5 = r2.b;
                int iOrdinal = ((nd2) z22Var3.L.a(fs2Var5)).ordinal();
                z22Var = z22Var3;
                if (iOrdinal == 2 || iOrdinal == 3) {
                    br0 br0Var4 = y22Var.c;
                    if (br0Var4 != null) {
                        z = true;
                        if (!jf2.a(br0Var4, fs2Var2)) {
                        }
                        view = childAt;
                        transitionSetA = a((hd2) r2.a.o.c.getValue(), (v32) r2.a.o.g.getValue(), y22Var2, y22Var, fs2Var5, fs2Var2);
                    } else {
                        z = true;
                    }
                    br0 br0Var5 = y22Var2.c;
                    if (br0Var5 == null || jf2.a(br0Var5, fs2Var5) != z) {
                        view = childAt;
                        transitionSetA = a(ttVar, y22Var2, y22Var, viewC, view);
                    } else {
                        view = childAt;
                        transitionSetA = a((hd2) r2.a.o.c.getValue(), (v32) r2.a.o.g.getValue(), y22Var2, y22Var, fs2Var5, fs2Var2);
                    }
                } else {
                    view = childAt;
                    transitionSetA = a(ttVar, y22Var2, y22Var, viewC, view);
                }
            }
            if (transitionSetA != null) {
                TransitionManager.endTransitions(k32Var);
                ad5.a(k32Var, transitionSetA);
                TransitionManager.beginDelayedTransition(k32Var, transitionSetA);
            }
            for (Iterator<View> it3 = ViewGroupKt.getChildren(k32Var).iterator(); it3.hasNext(); it3 = it3) {
                di2.a(vq0Var2.u(), it3.next());
            }
            k32Var.removeAllViews();
            if (viewC != null) {
                k32Var.addView(viewC);
                if (br0Var3 != 0) {
                    ((w41) c32Var.d.get()).a(r2, viewC, br0Var3, n32VarA);
                }
            }
            if (view != null) {
                ld2 ld2Var = vq0Var2.V;
                ld2Var.d = false;
                ld2Var.a(k32Var, false);
            }
            fs2Var4 = fs2Var4;
        }
        if (view != null) {
            view.startAnimation(new AnimationSet(false));
            z22Var2 = z22Var;
            if (!defpackage.aa4.e(z22Var4, z22Var2) || y22Var2 != y22Var) {
                if (br0Var2 != null && fs2Var3 != null) {
                    bj2.a(c32Var.k, vq0Var2, fs2Var3, null, br0Var2);
                    c32Var.a(view, vq0Var2, fs2Var3);
                }
            }
        } else {
            z22Var2 = z22Var;
        }
        if (viewC == null || p41VarA2 == null || (p41VarA2.k() == null && p41VarA2.m() == null)) {
            vq0Var = vq0Var2;
            br0Var = br0Var3;
            fs2Var = fs2Var4;
        } else {
            vq0Var2.w.put(viewC, br0Var3);
            View view3 = viewC;
            vq0Var = vq0Var2;
            br0Var = br0Var3;
            fs2Var = fs2Var4;
            c32Var = this;
            view3.addOnLayoutChangeListener(new a32(this, vq0Var, fs2Var, view3, br0Var));
        }
        if (br0Var2 != null && (p41VarA = br0Var2.a()) != null && p41VarA.a() != null) {
            if (c32Var.i.a.a.get(r2.a.O) != null) {
                throw new ClassCastException();
            }
            if (c32Var.j.a.get(vq0Var.O) != null) {
                throw new ClassCastException();
            }
        }
        r1.setActiveStateDiv$mobileads_externalRelease(br0Var);
        k32Var.setPath(n32VarA);
        if (view != null) {
            my1 my1Var = c32Var.n;
            my1Var.getClass();
            ms2 ms2VarA = vq0Var.z.a(fs2Var);
            if (ms2VarA == null) {
                return;
            }
            String strA = my1Var.a(z22Var2, vq0Var, n32Var, ms2VarA.a);
            for (y22 y22Var3 : z22Var2.I) {
                br0 br0Var6 = y22Var3.c;
                if (br0Var6 != null) {
                    my1Var.a(br0Var6, vq0Var, n32Var.a((String) defpackage.qn1.b0(n32Var.c), y22Var3, y22Var3.d), ms2VarA, defpackage.aa4.e(y22Var3.d, strA));
                }
            }
        }
    }

    public static final boolean b(br0 br0Var) {
        return !(br0Var instanceof gq0);
    }

    public static TransitionSet a(tt ttVar, y22 y22Var, y22 y22Var2, View view, View view2) {
        tt ttVarA;
        List<k11> listH;
        fs2 fs2Var = ttVar.b;
        k11 k11Var = y22Var.a;
        k11 k11Var2 = y22Var2.b;
        fs2 fs2Var2 = null;
        if (k11Var == null && k11Var2 == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        List<k11> listH2 = defpackage.kx2.b;
        if (k11Var != null && view != null) {
            if (k11Var.e.a(fs2Var) != j11.SET) {
                listH = u96.h(k11Var);
            } else {
                listH = k11Var.d;
                if (listH == null) {
                    listH = listH2;
                }
            }
            for (k11 k11Var3 : listH) {
                gr4 gr4VarA = d32.a(k11Var3, true, fs2Var);
                if (gr4VarA != null) {
                    transitionSet.addTransition(gr4VarA.addTarget(view).setDuration(((Number) k11Var3.a.a(fs2Var)).longValue()).setStartDelay(((Number) k11Var3.g.a(fs2Var)).longValue()).setInterpolator(jf2.a((o11) k11Var3.c.a(fs2Var))));
                }
            }
        }
        if (view2 != null && (ttVarA = pq.a(view2)) != null) {
            fs2Var2 = ttVarA.b;
        }
        if (k11Var2 != null && fs2Var2 != null) {
            if (k11Var2.e.a(fs2Var2) != j11.SET) {
                listH2 = u96.h(k11Var2);
            } else {
                List list = k11Var2.d;
                if (list != null) {
                    listH2 = list;
                }
            }
            for (k11 k11Var4 : listH2) {
                gr4 gr4VarA2 = d32.a(k11Var4, false, fs2Var2);
                if (gr4VarA2 != null) {
                    transitionSet.addTransition(gr4VarA2.addTarget(view2).setDuration(((Number) k11Var4.a.a(fs2Var2)).longValue()).setStartDelay(((Number) k11Var4.g.a(fs2Var2)).longValue()).setInterpolator(jf2.a((o11) k11Var4.c.a(fs2Var2))));
                }
            }
        }
        if (view2 != null) {
            view2.clearAnimation();
        }
        return transitionSet;
    }

    public static final boolean a(cn1 cn1Var) {
        List listC = cn1Var.a.a().c();
        if (listC != null) {
            return listC.contains(pd2.STATE_CHANGE);
        }
        return true;
    }

    public static final j59 a(c32 c32Var, k32 k32Var, tt ttVar, fs2 fs2Var, List list) {
        c32Var.a(k32Var, ttVar.a, fs2Var, list);
        return j59.a;
    }

    public static final j59 a(c32 c32Var, tt ttVar, n32 n32Var) {
        bo2 bo2Var = c32Var.l;
        vq0 vq0Var = ttVar.a;
        ao2 ao2VarA = bo2Var.a(vq0Var.Q, vq0Var.O);
        ao2VarA.b.add(gt4.a(n32Var.toString()));
        ao2VarA.a();
        return j59.a;
    }

    public final defpackage.b36 a(z22 z22Var, tt ttVar, k32 k32Var, n32 n32Var, String str) {
        z66 z66VarB;
        u66 u66VarA;
        Object objB;
        Object next;
        String strA = ttVar.a().r().a();
        String strD = defpackage.cg.d(n32Var.c(), "/", str);
        String strA2 = this.f.a(strA, strD);
        if (strA2 == null) {
            strA2 = this.e.a(strA, strD);
        }
        Object obj = null;
        if (strA2 != null) {
            nl3 nl3VarL = k32Var.l();
            if (nl3VarL != null) {
                nl3VarL.invoke(strA2);
            }
        } else {
            String str2 = z22Var.H;
            strA2 = (str2 == null || (z66VarB = w56.b(ttVar.b)) == null || (u66VarA = z66VarB.a(str2)) == null || (objB = u66VarA.b()) == null) ? null : objB.toString();
        }
        Iterator it = z22Var.I.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!defpackage.aa4.e(((y22) next).d, k32Var.k()));
        y22 y22VarA = (y22) next;
        if (y22VarA == null) {
            y22VarA = jf2.a(z22Var, ttVar.b());
        }
        for (Object obj2 : z22Var.I) {
            if (defpackage.aa4.e(((y22) obj2).d, strA2)) {
                obj = obj2;
                break;
            }
        }
        y22 y22VarA2 = (y22) obj;
        if (y22VarA2 == null) {
            y22VarA2 = jf2.a(z22Var, ttVar.b());
        }
        return new defpackage.b36(y22VarA, y22VarA2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    /* JADX WARN: Code duplicated, block: B:17:0x004a  */
    /* JADX WARN: Code duplicated, block: B:19:0x0052  */
    /* JADX WARN: Code duplicated, block: B:20:0x0055  */
    /* JADX WARN: Code duplicated, block: B:22:0x0058  */
    /* JADX WARN: Code duplicated, block: B:23:0x005d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0062  */
    /* JADX WARN: Code duplicated, block: B:27:0x0065  */
    /* JADX WARN: Code duplicated, block: B:29:0x0068  */
    /* JADX WARN: Code duplicated, block: B:30:0x006a  */
    /* JADX WARN: Code duplicated, block: B:32:0x0076  */
    /* JADX WARN: Code duplicated, block: B:34:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x007e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0080  */
    /* JADX WARN: Code duplicated, block: B:37:0x0082  */
    /* JADX WARN: Code duplicated, block: B:41:0x008b A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:42:0x008e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0091  */
    /* JADX WARN: Code duplicated, block: B:44:0x0094  */
    /* JADX WARN: Code duplicated, block: B:45:0x0097  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:51:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00d6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x00d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00da  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e9  */
    public final void a(final k32 k32Var, final tt ttVar, z22 z22Var, z22 z22Var2, y22 y22Var, n32 n32Var) {
        ViewParent parent;
        wh1 wh1Var;
        br0 br0VarA;
        up0 up0Var;
        m91 m91Var;
        f11 f11Var;
        int iOrdinal;
        ViewParent parent2;
        wh1 wh1Var2;
        br0 br0VarA2;
        up0 up0Var2;
        o91 o91Var;
        h11 h11Var;
        int iOrdinal2;
        pq.a(k32Var, ttVar, z22Var.b, z22Var.d, z22Var.z, z22Var.q, z22Var.w, z22Var.v, z22Var.D, z22Var.C, z22Var.c, z22Var.k);
        final fs2 fs2Var = ttVar.b;
        as2 as2Var = z22Var.e;
        as2 as2Var2 = z22Var.f;
        if (defpackage.aa4.e(as2Var, z22Var2 != null ? z22Var2.e : null)) {
            if (!defpackage.aa4.e(as2Var2, z22Var2 != null ? z22Var2.f : null)) {
                if (as2Var != null) {
                    parent = k32Var.getParent();
                    if (parent instanceof wh1) {
                        wh1Var = (wh1) parent;
                    } else {
                        wh1Var = null;
                    }
                    if (wh1Var != null) {
                        br0VarA = wh1Var.a();
                    } else {
                        br0VarA = null;
                    }
                    if (br0VarA instanceof up0) {
                        up0Var = (up0) br0VarA;
                    } else {
                        up0Var = null;
                    }
                    if (up0Var == null) {
                        m91Var = null;
                    } else {
                        m91Var = (m91) up0Var.a.o.a(fs2Var);
                    }
                    if (m91Var != null) {
                        iOrdinal = m91Var.ordinal();
                        if (iOrdinal == 0) {
                            f11Var = f11.LEFT;
                        } else if (iOrdinal == 1) {
                            f11Var = f11.CENTER;
                        } else if (iOrdinal == 2) {
                            f11Var = f11.RIGHT;
                        } else if (iOrdinal != 3) {
                            f11Var = f11.START;
                        } else {
                            f11Var = f11.START;
                        }
                    } else {
                        f11Var = null;
                    }
                } else {
                    parent = k32Var.getParent();
                    if (parent instanceof wh1) {
                        wh1Var = (wh1) parent;
                    } else {
                        wh1Var = null;
                    }
                    if (wh1Var != null) {
                        br0VarA = wh1Var.a();
                    } else {
                        br0VarA = null;
                    }
                    if (br0VarA instanceof up0) {
                        up0Var = (up0) br0VarA;
                    } else {
                        up0Var = null;
                    }
                    if (up0Var == null) {
                        m91Var = null;
                    } else {
                        m91Var = (m91) up0Var.a.o.a(fs2Var);
                    }
                    if (m91Var != null) {
                        iOrdinal = m91Var.ordinal();
                        if (iOrdinal == 0) {
                            f11Var = f11.LEFT;
                        } else if (iOrdinal == 1) {
                            f11Var = f11.CENTER;
                        } else if (iOrdinal == 2) {
                            f11Var = f11.RIGHT;
                        } else if (iOrdinal != 3) {
                            f11Var = f11.START;
                        } else {
                            f11Var = f11.START;
                        }
                    } else {
                        f11Var = null;
                    }
                }
                if (as2Var2 != null) {
                    parent2 = k32Var.getParent();
                    if (parent2 instanceof wh1) {
                        wh1Var2 = (wh1) parent2;
                    } else {
                        wh1Var2 = null;
                    }
                    if (wh1Var2 != null) {
                        br0VarA2 = wh1Var2.a();
                    } else {
                        br0VarA2 = null;
                    }
                    if (br0VarA2 instanceof up0) {
                        up0Var2 = (up0) br0VarA2;
                    } else {
                        up0Var2 = null;
                    }
                    if (up0Var2 == null) {
                        o91Var = null;
                    } else {
                        o91Var = (o91) up0Var2.a.p.a(fs2Var);
                    }
                    if (o91Var != null) {
                        iOrdinal2 = o91Var.ordinal();
                        if (iOrdinal2 == 0) {
                            h11Var = h11.TOP;
                        } else if (iOrdinal2 == 1) {
                            h11Var = h11.CENTER;
                        } else if (iOrdinal2 == 2) {
                            h11Var = h11.BOTTOM;
                        } else if (iOrdinal2 != 3) {
                            h11Var = h11.TOP;
                        } else {
                            h11Var = h11.BASELINE;
                        }
                    } else {
                        h11Var = null;
                    }
                } else {
                    parent2 = k32Var.getParent();
                    if (parent2 instanceof wh1) {
                        wh1Var2 = (wh1) parent2;
                    } else {
                        wh1Var2 = null;
                    }
                    if (wh1Var2 != null) {
                        br0VarA2 = wh1Var2.a();
                    } else {
                        br0VarA2 = null;
                    }
                    if (br0VarA2 instanceof up0) {
                        up0Var2 = (up0) br0VarA2;
                    } else {
                        up0Var2 = null;
                    }
                    if (up0Var2 == null) {
                        o91Var = null;
                    } else {
                        o91Var = (o91) up0Var2.a.p.a(fs2Var);
                    }
                    if (o91Var != null) {
                        iOrdinal2 = o91Var.ordinal();
                        if (iOrdinal2 == 0) {
                            h11Var = h11.TOP;
                        } else if (iOrdinal2 == 1) {
                            h11Var = h11.CENTER;
                        } else if (iOrdinal2 == 2) {
                            h11Var = h11.BOTTOM;
                        } else if (iOrdinal2 != 3) {
                            h11Var = h11.TOP;
                        } else {
                            h11Var = h11.BASELINE;
                        }
                    } else {
                        h11Var = null;
                    }
                }
                pq.a(k32Var, f11Var, h11Var);
            }
        } else {
            if (as2Var != null || (f11Var = (f11) as2Var.a(fs2Var)) == null) {
                parent = k32Var.getParent();
                if (parent instanceof wh1) {
                    wh1Var = (wh1) parent;
                } else {
                    wh1Var = null;
                }
                if (wh1Var != null) {
                    br0VarA = wh1Var.a();
                } else {
                    br0VarA = null;
                }
                if (br0VarA instanceof up0) {
                    up0Var = (up0) br0VarA;
                } else {
                    up0Var = null;
                }
                if (up0Var == null) {
                    m91Var = null;
                } else {
                    m91Var = (m91) up0Var.a.o.a(fs2Var);
                }
                if (m91Var != null) {
                    iOrdinal = m91Var.ordinal();
                    if (iOrdinal == 0) {
                        f11Var = f11.LEFT;
                    } else if (iOrdinal == 1) {
                        f11Var = f11.CENTER;
                    } else if (iOrdinal == 2) {
                        f11Var = f11.RIGHT;
                    } else if (iOrdinal != 3 || iOrdinal != 4) {
                        f11Var = f11.START;
                    } else {
                        f11Var = f11.END;
                    }
                } else {
                    f11Var = null;
                }
            }
            if (as2Var2 != null || (h11Var = (h11) as2Var2.a(fs2Var)) == null) {
                parent2 = k32Var.getParent();
                if (parent2 instanceof wh1) {
                    wh1Var2 = (wh1) parent2;
                } else {
                    wh1Var2 = null;
                }
                if (wh1Var2 != null) {
                    br0VarA2 = wh1Var2.a();
                } else {
                    br0VarA2 = null;
                }
                if (br0VarA2 instanceof up0) {
                    up0Var2 = (up0) br0VarA2;
                } else {
                    up0Var2 = null;
                }
                if (up0Var2 == null) {
                    o91Var = null;
                } else {
                    o91Var = (o91) up0Var2.a.p.a(fs2Var);
                }
                if (o91Var != null) {
                    iOrdinal2 = o91Var.ordinal();
                    if (iOrdinal2 == 0) {
                        h11Var = h11.TOP;
                    } else if (iOrdinal2 == 1) {
                        h11Var = h11.CENTER;
                    } else if (iOrdinal2 == 2) {
                        h11Var = h11.BOTTOM;
                    } else if (iOrdinal2 != 3) {
                        h11Var = h11.TOP;
                    } else {
                        h11Var = h11.BASELINE;
                    }
                } else {
                    h11Var = null;
                }
            }
            pq.a(k32Var, f11Var, h11Var);
        }
        String str = z22Var.H;
        if (str != null) {
            k32Var.l.a(this.m.a(ttVar, str, new b32(k32Var, z22Var, n32Var, ttVar)));
        }
        tq.a(k32Var, z22Var.l, z22Var2 != null ? z22Var2.l : null, fs2Var);
        final List list = y22Var.e;
        k32Var.setSwipeOutCallback(list != null ? new ll3() { // from class: sp9
            @Override // defpackage.ll3
            public final Object invoke() {
                return c32.a(this.b, k32Var, ttVar, fs2Var, list);
            }
        } : null);
    }

    public final void a(final k32 k32Var, final vq0 vq0Var, final fs2 fs2Var, final List list) {
        vq0Var.a(new ll3() { // from class: tp9
            @Override // defpackage.ll3
            public final Object invoke() {
                return c32.a(this.b, vq0Var, fs2Var, list, k32Var);
            }
        });
    }

    public static final j59 a(c32 c32Var, vq0 vq0Var, fs2 fs2Var, List list, k32 k32Var) {
        bt0 bt0Var = c32Var.g;
        bt0Var.getClass();
        if (list != null) {
            for (xr0 xr0Var : ct0.a(list, fs2Var)) {
                bt0.a(bt0Var, vq0Var, fs2Var, xr0Var, (String) null, 48);
                a(c32Var, vq0Var, fs2Var, k32Var, xr0Var);
            }
        }
        return j59.a;
    }

    public static final j59 a(c32 c32Var, vq0 vq0Var, fs2 fs2Var, k32 k32Var, xr0 xr0Var) {
        Uri uri;
        c32Var.getClass();
        ys0 ys0Var = c32Var.h;
        ys0Var.getClass();
        as2 as2Var = xr0Var.d;
        if (as2Var != null && (uri = (Uri) as2Var.a(fs2Var)) != null) {
            String scheme = uri.getScheme();
            if (!defpackage.aa4.e(scheme, ProxyConfig.MATCH_HTTP) && !defpackage.aa4.e(scheme, ProxyConfig.MATCH_HTTPS)) {
                int i = cr3.a;
                vj5[] vj5VarArr = vj5.b;
                cr3.a();
            } else {
                fq2.a(ys0Var.a.get());
            }
        }
        return j59.a;
    }

    public final void a(View view, vq0 vq0Var, fs2 fs2Var) {
        if (view instanceof ViewGroup) {
            for (View view2 : ViewGroupKt.getChildren((ViewGroup) view)) {
                br0 br0Var = (br0) vq0Var.w.remove(view2);
                if (br0Var != null) {
                    bj2.a(this.k, vq0Var, fs2Var, null, br0Var);
                }
                a(view2, vq0Var, fs2Var);
            }
        }
    }

    public static TransitionSet a(hd2 hd2Var, v32 v32Var, y22 y22Var, y22 y22Var2, fs2 fs2Var, fs2 fs2Var2) {
        if (defpackage.aa4.e(y22Var, y22Var2)) {
            return null;
        }
        br0 br0Var = y22Var2.c;
        defpackage.pa3 pa3VarK = br0Var != null ? jp7.k(xd2.a(br0Var, fs2Var2).a(new defpackage.ue(3)), new n47(1)) : null;
        br0 br0Var2 = y22Var.c;
        TransitionSet transitionSetA = hd2Var.a(pa3VarK, br0Var2 != null ? jp7.k(xd2.a(br0Var2, fs2Var).a(new defpackage.we(3)), new defpackage.xe(5)) : null, fs2Var2, fs2Var);
        v32Var.b.add(transitionSetA);
        if (!v32Var.c) {
            vq0 vq0Var = v32Var.a;
            OneShotPreDrawListener.add(vq0Var, new u32(vq0Var, v32Var));
            v32Var.c = true;
        }
        return transitionSetA;
    }

    public static final boolean a(br0 br0Var) {
        return !(br0Var instanceof gq0);
    }
}
