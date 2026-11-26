package yads;

import android.view.View;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class ap6 {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashSet d = new HashSet();
    public final HashSet e = new HashSet();
    public final HashSet f = new HashSet();
    public final HashMap g = new HashMap();
    public final HashSet h = new HashSet();
    public final WeakHashMap i = new WeakHashMap();
    public boolean j;

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        Boolean bool;
        String str;
        tp6 tp6Var = tp6.c;
        if (tp6Var != null) {
            for (dp6 dp6Var : Collections.unmodifiableCollection(tp6Var.b)) {
                View view = (View) dp6Var.d.get();
                if (dp6Var.f && !dp6Var.g) {
                    String str2 = dp6Var.h;
                    if (view != null) {
                        boolean zC = mq6.c(view);
                        if (zC) {
                            this.h.add(str2);
                        }
                        if (view.isAttachedToWindow()) {
                            boolean zHasWindowFocus = view.hasWindowFocus();
                            WeakHashMap weakHashMap = this.i;
                            if (zHasWindowFocus) {
                                weakHashMap.remove(view);
                                bool = Boolean.FALSE;
                            } else {
                                boolean zContainsKey = weakHashMap.containsKey(view);
                                WeakHashMap weakHashMap2 = this.i;
                                if (zContainsKey) {
                                    bool = (Boolean) weakHashMap2.get(view);
                                } else {
                                    bool = Boolean.FALSE;
                                    weakHashMap2.put(view, bool);
                                }
                            }
                            if (!bool.booleanValue() || zC) {
                                HashSet hashSet = new HashSet();
                                View view2 = view;
                                while (true) {
                                    if (view2 == null) {
                                        this.d.addAll(hashSet);
                                        str = null;
                                        break;
                                    }
                                    String strA = mq6.a(view2);
                                    if (strA != null) {
                                        str = strA;
                                        break;
                                    } else {
                                        hashSet.add(view2);
                                        Object parent = view2.getParent();
                                        view2 = parent instanceof View ? (View) parent : null;
                                    }
                                }
                            } else {
                                str = "noWindowFocus";
                            }
                        } else {
                            str = "notAttached";
                        }
                        if (str == null) {
                            this.e.add(str2);
                            this.a.put(view, str2);
                            for (cq6 cq6Var : dp6Var.c.a) {
                                View view3 = (View) cq6Var.a.get();
                                if (view3 != null) {
                                    vo6 vo6Var = (vo6) this.b.get(view3);
                                    if (vo6Var != null) {
                                        vo6Var.b.add(dp6Var.h);
                                    } else {
                                        this.b.put(view3, new vo6(cq6Var, dp6Var.h));
                                    }
                                }
                            }
                        } else if (str != "noWindowFocus") {
                            this.f.add(str2);
                            this.c.put(str2, view);
                            this.g.put(str2, str);
                        }
                    } else {
                        this.f.add(str2);
                        this.g.put(str2, "noAdView");
                    }
                }
            }
        }
    }
}
