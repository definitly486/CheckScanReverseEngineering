package yads;

import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pr2;
import defpackage.ta8;
import defpackage.ts9;
import yads.or0;

/* JADX INFO: loaded from: classes6.dex */
public final class or0 {
    public final s0 a;

    public or0(s0 s0Var) {
        this.a = s0Var;
    }

    public static nr0 a(lr0 lr0Var, p41 p41Var) {
        switch (lr0Var) {
            case NONE:
                return nr0.NONE;
            case BUTTON:
                return nr0.BUTTON;
            case IMAGE:
                return nr0.IMAGE;
            case TEXT:
                return nr0.TEXT;
            case EDIT_TEXT:
                return nr0.EDIT_TEXT;
            case HEADER:
                return nr0.HEADER;
            case TAB_BAR:
                return nr0.TAB_WIDGET;
            case LIST:
                return nr0.LIST;
            case SELECT:
                return nr0.SELECT;
            case CHECKBOX:
                return nr0.CHECK_BOX;
            case RADIO:
                return nr0.RADIO_BUTTON;
            case AUTO:
                if (p41Var instanceof ek1) {
                    return nr0.EDIT_TEXT;
                }
                if (p41Var instanceof b82) {
                    return nr0.TEXT;
                }
                if (p41Var instanceof y52) {
                    return nr0.TAB_WIDGET;
                }
                if (p41Var instanceof uy1) {
                    return nr0.SELECT;
                }
                if (p41Var instanceof x12) {
                    return nr0.SLIDER;
                }
                if (!(p41Var instanceof zh1) && !(p41Var instanceof eh1)) {
                    if (p41Var instanceof og1) {
                        mr0 mr0Var = ((og1) p41Var).a;
                        if ((mr0Var != null ? mr0Var.a : null) != null) {
                            return nr0.PAGER;
                        }
                    }
                    return p41Var instanceof j81 ? nr0.CONTAINER : nr0.NONE;
                }
                return nr0.IMAGE;
            default:
                defpackage.me0.e();
                return null;
        }
    }

    public final void b(final View view, final p41 p41Var, p41 p41Var2, final fs2 fs2Var, hs2 hs2Var) {
        mr0 mr0VarN;
        mr0 mr0VarN2;
        mr0 mr0VarN3 = p41Var.n();
        final as2 as2Var = mr0VarN3 != null ? mr0VarN3.a : null;
        mr0 mr0VarN4 = p41Var.n();
        final as2 as2Var2 = mr0VarN4 != null ? mr0VarN4.b : null;
        if (ls2.a(as2Var, (p41Var2 == null || (mr0VarN2 = p41Var2.n()) == null) ? null : mr0VarN2.a)) {
            if (ls2.a(as2Var2, (p41Var2 == null || (mr0VarN = p41Var2.n()) == null) ? null : mr0VarN.b)) {
                return;
            }
        }
        a(view, as2Var != null ? (String) as2Var.a(fs2Var) : null, as2Var2 != null ? (String) as2Var2.a(fs2Var) : null);
        if (ls2.a(as2Var) && ls2.a(as2Var2)) {
            return;
        }
        nl3 nl3Var = new nl3() { // from class: u4a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return or0.a(this.b, view, as2Var, fs2Var, as2Var2, p41Var, obj);
            }
        };
        hs2Var.a(as2Var != null ? as2Var.a(fs2Var, nl3Var) : null);
        hs2Var.a(as2Var2 != null ? as2Var2.a(fs2Var, nl3Var) : null);
    }

    public final void c(View view, p41 p41Var, p41 p41Var2, fs2 fs2Var, hs2 hs2Var) {
        mr0 mr0VarN;
        mr0 mr0VarN2 = p41Var.n();
        as2 as2Var = mr0VarN2 != null ? mr0VarN2.d : null;
        if (ls2.a(as2Var, (p41Var2 == null || (mr0VarN = p41Var2.n()) == null) ? null : mr0VarN.d)) {
            return;
        }
        a(view, as2Var != null ? (jr0) as2Var.a(fs2Var) : null);
        if (ls2.a(as2Var)) {
            return;
        }
        hs2Var.a(as2Var != null ? as2Var.a(fs2Var, new defpackage.ag1(3, this, view)) : null);
    }

    public final void d(View view, p41 p41Var, p41 p41Var2, fs2 fs2Var, hs2 hs2Var) {
        mr0 mr0VarN;
        mr0 mr0VarN2 = p41Var.n();
        as2 as2Var = mr0VarN2 != null ? mr0VarN2.f : null;
        if (ls2.a(as2Var, (p41Var2 == null || (mr0VarN = p41Var2.n()) == null) ? null : mr0VarN.f)) {
            return;
        }
        ViewCompat.setStateDescription(view, as2Var != null ? (String) as2Var.a(fs2Var) : null);
        if (ls2.a(as2Var)) {
            return;
        }
        hs2Var.a(as2Var != null ? as2Var.a(fs2Var, new ts9(2, this, view)) : null);
    }

    public static final j59 a(or0 or0Var, View view, as2 as2Var, fs2 fs2Var, as2 as2Var2, p41 p41Var, Object obj) {
        as2 as2Var3;
        jr0 jr0Var = null;
        String str = as2Var != null ? (String) as2Var.a(fs2Var) : null;
        String str2 = as2Var2 != null ? (String) as2Var2.a(fs2Var) : null;
        or0Var.getClass();
        a(view, str, str2);
        mr0 mr0VarN = p41Var.n();
        if (mr0VarN != null && (as2Var3 = mr0VarN.d) != null) {
            jr0Var = (jr0) as2Var3.a(fs2Var);
        }
        a(view, jr0Var);
        return j59.a;
    }

    public static final j59 a(or0 or0Var, View view, jr0 jr0Var) {
        or0Var.getClass();
        a(view, jr0Var);
        return j59.a;
    }

    public static void a(View view, jr0 jr0Var) {
        jr0 jr0Var2 = jr0.MERGE;
        int i = 0;
        ViewCompat.setScreenReaderFocusable(view, jr0Var == jr0Var2);
        if (jr0Var == jr0.EXCLUDE) {
            i = 4;
        } else {
            CharSequence contentDescription = view.getContentDescription();
            if (contentDescription != null && !ta8.M(contentDescription) && (jr0Var == jr0Var2 || (view instanceof yi1) || (view instanceof nh1))) {
                i = 1;
            }
        }
        view.setImportantForAccessibility(i);
    }

    public static final j59 a(or0 or0Var, View view, String str) {
        or0Var.getClass();
        ViewCompat.setStateDescription(view, str);
        return j59.a;
    }

    public final void a(View view, p41 p41Var, p41 p41Var2, fs2 fs2Var, hs2 hs2Var) {
        mr0 mr0VarN;
        mr0 mr0VarN2 = p41Var.n();
        as2 as2Var = mr0VarN2 != null ? mr0VarN2.c : null;
        if (ls2.a(as2Var, (p41Var2 == null || (mr0VarN = p41Var2.n()) == null) ? null : mr0VarN.c)) {
            return;
        }
        a(view, p41Var, as2Var != null ? (Boolean) as2Var.a(fs2Var) : null);
        if (ls2.a(as2Var)) {
            return;
        }
        hs2Var.a(as2Var != null ? as2Var.a(fs2Var, new pr2(this, view, p41Var, 1)) : null);
    }

    public static final j59 a(or0 or0Var, View view, p41 p41Var, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        or0Var.getClass();
        a(view, p41Var, boolValueOf);
        return j59.a;
    }

    public static void a(View view, p41 p41Var, Boolean bool) {
        lr0 lr0Var;
        mr0 mr0VarN = p41Var.n();
        nr0 nr0VarA = (mr0VarN == null || (lr0Var = mr0VarN.g) == null) ? null : a(lr0Var, p41Var);
        if (nr0VarA == nr0.CHECK_BOX || nr0VarA == nr0.RADIO_BUTTON) {
            AccessibilityDelegateCompat accessibilityDelegate = ViewCompat.getAccessibilityDelegate(view);
            vs2 vs2Var = accessibilityDelegate instanceof vs2 ? (vs2) accessibilityDelegate : null;
            if (vs2Var != null) {
                vs2Var.d = bool;
            }
        }
    }

    public static void a(View view, String str, String str2) {
        if (str == null) {
            str = str2;
        } else if (str2 != null && !str.equals(str2)) {
            str = defpackage.me0.c(str, "\n", str2);
        }
        view.setContentDescription(str);
    }
}
