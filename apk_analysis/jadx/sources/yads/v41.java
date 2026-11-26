package yads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import com.yandex.mobile.ads.R$id;
import defpackage.j59;
import defpackage.jx9;
import defpackage.nl3;
import defpackage.ra8;
import defpackage.u96;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import yads.ri2;
import yads.v41;

/* JADX INFO: loaded from: classes6.dex */
public final class v41 {
    public final e41 a;
    public final xb2 b;
    public final jf1 c;
    public final or0 d;
    public final so1 e;

    public v41(e41 e41Var, xb2 xb2Var, jf1 jf1Var, or0 or0Var, so1 so1Var) {
        this.a = e41Var;
        this.b = xb2Var;
        this.c = jf1Var;
        this.d = or0Var;
        this.e = so1Var;
    }

    public static void c(final View view, final p41 p41Var, p41 p41Var2, final fs2 fs2Var, hs2 hs2Var) {
        if (gb1.a(p41Var.v(), p41Var2 != null ? p41Var2.v() : null)) {
            return;
        }
        tq.a(view, p41Var.v(), fs2Var);
        if (gb1.a(p41Var.v())) {
            return;
        }
        js2.a(hs2Var, p41Var.v(), fs2Var, new nl3() { // from class: dfa
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return v41.b(view, p41Var, fs2Var, obj);
            }
        });
    }

    public static void d(final View view, final p41 p41Var, p41 p41Var2, final fs2 fs2Var, hs2 hs2Var) {
        if (view instanceof et1) {
            return;
        }
        if (gb1.a(p41Var.y(), p41Var2 != null ? p41Var2.y() : null)) {
            return;
        }
        tq.b(view, p41Var.y(), fs2Var);
        if (gb1.a(p41Var.y())) {
            return;
        }
        js2.a(hs2Var, p41Var.y(), fs2Var, new nl3() { // from class: bfa
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return v41.c(view, p41Var, fs2Var, obj);
            }
        });
    }

    public static void e(final View view, final p41 p41Var, p41 p41Var2, final fs2 fs2Var, hs2 hs2Var) {
        bd2 bd2VarL = p41Var.l();
        bd2 bd2VarL2 = p41Var2 != null ? p41Var2.l() : null;
        if (bd2VarL == null && bd2VarL2 == null) {
            return;
        }
        if (ls2.a(bd2VarL != null ? bd2VarL.c : null, bd2VarL2 != null ? bd2VarL2.c : null)) {
            if (gb1.a(bd2VarL != null ? bd2VarL.a : null, bd2VarL2 != null ? bd2VarL2.a : null)) {
                if (gb1.a(bd2VarL != null ? bd2VarL.b : null, bd2VarL2 != null ? bd2VarL2.b : null)) {
                    return;
                }
            }
        }
        tq.a(view, p41Var, fs2Var);
        bd2 bd2VarL3 = p41Var.l();
        if (bd2VarL3 == null) {
            return;
        }
        if (ls2.a(bd2VarL3.c) && gb1.a(bd2VarL3.a) && gb1.a(bd2VarL3.b)) {
            return;
        }
        bd2 bd2VarL4 = p41Var.l();
        nl3 nl3Var = new nl3() { // from class: afa
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return v41.d(view, p41Var, fs2Var, obj);
            }
        };
        if (bd2VarL4 == null) {
            return;
        }
        as2 as2Var = bd2VarL4.c;
        hs2Var.a(as2Var != null ? as2Var.a(fs2Var, nl3Var) : null);
        js2.a(hs2Var, bd2VarL4.a, fs2Var, nl3Var);
        js2.a(hs2Var, bd2VarL4.b, fs2Var, nl3Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:268:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:275:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:277:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:28:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:29:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:41:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:42:0x00df  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:52:0x0103  */
    /* JADX WARN: Code duplicated, block: B:54:0x0107  */
    /* JADX WARN: Code duplicated, block: B:55:0x010a  */
    /* JADX WARN: Code duplicated, block: B:56:0x010d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0110  */
    /* JADX WARN: Code duplicated, block: B:58:0x0113  */
    /* JADX WARN: Code duplicated, block: B:59:0x0116  */
    /* JADX WARN: Code duplicated, block: B:60:0x0119  */
    /* JADX WARN: Code duplicated, block: B:61:0x011c  */
    /* JADX WARN: Code duplicated, block: B:62:0x011f  */
    /* JADX WARN: Code duplicated, block: B:63:0x0122  */
    /* JADX WARN: Code duplicated, block: B:64:0x0124 A[PHI: r5
      0x0124: PHI (r5v2 java.lang.String) = 
      (r5v1 java.lang.String)
      (r5v3 java.lang.String)
      (r5v4 java.lang.String)
      (r5v5 java.lang.String)
      (r5v6 java.lang.String)
      (r5v7 java.lang.String)
      (r5v8 java.lang.String)
      (r5v9 java.lang.String)
      (r5v10 java.lang.String)
      (r5v11 java.lang.String)
      (r5v12 java.lang.String)
     binds: [B:51:0x0100, B:63:0x0122, B:62:0x011f, B:61:0x011c, B:60:0x0119, B:59:0x0116, B:58:0x0113, B:57:0x0110, B:56:0x010d, B:55:0x010a, B:54:0x0107] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x0128  */
    /* JADX WARN: Code duplicated, block: B:67:0x012a  */
    /* JADX WARN: Code duplicated, block: B:71:0x0136  */
    /* JADX WARN: Code duplicated, block: B:73:0x013c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:77:0x0146  */
    /* JADX WARN: Code duplicated, block: B:81:0x014d  */
    /* JADX WARN: Code duplicated, block: B:84:0x0154  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a4  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void a(tt ttVar, View view, br0 br0Var, br0 br0Var2) {
        Context context;
        mr0 mr0VarN;
        lr0 lr0Var;
        nr0 nr0VarA;
        String str;
        boolean z;
        AccessibilityDelegateCompat vs2Var;
        boolean z2;
        mr0 mr0VarN2;
        lr0 lr0Var2;
        mr0 mr0VarN3;
        lr0 lr0Var3;
        View view2;
        boolean z3;
        f51 f51Var;
        if1 if1Var;
        hf1 hf1VarZ;
        gf1 gf1Var;
        gf1 gf1Var2;
        hf1 hf1VarZ2;
        gf1 gf1Var3;
        gf1 gf1Var4;
        hf1 hf1VarZ3;
        gf1 gf1Var5;
        gf1 gf1Var6;
        hf1 hf1VarZ4;
        gf1 gf1Var7;
        gf1 gf1Var8;
        hf1 hf1VarZ5;
        gf1 gf1Var9;
        gf1 gf1Var10;
        view.getClass();
        wh1 wh1Var = (wh1) view;
        wh1Var.b();
        wh1Var.setDiv(br0Var);
        wh1Var.setBindingContext(ttVar);
        p41 p41VarA = br0Var.a();
        p41 p41VarA2 = br0Var2 != null ? br0Var2.a() : null;
        fs2 fs2Var = ttVar.b;
        vq0 vq0Var = ttVar.a;
        hs2 hs2VarA = s55.a(view);
        view.setDefaultFocusHighlightEnabled(false);
        if (!defpackage.aa4.e(p41VarA.a(), p41VarA2 != null ? p41VarA2.a() : null)) {
            int iA = vq0Var.o.c().a(p41VarA.a());
            view.setTag(p41VarA.a());
            view.setId(iA);
        }
        so1 so1Var = this.e;
        bo2 bo2Var = so1Var.a;
        vq0 vq0Var2 = ttVar.a;
        ao2 ao2VarA = bo2Var.a(vq0Var2.Q, vq0Var2.O);
        fs2 fs2Var2 = ttVar.b;
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new ro1(-1, -2));
        }
        so1Var.b(view, p41VarA, p41VarA2, fs2Var2, hs2VarA, ao2VarA);
        so1Var.a(view, p41VarA, p41VarA2, fs2Var2, hs2VarA, ao2VarA);
        c(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
        a(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
        a(view, ttVar, p41VarA, p41VarA2);
        or0 or0Var = this.d;
        or0Var.getClass();
        if (p41VarA.n() != null) {
            s0 s0Var = or0Var.a;
            context = view.getContext();
            s0Var.getClass();
            if (s0.a(context)) {
                if (p41VarA2 == null) {
                    mr0VarN = p41VarA.n();
                    if (mr0VarN != null) {
                        lr0Var = mr0VarN.g;
                    } else {
                        lr0Var = null;
                    }
                    if (lr0Var == null) {
                        lr0Var = lr0.AUTO;
                    }
                    nr0VarA = or0.a(lr0Var, p41VarA);
                    if (nr0VarA == nr0.LIST || !(view instanceof ln)) {
                        str = "";
                        switch (nr0VarA.ordinal()) {
                            case 0:
                            case 3:
                            case 5:
                            case 6:
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName = view.getAccessibilityClassName();
                                if ((str.length() != 0 || str.equals(accessibilityClassName)) && !z) {
                                    vs2Var = null;
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX || nr0VarA == nr0.RADIO_BUTTON) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 1:
                                str = "android.widget.Button";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName2 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 2:
                                str = AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName;
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName3 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 4:
                                str = "android.widget.ImageView";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName4 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 7:
                                str = "android.widget.Spinner";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName5 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 8:
                                str = "android.widget.TabWidget";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName6 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 9:
                                str = "androidx.viewpager.widget.ViewPager";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName7 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 10:
                                str = AndroidComposeViewAccessibilityDelegateCompat.TextClassName;
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName8 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 11:
                                str = "android.widget.RadioButton";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName9 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 12:
                                str = "android.widget.CheckBox";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName10 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 13:
                                str = "android.view.ViewGroup";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            default:
                                defpackage.me0.e();
                                break;
                        }
                    }
                    vs2Var = new q0((ln) view);
                    if (vs2Var != null) {
                        ViewCompat.setAccessibilityDelegate(view, vs2Var);
                    }
                } else {
                    mr0VarN2 = p41VarA.n();
                    if (mr0VarN2 != null) {
                        lr0Var2 = mr0VarN2.g;
                    } else {
                        lr0Var2 = null;
                    }
                    mr0VarN3 = p41VarA2.n();
                    if (mr0VarN3 != null) {
                        lr0Var3 = mr0VarN3.g;
                    } else {
                        lr0Var3 = null;
                    }
                    if (lr0Var2 != lr0Var3) {
                        mr0VarN = p41VarA.n();
                        if (mr0VarN != null) {
                            lr0Var = mr0VarN.g;
                        } else {
                            lr0Var = null;
                        }
                        if (lr0Var == null) {
                            lr0Var = lr0.AUTO;
                        }
                        nr0VarA = or0.a(lr0Var, p41VarA);
                        if (nr0VarA == nr0.LIST) {
                            str = "";
                            switch (nr0VarA.ordinal()) {
                                case 0:
                                case 3:
                                case 5:
                                case 6:
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName12 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 1:
                                    str = "android.widget.Button";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName13 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 2:
                                    str = AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName;
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName14 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 4:
                                    str = "android.widget.ImageView";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName15 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 7:
                                    str = "android.widget.Spinner";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName16 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 8:
                                    str = "android.widget.TabWidget";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName17 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 9:
                                    str = "androidx.viewpager.widget.ViewPager";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName18 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 10:
                                    str = AndroidComposeViewAccessibilityDelegateCompat.TextClassName;
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName19 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 11:
                                    str = "android.widget.RadioButton";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName110 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 12:
                                    str = "android.widget.CheckBox";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName111 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 13:
                                    str = "android.view.ViewGroup";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName112 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                default:
                                    defpackage.me0.e();
                                    break;
                            }
                        }
                        str = "";
                        switch (nr0VarA.ordinal()) {
                            case 0:
                            case 3:
                            case 5:
                            case 6:
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName113 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 1:
                                str = "android.widget.Button";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName114 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 2:
                                str = AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName;
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName115 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 4:
                                str = "android.widget.ImageView";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName116 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 7:
                                str = "android.widget.Spinner";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName117 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 8:
                                str = "android.widget.TabWidget";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName118 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 9:
                                str = "androidx.viewpager.widget.ViewPager";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName119 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 10:
                                str = AndroidComposeViewAccessibilityDelegateCompat.TextClassName;
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1110 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 11:
                                str = "android.widget.RadioButton";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1111 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 12:
                                str = "android.widget.CheckBox";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1112 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 13:
                                str = "android.view.ViewGroup";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1113 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            default:
                                defpackage.me0.e();
                                break;
                        }
                        if (vs2Var != null) {
                            ViewCompat.setAccessibilityDelegate(view, vs2Var);
                        }
                    }
                }
            }
            or0Var.b(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
            or0Var.c(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
            or0Var.d(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
            or0Var.a(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
            view2 = view;
            fs2Var = fs2Var;
            z3 = false;
        } else if ((p41VarA2 != null ? p41VarA2.n() : null) == null) {
            or0.a(view, (jr0) null);
            z3 = false;
            view2 = view;
        } else {
            s0 s0Var2 = or0Var.a;
            context = view.getContext();
            s0Var2.getClass();
            if (s0.a(context)) {
                if (p41VarA2 == null) {
                    mr0VarN = p41VarA.n();
                    if (mr0VarN != null) {
                        lr0Var = mr0VarN.g;
                    } else {
                        lr0Var = null;
                    }
                    if (lr0Var == null) {
                        lr0Var = lr0.AUTO;
                    }
                    nr0VarA = or0.a(lr0Var, p41VarA);
                    if (nr0VarA == nr0.LIST) {
                        str = "";
                        switch (nr0VarA.ordinal()) {
                            case 0:
                            case 3:
                            case 5:
                            case 6:
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1114 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 1:
                                str = "android.widget.Button";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1115 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 2:
                                str = AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName;
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1116 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 4:
                                str = "android.widget.ImageView";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1117 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 7:
                                str = "android.widget.Spinner";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1118 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 8:
                                str = "android.widget.TabWidget";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1119 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 9:
                                str = "androidx.viewpager.widget.ViewPager";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11110 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 10:
                                str = AndroidComposeViewAccessibilityDelegateCompat.TextClassName;
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 11:
                                str = "android.widget.RadioButton";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11112 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 12:
                                str = "android.widget.CheckBox";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11113 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 13:
                                str = "android.view.ViewGroup";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11114 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            default:
                                defpackage.me0.e();
                                break;
                        }
                    }
                    str = "";
                    switch (nr0VarA.ordinal()) {
                        case 0:
                        case 3:
                        case 5:
                        case 6:
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName11115 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 1:
                            str = "android.widget.Button";
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName11116 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 2:
                            str = AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName;
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName11117 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 4:
                            str = "android.widget.ImageView";
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName11118 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 7:
                            str = "android.widget.Spinner";
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName11119 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 8:
                            str = "android.widget.TabWidget";
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName111110 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 9:
                            str = "androidx.viewpager.widget.ViewPager";
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName111111 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 10:
                            str = AndroidComposeViewAccessibilityDelegateCompat.TextClassName;
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName111112 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 11:
                            str = "android.widget.RadioButton";
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName111113 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 12:
                            str = "android.widget.CheckBox";
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName111114 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        case 13:
                            str = "android.view.ViewGroup";
                            if (nr0VarA == nr0.HEADER) {
                                z = true;
                            } else {
                                z = false;
                            }
                            CharSequence accessibilityClassName111115 = view.getAccessibilityClassName();
                            if (str.length() != 0) {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            } else {
                                if (nr0VarA != nr0.CHECK_BOX) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                vs2Var = new vs2(str, z, z2);
                            }
                            break;
                        default:
                            defpackage.me0.e();
                            break;
                    }
                    if (vs2Var != null) {
                        ViewCompat.setAccessibilityDelegate(view, vs2Var);
                    }
                } else {
                    mr0VarN2 = p41VarA.n();
                    if (mr0VarN2 != null) {
                        lr0Var2 = mr0VarN2.g;
                    } else {
                        lr0Var2 = null;
                    }
                    mr0VarN3 = p41VarA2.n();
                    if (mr0VarN3 != null) {
                        lr0Var3 = mr0VarN3.g;
                    } else {
                        lr0Var3 = null;
                    }
                    if (lr0Var2 != lr0Var3) {
                        mr0VarN = p41VarA.n();
                        if (mr0VarN != null) {
                            lr0Var = mr0VarN.g;
                        } else {
                            lr0Var = null;
                        }
                        if (lr0Var == null) {
                            lr0Var = lr0.AUTO;
                        }
                        nr0VarA = or0.a(lr0Var, p41VarA);
                        if (nr0VarA == nr0.LIST) {
                            str = "";
                            switch (nr0VarA.ordinal()) {
                                case 0:
                                case 3:
                                case 5:
                                case 6:
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName111116 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 1:
                                    str = "android.widget.Button";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName111117 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 2:
                                    str = AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName;
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName111118 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 4:
                                    str = "android.widget.ImageView";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName111119 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 7:
                                    str = "android.widget.Spinner";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName1111110 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 8:
                                    str = "android.widget.TabWidget";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName1111111 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 9:
                                    str = "androidx.viewpager.widget.ViewPager";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName1111112 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 10:
                                    str = AndroidComposeViewAccessibilityDelegateCompat.TextClassName;
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName1111113 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 11:
                                    str = "android.widget.RadioButton";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName1111114 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 12:
                                    str = "android.widget.CheckBox";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName1111115 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                case 13:
                                    str = "android.view.ViewGroup";
                                    if (nr0VarA == nr0.HEADER) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    CharSequence accessibilityClassName1111116 = view.getAccessibilityClassName();
                                    if (str.length() != 0) {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    } else {
                                        if (nr0VarA != nr0.CHECK_BOX) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        vs2Var = new vs2(str, z, z2);
                                    }
                                    break;
                                default:
                                    defpackage.me0.e();
                                    break;
                            }
                        }
                        str = "";
                        switch (nr0VarA.ordinal()) {
                            case 0:
                            case 3:
                            case 5:
                            case 6:
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1111117 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 1:
                                str = "android.widget.Button";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1111118 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 2:
                                str = AndroidComposeViewAccessibilityDelegateCompat.TextFieldClassName;
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName1111119 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 4:
                                str = "android.widget.ImageView";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111110 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 7:
                                str = "android.widget.Spinner";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111111 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 8:
                                str = "android.widget.TabWidget";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111112 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 9:
                                str = "androidx.viewpager.widget.ViewPager";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111113 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 10:
                                str = AndroidComposeViewAccessibilityDelegateCompat.TextClassName;
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111114 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 11:
                                str = "android.widget.RadioButton";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111115 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 12:
                                str = "android.widget.CheckBox";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111116 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            case 13:
                                str = "android.view.ViewGroup";
                                if (nr0VarA == nr0.HEADER) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                CharSequence accessibilityClassName11111117 = view.getAccessibilityClassName();
                                if (str.length() != 0) {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                } else {
                                    if (nr0VarA != nr0.CHECK_BOX) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    vs2Var = new vs2(str, z, z2);
                                }
                                break;
                            default:
                                defpackage.me0.e();
                                break;
                        }
                        if (vs2Var != null) {
                            ViewCompat.setAccessibilityDelegate(view, vs2Var);
                        }
                    }
                }
            }
            or0Var.b(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
            or0Var.c(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
            or0Var.d(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
            or0Var.a(view, p41VarA, p41VarA2, fs2Var, hs2VarA);
            view2 = view;
            fs2Var = fs2Var;
            z3 = false;
        }
        p41 p41Var = p41VarA2;
        b(view2, p41VarA, p41Var, fs2Var, hs2VarA);
        fs2 fs2Var3 = fs2Var;
        a(view, ttVar, p41VarA, p41Var, hs2VarA, (Drawable) null);
        jf1 jf1Var = this.c;
        hf1 hf1VarZ6 = p41VarA.z();
        f51 f51Var2 = hf1VarZ6 != null ? hf1VarZ6.b : null;
        f51 f51VarW = p41VarA.w();
        if (f51Var2 == null) {
            f51Var = f51VarW;
        } else {
            jf1Var.getClass();
            if (!jf1.a(f51Var2) && view.isFocused()) {
                f51Var = f51Var2;
            } else {
                f51Var = f51VarW;
            }
        }
        jf1Var.getClass();
        jf1.a(ttVar, f51Var, view);
        View.OnFocusChangeListener onFocusChangeListener = view.getOnFocusChangeListener();
        if1 if1Var2 = onFocusChangeListener instanceof if1 ? (if1) onFocusChangeListener : null;
        if (if1Var2 != null || !jf1.a(f51Var2)) {
            if (if1Var2 != null && if1Var2.d == null && if1Var2.e == null && jf1.a(f51Var2)) {
                view.setOnFocusChangeListener(null);
            } else {
                if1 if1Var3 = new if1(jf1Var, ttVar);
                if1Var3.b = f51Var2;
                if1Var3.c = f51VarW;
                if (if1Var2 != null) {
                    List list = if1Var2.d;
                    List list2 = if1Var2.e;
                    if1Var3.d = list;
                    if1Var3.e = list2;
                }
                view.setOnFocusChangeListener(if1Var3);
            }
        }
        d(view, p41VarA, p41Var, fs2Var3, hs2VarA);
        zh2 zh2VarC = vq0Var.o.c();
        hf1 hf1VarZ7 = p41VarA.z();
        as2 as2Var = (hf1VarZ7 == null || (gf1Var10 = hf1VarZ7.c) == null) ? null : gf1Var10.b;
        if (!ls2.a(as2Var, (p41Var == null || (hf1VarZ5 = p41Var.z()) == null || (gf1Var9 = hf1VarZ5.c) == null) ? null : gf1Var9.b)) {
            String str2 = as2Var != null ? (String) as2Var.a(fs2Var3) : null;
            view.setNextFocusForwardId(zh2VarC.a(str2));
            view.setAccessibilityTraversalBefore(zh2VarC.a(str2));
            if (!ls2.a(as2Var)) {
                hs2VarA.a(as2Var != null ? as2Var.a(fs2Var3, new q41(view, zh2VarC)) : null);
            }
        }
        hf1 hf1VarZ8 = p41VarA.z();
        as2 as2Var2 = (hf1VarZ8 == null || (gf1Var8 = hf1VarZ8.c) == null) ? null : gf1Var8.c;
        if (!ls2.a(as2Var2, (p41Var == null || (hf1VarZ4 = p41Var.z()) == null || (gf1Var7 = hf1VarZ4.c) == null) ? null : gf1Var7.c)) {
            view.setNextFocusLeftId(zh2VarC.a(as2Var2 != null ? (String) as2Var2.a(fs2Var3) : null));
            if (!ls2.a(as2Var2)) {
                hs2VarA.a(as2Var2 != null ? as2Var2.a(fs2Var3, new r41(view, zh2VarC)) : null);
            }
        }
        hf1 hf1VarZ9 = p41VarA.z();
        as2 as2Var3 = (hf1VarZ9 == null || (gf1Var6 = hf1VarZ9.c) == null) ? null : gf1Var6.d;
        if (!ls2.a(as2Var3, (p41Var == null || (hf1VarZ3 = p41Var.z()) == null || (gf1Var5 = hf1VarZ3.c) == null) ? null : gf1Var5.d)) {
            view.setNextFocusRightId(zh2VarC.a(as2Var3 != null ? (String) as2Var3.a(fs2Var3) : null));
            if (!ls2.a(as2Var3)) {
                hs2VarA.a(as2Var3 != null ? as2Var3.a(fs2Var3, new s41(view, zh2VarC)) : null);
            }
        }
        hf1 hf1VarZ10 = p41VarA.z();
        as2 as2Var4 = (hf1VarZ10 == null || (gf1Var4 = hf1VarZ10.c) == null) ? null : gf1Var4.e;
        if (!ls2.a(as2Var4, (p41Var == null || (hf1VarZ2 = p41Var.z()) == null || (gf1Var3 = hf1VarZ2.c) == null) ? null : gf1Var3.e)) {
            view.setNextFocusUpId(zh2VarC.a(as2Var4 != null ? (String) as2Var4.a(fs2Var3) : null));
            if (!ls2.a(as2Var4)) {
                hs2VarA.a(as2Var4 != null ? as2Var4.a(fs2Var3, new t41(view, zh2VarC)) : null);
            }
        }
        hf1 hf1VarZ11 = p41VarA.z();
        as2 as2Var5 = (hf1VarZ11 == null || (gf1Var2 = hf1VarZ11.c) == null) ? null : gf1Var2.a;
        if (!ls2.a(as2Var5, (p41Var == null || (hf1VarZ = p41Var.z()) == null || (gf1Var = hf1VarZ.c) == null) ? null : gf1Var.a)) {
            view.setNextFocusDownId(zh2VarC.a(as2Var5 != null ? (String) as2Var5.a(fs2Var3) : null));
            if (!ls2.a(as2Var5)) {
                hs2VarA.a(as2Var5 != null ? as2Var5.a(fs2Var3, new u41(view, zh2VarC)) : null);
            }
        }
        hf1 hf1VarZ12 = p41VarA.z();
        List list3 = hf1VarZ12 != null ? hf1VarZ12.e : null;
        hf1 hf1VarZ13 = p41VarA.z();
        List list4 = hf1VarZ13 != null ? hf1VarZ13.d : null;
        jf1 jf1Var2 = this.c;
        jf1Var2.getClass();
        View.OnFocusChangeListener onFocusChangeListener2 = view.getOnFocusChangeListener();
        if1 if1Var4 = onFocusChangeListener2 instanceof if1 ? (if1) onFocusChangeListener2 : null;
        boolean z4 = z3;
        if (if1Var4 == null) {
            List[] listArr = new List[2];
            listArr[z4 ? 1 : 0] = list3;
            listArr[1] = list4;
            if (!j20.a(listArr)) {
                if (if1Var4 == null && if1Var4.b == null) {
                    List[] listArr2 = new List[2];
                    listArr2[z4 ? 1 : 0] = list3;
                    listArr2[1] = list4;
                    if (j20.a(listArr2)) {
                        view.setOnFocusChangeListener(null);
                    } else {
                        if1Var = new if1(jf1Var2, ttVar);
                        if (if1Var4 != null) {
                            f51 f51Var3 = if1Var4.b;
                            f51 f51Var4 = if1Var4.c;
                            if1Var.b = f51Var3;
                            if1Var.c = f51Var4;
                        }
                        if1Var.d = list3;
                        if1Var.e = list4;
                        view.setOnFocusChangeListener(if1Var);
                    }
                } else {
                    if1Var = new if1(jf1Var2, ttVar);
                    if (if1Var4 != null) {
                        f51 f51Var5 = if1Var4.b;
                        f51 f51Var6 = if1Var4.c;
                        if1Var.b = f51Var5;
                        if1Var.c = f51Var6;
                    }
                    if1Var.d = list3;
                    if1Var.e = list4;
                    view.setOnFocusChangeListener(if1Var);
                }
            }
        } else if (if1Var4 == null) {
            if1Var = new if1(jf1Var2, ttVar);
            if (if1Var4 != null) {
                f51 f51Var7 = if1Var4.b;
                f51 f51Var8 = if1Var4.c;
                if1Var.b = f51Var7;
                if1Var.c = f51Var8;
            }
            if1Var.d = list3;
            if1Var.e = list4;
            view.setOnFocusChangeListener(if1Var);
        } else {
            if1Var = new if1(jf1Var2, ttVar);
            if (if1Var4 != null) {
                f51 f51Var9 = if1Var4.b;
                f51 f51Var10 = if1Var4.c;
                if1Var.b = f51Var9;
                if1Var.c = f51Var10;
            }
            if1Var.d = list3;
            if1Var.e = list4;
            view.setOnFocusChangeListener(if1Var);
        }
        a(view, vq0Var, p41VarA, p41Var, fs2Var3, hs2VarA);
        e(view, p41VarA, p41Var, fs2Var3, hs2VarA);
        List listJ = p41VarA.j();
        if (listJ != null) {
            this.b.getClass();
            view.setTag(R$id.monetization_ads_divkit_div_tooltips_tag, listJ);
        }
        if ((p41VarA instanceof ek1) || (p41VarA instanceof k52)) {
            return;
        }
        view.setFocusable(p41VarA.z() != null ? true : z4 ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(View view, p41 p41Var, p41 p41Var2, fs2 fs2Var, hs2 hs2Var) {
        if (ls2.a(p41Var.u(), p41Var2 != null ? p41Var2.u() : null)) {
            return;
        }
        view.setAlpha((float) ((Number) p41Var.u().a(fs2Var)).doubleValue());
        s51 s51Var = view instanceof s51 ? (s51) view : null;
        if (s51Var != null) {
            s51Var.e();
        }
        if (p41Var.u() instanceof xr2) {
            return;
        }
        hs2Var.a(p41Var.u().a(fs2Var, new jx9(1, this, view)));
    }

    public static final j59 c(View view, p41 p41Var, fs2 fs2Var, Object obj) {
        tq.b(view, p41Var.y(), fs2Var);
        return j59.a;
    }

    public static final j59 d(View view, p41 p41Var, fs2 fs2Var, Object obj) {
        tq.a(view, p41Var, fs2Var);
        return j59.a;
    }

    public static final j59 b(View view, p41 p41Var, fs2 fs2Var, Object obj) {
        tq.a(view, p41Var.v(), fs2Var);
        return j59.a;
    }

    public static final boolean a(yo1 yo1Var, vq0 vq0Var) {
        yo1Var.a.clear();
        for (Map.Entry entry : vq0Var.L.entrySet()) {
            fs2 fs2Var = (fs2) entry.getKey();
            for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                l76.a(vq0Var, (String) entry2.getKey(), String.valueOf(((Number) entry2.getValue()).intValue()), fs2Var);
            }
        }
        vq0Var.L.clear();
        return true;
    }

    public final void a(final View view, final tt ttVar, p41 p41Var, p41 p41Var2) {
        to1 to1VarG;
        View view2;
        String strA;
        to1 to1VarG2;
        to1 to1VarG3;
        final vq0 vq0Var = ttVar.a;
        db1 db1Var = vq0Var.Q;
        if (db1Var == null || (to1VarG = p41Var.g()) == null) {
            return;
        }
        if (ra8.v(to1VarG.b, (p41Var2 == null || (to1VarG3 = p41Var2.g()) == null) ? null : to1VarG3.b, false)) {
            if (ra8.v(to1VarG.a, (p41Var2 == null || (to1VarG2 = p41Var2.g()) == null) ? null : to1VarG2.a, false)) {
                return;
            }
        }
        if ((p41Var2 != null ? p41Var2.g() : null) != null) {
            Object tag = view.getTag(R$id.monetization_ads_divkit_div_layout_provider_listener_id);
            view.removeOnLayoutChangeListener(tag instanceof View.OnLayoutChangeListener ? (View.OnLayoutChangeListener) tag : null);
        }
        final String str = to1VarG.b;
        final String str2 = to1VarG.a;
        if ((str != null && str.length() != 0) || (str2 != null && str2.length() != 0)) {
            yo1 yo1Var = (yo1) vq0Var.M.get(db1Var);
            if (yo1Var == null) {
                yo1Var = new yo1();
                for (cb1 cb1Var : db1Var.c) {
                    br0 br0Var = cb1Var.a;
                    long j = cb1Var.b;
                    String strValueOf = String.valueOf(j);
                    p41 p41VarA = br0Var.a();
                    if (p41VarA instanceof z22) {
                        z22 z22Var = (z22) p41VarA;
                        strA = z22Var.p;
                        if (strA == null && (strA = z22Var.x) == null) {
                            strA = "";
                        }
                    } else {
                        strA = p41VarA.a();
                    }
                    if (strA == null) {
                        bz.a(0);
                        strA = (String) bz.a.get(0);
                    }
                    yo1Var.b(br0Var, ttVar, new n32(j, defpackage.kx2.b, u96.i(strValueOf, strA), 8));
                }
                vq0Var.M.put(db1Var, yo1Var);
            }
            final yo1 yo1Var2 = yo1Var;
            View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: zea
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    v41.a(view, this, vq0Var, str, yo1Var2, ttVar, str2, view3, i, i2, i3, i4, i5, i6, i7, i8);
                }
            };
            if (view.getWidth() > 0 || view.getHeight() > 0) {
                view2 = view;
                onLayoutChangeListener.onLayoutChange(view2, view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), 0, 0, 0, 0);
            } else {
                view2 = view;
            }
            view2.addOnLayoutChangeListener(onLayoutChangeListener);
            view2.setTag(R$id.monetization_ads_divkit_div_layout_provider_listener_id, onLayoutChangeListener);
            if (vq0Var.N != null) {
                return;
            }
            sr4 sr4VarA = pq4.a(ll2.b, new defpackage.ul(4, yo1Var2, vq0Var));
            vq0Var.setClearVariablesListener$mobileads_externalRelease(sr4VarA);
            vq0Var.getViewTreeObserver().addOnPreDrawListener(sr4VarA);
            return;
        }
        o01.a(vq0Var, new Throwable("Neither width_variable_name nor height_variable_name found."));
    }

    public static void a(View view, p41 p41Var, p41 p41Var2, fs2 fs2Var, hs2 hs2Var) {
        if (ls2.a(p41Var.f(), p41Var2 != null ? p41Var2.f() : null)) {
            if (ls2.a(p41Var.q(), p41Var2 != null ? p41Var2.q() : null)) {
                return;
            }
        }
        as2 as2VarF = p41Var.f();
        f11 f11Var = as2VarF != null ? (f11) as2VarF.a(fs2Var) : null;
        as2 as2VarQ = p41Var.q();
        pq.a(view, f11Var, as2VarQ != null ? (h11) as2VarQ.a(fs2Var) : null);
        if (ls2.a(p41Var.f()) && ls2.a(p41Var.q())) {
            return;
        }
        defpackage.lh0 lh0Var = new defpackage.lh0(view, p41Var, fs2Var, 1);
        as2 as2VarF2 = p41Var.f();
        hs2Var.a(as2VarF2 != null ? as2VarF2.a(fs2Var, lh0Var) : null);
        as2 as2VarQ2 = p41Var.q();
        hs2Var.a(as2VarQ2 != null ? as2VarQ2.a(fs2Var, lh0Var) : null);
    }

    public static final j59 a(View view, p41 p41Var, fs2 fs2Var, Object obj) {
        as2 as2VarF = p41Var.f();
        f11 f11Var = as2VarF != null ? (f11) as2VarF.a(fs2Var) : null;
        as2 as2VarQ = p41Var.q();
        pq.a(view, f11Var, as2VarQ != null ? (h11) as2VarQ.a(fs2Var) : null);
        return j59.a;
    }

    public static final void a(View view, v41 v41Var, vq0 vq0Var, String str, yo1 yo1Var, tt ttVar, String str2, View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        fs2 fs2Var = ttVar.b;
        v41Var.getClass();
        a(vq0Var, displayMetrics, str, yo1Var, i, i3, i5, i7, fs2Var);
        a(vq0Var, displayMetrics, str2, yo1Var, i2, i4, i6, i8, ttVar.b);
    }

    public static void a(vq0 vq0Var, DisplayMetrics displayMetrics, String str, yo1 yo1Var, int i, int i2, int i3, int i4, fs2 fs2Var) {
        int i5;
        if (str == null || str.length() == 0 || (i5 = i2 - i) == i4 - i3) {
            return;
        }
        if (yo1Var.a.contains(str)) {
            o01.a(vq0Var, new Throwable("Size subscriber affects original view size. Relayout was prevented."));
            return;
        }
        LinkedHashMap linkedHashMap = vq0Var.L;
        Object linkedHashMap2 = linkedHashMap.get(fs2Var);
        if (linkedHashMap2 == null) {
            linkedHashMap2 = new LinkedHashMap();
            linkedHashMap.put(fs2Var, linkedHashMap2);
        }
        ((Map) linkedHashMap2).put(str, Integer.valueOf(defpackage.w65.b(uq.a(Integer.valueOf(i5), displayMetrics))));
    }

    public static void a(View view, vq0 vq0Var, p41 p41Var, fs2 fs2Var, boolean z) {
        int i;
        ld2 ld2Var = vq0Var.V;
        int iOrdinal = ((ri2) p41Var.getVisibility().a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            i = 0;
        } else if (iOrdinal == 1) {
            i = 4;
        } else {
            if (iOrdinal != 2) {
                defpackage.me0.e();
                return;
            }
            i = 8;
        }
        if (i != 0) {
            view.clearAnimation();
        }
        int visibility = view.getVisibility();
        List listC = p41Var.c();
        Transition transitionA = null;
        if (listC == null || listC.contains(pd2.VISIBILITY_CHANGE)) {
            ArrayList<jd2> arrayList = ld2Var.b;
            ArrayList arrayList2 = new ArrayList();
            for (jd2 jd2Var : arrayList) {
                id2 id2Var = defpackage.aa4.e(jd2Var.b, view) ? (id2) defpackage.qn1.c0(jd2Var.d) : null;
                if (id2Var != null) {
                    arrayList2.add(id2Var);
                }
            }
            id2 id2Var2 = (id2) defpackage.qn1.c0(arrayList2);
            if (id2Var2 == null) {
                ArrayList<jd2> arrayList3 = ld2Var.c;
                ArrayList arrayList4 = new ArrayList();
                for (jd2 jd2Var2 : arrayList3) {
                    id2 id2Var3 = defpackage.aa4.e(jd2Var2.b, view) ? (id2) defpackage.qn1.c0(jd2Var2.d) : null;
                    if (id2Var3 != null) {
                        arrayList4.add(id2Var3);
                    }
                }
                id2Var2 = (id2) defpackage.qn1.c0(arrayList4);
                if (id2Var2 == null) {
                    id2Var2 = null;
                }
            }
            if (id2Var2 != null) {
                visibility = id2Var2.a;
            }
            hd2 hd2Var = (hd2) vq0Var.o.c.getValue();
            if ((visibility == 4 || visibility == 8) && i == 0) {
                s21 s21VarR = p41Var.r();
                if (s21VarR == null) {
                    hd2Var.getClass();
                } else {
                    transitionA = hd2Var.a(s21VarR, 1, fs2Var);
                }
            } else if ((i == 4 || i == 8) && visibility == 0 && !z) {
                s21 s21VarA = p41Var.A();
                if (s21VarA == null) {
                    hd2Var.getClass();
                } else {
                    transitionA = hd2Var.a(s21VarA, 2, fs2Var);
                }
            } else if (id2Var2 != null) {
                TransitionManager.endTransitions(vq0Var);
            }
            if (transitionA != null) {
                transitionA.addTarget(view);
            }
        }
        if (transitionA != null) {
            ld2Var.b.add(new jd2(transitionA, view, u96.k(new id2(i)), new ArrayList()));
            ld2Var.a();
        } else {
            view.setVisibility(i);
        }
        vq0Var.z();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(v41 v41Var, View view, double d) {
        v41Var.getClass();
        view.setAlpha((float) d);
        s51 s51Var = view instanceof s51 ? (s51) view : null;
        if (s51Var != null) {
            s51Var.e();
        }
        return j59.a;
    }

    public final void a(View view, tt ttVar, p41 p41Var, p41 p41Var2, hs2 hs2Var, Drawable drawable) {
        hf1 hf1VarZ;
        e41 e41Var = this.a;
        List listE = p41Var.e();
        List list = null;
        List listE2 = p41Var2 != null ? p41Var2.e() : null;
        hf1 hf1VarZ2 = p41Var.z();
        List list2 = hf1VarZ2 != null ? hf1VarZ2.a : null;
        if (p41Var2 != null && (hf1VarZ = p41Var2.z()) != null) {
            list = hf1VarZ.a;
        }
        List list3 = list;
        if (list2 == null) {
            e41Var.a(ttVar, view, drawable, listE, listE2, hs2Var);
        } else {
            e41Var.a(ttVar, view, drawable, listE, listE2, list2, list3, hs2Var);
        }
    }

    public final void a(final View view, final vq0 vq0Var, final p41 p41Var, p41 p41Var2, final fs2 fs2Var, hs2 hs2Var) {
        if (ls2.a(p41Var.getVisibility(), p41Var2 != null ? p41Var2.getVisibility() : null)) {
            return;
        }
        a(view, vq0Var, p41Var, fs2Var, p41Var2 == null);
        if (p41Var.getVisibility() instanceof xr2) {
            return;
        }
        hs2Var.a(p41Var.getVisibility().a(fs2Var, new nl3() { // from class: cfa
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return v41.a(this.b, view, vq0Var, p41Var, fs2Var, (ri2) obj);
            }
        }));
    }

    public static final j59 a(v41 v41Var, View view, vq0 vq0Var, p41 p41Var, fs2 fs2Var, ri2 ri2Var) {
        v41Var.getClass();
        a(view, vq0Var, p41Var, fs2Var, false);
        return j59.a;
    }
}
