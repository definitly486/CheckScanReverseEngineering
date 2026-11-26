package yads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.method.DigitsKeyListener;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.cq9;
import defpackage.dl3;
import defpackage.g17;
import defpackage.gc7;
import defpackage.h38;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.qn;
import defpackage.r07;
import defpackage.sv9;
import defpackage.sz6;
import defpackage.u96;
import defpackage.ua8;
import defpackage.wp9;
import defpackage.xq8;
import defpackage.ys9;
import defpackage.zj7;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;
import yads.jk1;

/* JADX INFO: loaded from: classes6.dex */
public final class jk1 extends oh2 {
    public final v41 b;
    public final ef2 c;
    public final h36 d;
    public final bt0 e;
    public final s0 f;
    public final bo2 g;

    public jk1(v41 v41Var, ef2 ef2Var, h36 h36Var, bt0 bt0Var, s0 s0Var, bo2 bo2Var) {
        super(v41Var);
        this.b = v41Var;
        this.c = ef2Var;
        this.d = h36Var;
        this.e = bt0Var;
        this.f = s0Var;
        this.g = bo2Var;
    }

    public static void b(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var) {
        bn1Var.f.a(ek1Var.y.b(fs2Var, new xq8(bn1Var, ek1Var, fs2Var, 1)));
    }

    public static final j59 c(bn1 bn1Var, as2 as2Var, fs2 fs2Var, Object obj) {
        int i;
        long jLongValue = ((Number) as2Var.a(fs2Var)).longValue();
        long j = jLongValue >> 31;
        if (j == 0 || j == -1) {
            i = (int) jLongValue;
        } else {
            i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        bn1Var.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(i)});
        return j59.a;
    }

    public static final j59 d(bn1 bn1Var, as2 as2Var, fs2 fs2Var, Object obj) {
        int i;
        long jLongValue = ((Number) as2Var.a(fs2Var)).longValue();
        long j = jLongValue >> 31;
        if (j == 0 || j == -1) {
            i = (int) jLongValue;
        } else {
            i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        bn1Var.setMaxLines(i);
        return j59.a;
    }

    public static void f(final bn1 bn1Var, ek1 ek1Var, final fs2 fs2Var) {
        final as2 as2Var = ek1Var.I;
        if (as2Var == null) {
            return;
        }
        bn1Var.f.a(as2Var.b(fs2Var, new nl3() { // from class: zz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return jk1.c(bn1Var, as2Var, fs2Var, obj);
            }
        }));
    }

    public static void g(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var) {
        as2 as2Var = ek1Var.J;
        if (as2Var == null) {
            return;
        }
        bn1Var.f.a(as2Var.b(fs2Var, new defpackage.wf0(bn1Var, as2Var, fs2Var, 1)));
    }

    public static void h(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var) {
        bn1Var.f.a(ek1Var.O.b(fs2Var, new defpackage.oj2(bn1Var, ek1Var, fs2Var, 1)));
    }

    @Override // yads.oh2
    public final void a(View view, tt ttVar, p41 p41Var, p41 p41Var2, n32 n32Var) {
        bn1 bn1Var = (bn1) view;
        ek1 ek1Var = (ek1) p41Var;
        ek1 ek1Var2 = (ek1) p41Var2;
        fs2 fs2Var = ttVar.b;
        bn1Var.setTextAlignment(5);
        s0 s0Var = this.f;
        Context context = bn1Var.getContext();
        s0Var.getClass();
        bn1Var.setAccessibilityEnabled$mobileads_externalRelease(s0.a(context));
        a(bn1Var, ttVar, ek1Var, ek1Var2, fs2Var);
        as2 as2Var = ek1Var.q;
        as2 as2Var2 = ek1Var.r;
        as2 as2Var3 = ek1Var.E;
        as2 as2Var4 = ek1Var.S;
        as2 as2Var5 = ek1Var.F;
        as2 as2Var6 = ek1Var.p;
        as2 as2Var7 = ek1Var.t;
        as2 as2Var8 = ek1Var.u;
        as2 as2Var9 = ek1Var.s;
        as2 as2Var10 = ek1Var2 != null ? ek1Var2.q : null;
        as2 as2Var11 = ek1Var2 != null ? ek1Var2.r : null;
        as2 as2Var12 = ek1Var2 != null ? ek1Var2.E : null;
        as2 as2Var13 = ek1Var2 != null ? ek1Var2.S : null;
        as2 as2Var14 = ek1Var2 != null ? ek1Var2.F : null;
        as2 as2Var15 = ek1Var2 != null ? ek1Var2.p : null;
        as2 as2Var16 = ek1Var2 != null ? ek1Var2.t : null;
        as2 as2Var17 = ek1Var2 != null ? ek1Var2.u : null;
        as2 as2Var18 = ek1Var2 != null ? ek1Var2.s : null;
        ef2 ef2Var = this.c;
        as2 as2Var19 = as2Var10;
        as2 as2Var20 = as2Var17;
        as2 as2Var21 = as2Var18;
        as2 as2Var22 = as2Var15;
        as2 as2Var23 = as2Var16;
        as2 as2Var24 = as2Var11;
        kw5.a(bn1Var, as2Var, as2Var2, as2Var19, as2Var24, fs2Var, (hs2) r0);
        kw5.b(bn1Var, as2Var3, as2Var, as2Var12, as2Var19, fs2Var, bn1Var);
        kw5.a(bn1Var, as2Var4, as2Var13, fs2Var);
        kw5.c(bn1Var, as2Var5, as2Var2, as2Var14, as2Var24, fs2Var, bn1Var);
        if (ek1Var2 == null || !ls2.a(as2Var6, as2Var22) || !ls2.a(as2Var7, as2Var23) || !ls2.a(as2Var8, as2Var20) || (kw5.a() && !ls2.a(as2Var9, as2Var21))) {
            kw5.a(bn1Var, as2Var6, as2Var7, as2Var8, ef2Var, fs2Var);
            kw5.a(bn1Var, as2Var6, as2Var7, as2Var8, as2Var9, ef2Var, fs2Var);
            fs2Var = fs2Var;
            kw5.a(bn1Var, as2Var7, as2Var8, as2Var9, fs2Var);
        }
        a(bn1Var, ek1Var.Q, ek1Var.R, fs2Var);
        g(bn1Var, ek1Var, fs2Var);
        f(bn1Var, ek1Var, fs2Var);
        c(bn1Var, ek1Var, fs2Var);
        b(bn1Var, ek1Var, fs2Var);
        a(bn1Var, ek1Var, fs2Var);
        e(bn1Var, ek1Var, fs2Var);
        a(bn1Var, ek1Var, ttVar, fs2Var);
        h(bn1Var, ek1Var, fs2Var);
        d(bn1Var, ek1Var, fs2Var);
        a(bn1Var, ek1Var, ttVar);
        bn1Var.setFocusTracker$mobileads_externalRelease(ttVar.a.K);
        sg3 sg3Var = bn1Var.h;
        if (sg3Var == null || bn1Var.getTag() == null || !defpackage.aa4.e(bn1Var.getTag(), sg3Var.a) || !sg3Var.b) {
            return;
        }
        sg3Var.c.a = true;
        bn1Var.requestFocus();
    }

    public final void e(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var) {
        ys9 ys9Var = new ys9(ek1Var, fs2Var, bn1Var, this);
        bn1Var.f.a(ek1Var.C.a(fs2Var, ys9Var));
        bn1Var.f.a(ek1Var.f.b(fs2Var, ys9Var));
    }

    public static final j59 b(bn1 bn1Var, as2 as2Var, fs2 fs2Var, Object obj) {
        bn1Var.setInputHint((String) as2Var.a(fs2Var));
        return j59.a;
    }

    public static final j59 b(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var, Object obj) {
        bn1Var.setSelectAllOnFocus(((Boolean) ek1Var.O.a(fs2Var)).booleanValue());
        return j59.a;
    }

    public static final j59 b(defpackage.bm3 bm3Var, Exception exc) {
        bm3Var.invoke(exc, new dl3(3));
        return j59.a;
    }

    public static final j59 b() {
        return j59.a;
    }

    public static void d(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var) {
        bn1Var.f.a(ek1Var.B.b(fs2Var, new defpackage.u(bn1Var, 7)));
    }

    public static void c(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var) {
        as2 as2Var = ek1Var.z;
        if (as2Var == null) {
            return;
        }
        bn1Var.f.a(as2Var.b(fs2Var, new wp9(bn1Var, as2Var, fs2Var, 1)));
    }

    public static final j59 c(defpackage.bm3 bm3Var, Exception exc) {
        bm3Var.invoke(exc, new gc7(1));
        return j59.a;
    }

    public static final j59 c() {
        return j59.a;
    }

    public final void a(bn1 bn1Var, tt ttVar, ek1 ek1Var, ek1 ek1Var2) {
        Drawable drawable;
        as2 as2Var;
        fs2 fs2Var = ttVar.b;
        dk1 dk1Var = ek1Var.K;
        int iIntValue = (dk1Var == null || (as2Var = dk1Var.a) == null) ? 0 : ((Number) as2Var.a(fs2Var)).intValue();
        if (iIntValue == 0 || (drawable = bn1Var.g) == null) {
            drawable = null;
        } else {
            drawable.setTint(iIntValue);
        }
        Drawable drawable2 = drawable;
        v41 v41Var = this.b;
        hs2 hs2VarA = s55.a(bn1Var);
        v41Var.a(bn1Var, ttVar, ek1Var, ek1Var2, hs2VarA, drawable2);
        v41.d(bn1Var, ek1Var, ek1Var2, ttVar.b, hs2VarA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(bn1 bn1Var, ek1 ek1Var, tt ttVar) {
        String strA;
        vq0 vq0Var = ttVar.a;
        bn1Var.removeTextChangedListener(bn1Var.j);
        bn1Var.i.clear();
        String str = null;
        bn1Var.j = null;
        r07 r07Var = new r07();
        a(bn1Var, ek1Var, ttVar.b, vq0Var, new h38(1, r07Var, bn1Var));
        r07 r07Var2 = new r07();
        a(bn1Var, ek1Var, ttVar, new sz6(1, r07Var2, bn1Var));
        kl1 kl1Var = ek1Var.H;
        if (kl1Var != null) {
            ll1 ll1VarA = kl1Var.a();
            if (ll1VarA == null || (strA = ll1VarA.a()) == null) {
                return;
            } else {
                str = ek1Var.T;
            }
        } else {
            strA = ek1Var.T;
        }
        String str2 = str;
        bn1Var.f.a(this.d.a(ttVar, strA, new hk1((ur) r07Var.b, (qg3) r07Var2.b, bn1Var, ttVar, str2)));
        a(bn1Var, ek1Var, ttVar.b, vq0Var);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0029  */
    public final void a(bn1 bn1Var, as2 as2Var, as2 as2Var2, fs2 fs2Var) {
        int i;
        f11 f11Var = (f11) as2Var.a(fs2Var);
        bn1Var.setGravity(jf2.a(f11Var, (h11) as2Var2.a(fs2Var)));
        int i2 = f11Var == null ? -1 : fk1.a[f11Var.ordinal()];
        if (i2 == 2) {
            i = 4;
        } else if (i2 != 3) {
            i = 5;
            if (i2 == 5) {
                i = 6;
            }
        } else {
            i = 6;
        }
        bn1Var.setTextAlignment(i);
        defpackage.of ofVar = new defpackage.of(this, bn1Var, as2Var, fs2Var, as2Var2);
        bn1Var.f.a(as2Var.a(fs2Var, ofVar));
        bn1Var.f.a(as2Var2.a(fs2Var, ofVar));
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    public static final j59 a(jk1 jk1Var, bn1 bn1Var, as2 as2Var, fs2 fs2Var, as2 as2Var2, Object obj) {
        int i;
        f11 f11Var = (f11) as2Var.a(fs2Var);
        h11 h11Var = (h11) as2Var2.a(fs2Var);
        jk1Var.getClass();
        bn1Var.setGravity(jf2.a(f11Var, h11Var));
        int i2 = f11Var == null ? -1 : fk1.a[f11Var.ordinal()];
        if (i2 == 2) {
            i = 4;
        } else if (i2 != 3) {
            i = 5;
            if (i2 == 5) {
                i = 6;
            }
        } else {
            i = 6;
        }
        bn1Var.setTextAlignment(i);
        return j59.a;
    }

    public final void a(bn1 bn1Var, final tt ttVar, final ek1 ek1Var, final ek1 ek1Var2, fs2 fs2Var) {
        boolean zA;
        final bn1 bn1Var2;
        as2 as2Var;
        dk1 dk1Var = ek1Var.K;
        tp0 tp0VarB = null;
        dk1 dk1Var2 = ek1Var2 != null ? ek1Var2.K : null;
        if (dk1Var == null && dk1Var2 == null) {
            zA = true;
        } else {
            zA = ls2.a(dk1Var != null ? dk1Var.a : null, dk1Var2 != null ? dk1Var2.a : null);
        }
        if (zA) {
            return;
        }
        a(bn1Var, ttVar, ek1Var, ek1Var2);
        dk1 dk1Var3 = ek1Var.K;
        if (dk1Var3 != null ? dk1Var3.a instanceof xr2 : true) {
            return;
        }
        if (dk1Var3 == null || (as2Var = dk1Var3.a) == null) {
            bn1Var2 = bn1Var;
        } else {
            bn1Var2 = bn1Var;
            tp0VarB = as2Var.b(fs2Var, new nl3() { // from class: rz9
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return jk1.a(this.b, bn1Var2, ttVar, ek1Var, ek1Var2, ((Integer) obj).intValue());
                }
            });
        }
        bn1Var2.f.a(tp0VarB);
    }

    public static final j59 a(jk1 jk1Var, bn1 bn1Var, tt ttVar, ek1 ek1Var, ek1 ek1Var2, int i) {
        jk1Var.a(bn1Var, ttVar, ek1Var, ek1Var2);
        return j59.a;
    }

    public static final j59 a(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var, Object obj) {
        bn1Var.setHintTextColor(((Number) ek1Var.y.a(fs2Var)).intValue());
        return j59.a;
    }

    public static void a(bn1 bn1Var, ek1 ek1Var, fs2 fs2Var) {
        as2 as2Var = ek1Var.x;
        if (as2Var == null) {
            return;
        }
        bn1Var.f.a(as2Var.b(fs2Var, new cq9(bn1Var, as2Var, fs2Var, 1)));
    }

    public static final j59 a(bn1 bn1Var, as2 as2Var, fs2 fs2Var, Object obj) {
        bn1Var.setHighlightColor(((Number) as2Var.a(fs2Var)).intValue());
        return j59.a;
    }

    public static final j59 a(ek1 ek1Var, fs2 fs2Var, bn1 bn1Var, jk1 jk1Var, Object obj) {
        int i;
        int i2;
        ck1 ck1Var = (ck1) ek1Var.C.a(fs2Var);
        jk1Var.getClass();
        switch (ck1Var) {
            case SINGLE_LINE_TEXT:
                i = 1;
                break;
            case MULTI_LINE_TEXT:
                i = 131073;
                break;
            case PHONE:
                i = 3;
                break;
            case NUMBER:
                i = 12290;
                break;
            case EMAIL:
                i = 33;
                break;
            case URI:
                i = 17;
                break;
            case PASSWORD:
                i = TsExtractor.TS_STREAM_TYPE_AC3;
                break;
            default:
                defpackage.me0.e();
                return null;
        }
        int iOrdinal = ((yj1) ek1Var.f.a(fs2Var)).ordinal();
        if (iOrdinal == 2) {
            i2 = 8192;
        } else if (iOrdinal != 3) {
            i2 = iOrdinal != 4 ? 0 : 4096;
        } else {
            i2 = 16384;
        }
        bn1Var.setInputType(i2 | i);
        bn1Var.setHorizontallyScrolling(ck1Var != ck1.MULTI_LINE_TEXT);
        return j59.a;
    }

    public final void a(final bn1 bn1Var, final ek1 ek1Var, final tt ttVar, final fs2 fs2Var) {
        bn1Var.f.a(ek1Var.l.b(fs2Var, new nl3() { // from class: sz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return jk1.a(ek1Var, fs2Var, bn1Var, this, ttVar, obj);
            }
        }));
    }

    public static final j59 a(ek1 ek1Var, fs2 fs2Var, final bn1 bn1Var, final jk1 jk1Var, final tt ttVar, Object obj) {
        int i;
        ak1 ak1Var = (ak1) ek1Var.l.a(fs2Var);
        int imeOptions = bn1Var.getImeOptions();
        jk1Var.getClass();
        int iOrdinal = ak1Var.ordinal();
        if (iOrdinal != 0) {
            i = 2;
            if (iOrdinal != 1) {
                if (iOrdinal != 2) {
                    i = 4;
                    if (iOrdinal != 3) {
                        if (iOrdinal != 4) {
                            defpackage.me0.e();
                            return null;
                        }
                        i = 6;
                    }
                } else {
                    i = 3;
                }
            }
        } else {
            i = 0;
        }
        bn1Var.setImeOptions(imeOptions + i);
        final List list = ek1Var.k;
        if (list != null && !list.isEmpty()) {
            bn1Var.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: yz9
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                    return jk1.a(this.b, ttVar, bn1Var, list, textView, i2, keyEvent);
                }
            });
        } else {
            bn1Var.setOnEditorActionListener(null);
        }
        return j59.a;
    }

    public static final boolean a(jk1 jk1Var, tt ttVar, bn1 bn1Var, List list, TextView textView, int i, KeyEvent keyEvent) {
        if ((i & 255) == 0) {
            return false;
        }
        jk1Var.e.a(ttVar, bn1Var, list, "enter");
        return false;
    }

    public static final j59 a(bn1 bn1Var, boolean z) {
        if (!z && bn1Var.isFocused()) {
            o01.a((View) bn1Var);
        }
        bn1Var.setEnabled$mobileads_externalRelease(z);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(r07 r07Var, bn1 bn1Var, ur urVar) {
        r07Var.b = urVar;
        if (urVar != 0) {
            bn1Var.setText(urVar.d());
            bn1Var.setSelection(urVar.d);
        }
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(r07 r07Var, bn1 bn1Var, qg3 qg3Var) {
        String string;
        r07Var.b = qg3Var;
        if (qg3Var != 0) {
            Editable editableText = bn1Var.getEditableText();
            if (editableText == null || (string = editableText.toString()) == null) {
                string = "";
            }
            qg3Var.b = string;
            qg3Var.c = bn1Var.getSelectionStart();
        }
        return j59.a;
    }

    public final void a(final bn1 bn1Var, final ek1 ek1Var, final fs2 fs2Var, final vq0 vq0Var) {
        final ArrayList arrayList = new ArrayList();
        final ao2 ao2VarA = this.g.a(vq0Var.Q, vq0Var.O);
        final sv9 sv9Var = new sv9(arrayList, this, bn1Var, vq0Var, fs2Var);
        bn1Var.addTextChangedListener(new ik1(arrayList, this, bn1Var, vq0Var, fs2Var));
        nl3 nl3Var = new nl3() { // from class: wz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return jk1.a(arrayList, ek1Var, this, fs2Var, ao2VarA, bn1Var, vq0Var, obj);
            }
        };
        List list = ek1Var.a0;
        if (list != null) {
            final int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i >= 0) {
                    am1 am1Var = (am1) obj;
                    if (am1Var instanceof zl1) {
                        zl1 zl1Var = (zl1) am1Var;
                        bn1Var.f.a(zl1Var.a.c.a(fs2Var, nl3Var));
                        bn1Var.f.a(zl1Var.a.b.a(fs2Var, nl3Var));
                        bn1Var.f.a(zl1Var.a.a.a(fs2Var, nl3Var));
                    } else if (am1Var instanceof yl1) {
                        yl1 yl1Var = (yl1) am1Var;
                        bn1Var.f.a(yl1Var.a.b.a(fs2Var, new nl3() { // from class: xz9
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj2) {
                                return jk1.a(sv9Var, i, ((Boolean) obj2).booleanValue());
                            }
                        }));
                        bn1Var.f.a(yl1Var.a.c.a(fs2Var, nl3Var));
                        bn1Var.f.a(yl1Var.a.a.a(fs2Var, nl3Var));
                    } else {
                        defpackage.me0.e();
                        return;
                    }
                    i = i2;
                } else {
                    u96.o();
                    throw null;
                }
            }
        }
        nl3Var.invoke(j59.a);
    }

    public static final j59 a(jk1 jk1Var, List list, bn1 bn1Var, vq0 vq0Var, fs2 fs2Var, int i) {
        j66 j66Var = (j66) list.get(i);
        String strValueOf = String.valueOf(bn1Var.getText());
        jk1Var.getClass();
        boolean zA = j66Var.a.a(strValueOf);
        l76.a(vq0Var, j66Var.b, String.valueOf(zA), fs2Var);
        jk1Var.a(j66Var, vq0Var, bn1Var, zA);
        return j59.a;
    }

    public static final j59 a(List list, ek1 ek1Var, jk1 jk1Var, fs2 fs2Var, ao2 ao2Var, bn1 bn1Var, vq0 vq0Var, Object obj) {
        list.clear();
        List<am1> list2 = ek1Var.a0;
        if (list2 != null) {
            for (am1 am1Var : list2) {
                jk1Var.getClass();
                j66 j66VarA = a(am1Var, fs2Var, ao2Var);
                if (j66VarA != null) {
                    list.add(j66VarA);
                }
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                j66 j66Var = (j66) it.next();
                String strValueOf = String.valueOf(bn1Var.getText());
                jk1Var.getClass();
                boolean zA = j66Var.a.a(strValueOf);
                l76.a(vq0Var, j66Var.b, String.valueOf(zA), fs2Var);
                jk1Var.a(j66Var, vq0Var, bn1Var, zA);
            }
        }
        return j59.a;
    }

    public static final j59 a(nl3 nl3Var, int i, boolean z) {
        nl3Var.invoke(Integer.valueOf(i));
        return j59.a;
    }

    public static j66 a(am1 am1Var, fs2 fs2Var, ao2 ao2Var) {
        if (am1Var instanceof zl1) {
            qm1 qm1VarA = ((zl1) am1Var).a();
            try {
                return new j66(new j55(new g17((String) qm1VarA.c.a(fs2Var)), ((Boolean) qm1VarA.a.a(fs2Var)).booleanValue()), qm1VarA.d, (String) qm1VarA.b.a(fs2Var));
            } catch (PatternSyntaxException e) {
                ao2Var.a((RuntimeException) new IllegalArgumentException(defpackage.me0.c("Invalid regex pattern '", e.getPattern(), "'"), e));
                return null;
            }
        }
        if (am1Var instanceof yl1) {
            hm1 hm1VarA = ((yl1) am1Var).a();
            return new j66(new ks2(((Boolean) hm1VarA.a.a(fs2Var)).booleanValue(), new zj7(1, hm1VarA, fs2Var)), hm1VarA.d, (String) hm1VarA.c.a(fs2Var));
        }
        defpackage.me0.e();
        return null;
    }

    public static final boolean a(hm1 hm1Var, fs2 fs2Var) {
        return ((Boolean) hm1Var.b.a(fs2Var)).booleanValue();
    }

    public final void a(j66 j66Var, vq0 vq0Var, bn1 bn1Var, boolean z) {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(defpackage.me0.c("Can't find label with id '", j66Var.a(), "'"));
        ao2 ao2VarA = this.g.a(vq0Var.q(), vq0Var.o());
        zh2 zh2VarC = vq0Var.w().c();
        if (bn1Var.isLaidOut() && !bn1Var.isLayoutRequested()) {
            int iA = zh2VarC.a(j66Var.a());
            if (iA != -1) {
                View viewFindViewById = bn1Var.getRootView().findViewById(iA);
                if (viewFindViewById != null) {
                    viewFindViewById.setLabelFor(z ? -1 : bn1Var.getId());
                    return;
                } else {
                    ao2VarA.a((RuntimeException) illegalArgumentException);
                    return;
                }
            }
            ao2VarA.a((RuntimeException) illegalArgumentException);
            return;
        }
        bn1Var.addOnLayoutChangeListener(new gk1(zh2VarC, j66Var, bn1Var, z, ao2VarA, illegalArgumentException));
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [tz9] */
    public final void a(final bn1 bn1Var, final ek1 ek1Var, final fs2 fs2Var, vq0 vq0Var, final nl3 nl3Var) {
        as2 as2Var;
        tp0 tp0VarA;
        final r07 r07Var = new r07();
        final ao2 ao2VarA = this.g.a(vq0Var.Q, vq0Var.O);
        final KeyListener keyListener = bn1Var.getKeyListener();
        final ?? r7 = new defpackage.bm3() { // from class: tz9
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return jk1.a(ao2VarA, (Exception) obj, (ll3) obj2);
            }
        };
        nl3 nl3Var2 = new nl3() { // from class: uz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return jk1.a(ek1Var, r07Var, bn1Var, keyListener, fs2Var, nl3Var, r7, ao2VarA, obj);
            }
        };
        kl1 kl1Var = ek1Var.H;
        ll1 ll1VarA = kl1Var != null ? kl1Var.a() : null;
        if (ll1VarA instanceof pe1) {
            pe1 pe1Var = (pe1) ll1VarA;
            bn1Var.f.a(pe1Var.b.a(fs2Var, nl3Var2));
            for (oe1 oe1Var : pe1Var.c) {
                bn1Var.f.a(oe1Var.a.a(fs2Var, nl3Var2));
                as2 as2Var2 = oe1Var.c;
                if (as2Var2 != null) {
                    bn1Var.f.a(as2Var2.a(fs2Var, nl3Var2));
                }
                bn1Var.f.a(oe1Var.b.a(fs2Var, nl3Var2));
            }
            bn1Var.f.a(pe1Var.a.a(fs2Var, nl3Var2));
        } else if ((ll1VarA instanceof fa1) && (as2Var = ((fa1) ll1VarA).a) != null && (tp0VarA = as2Var.a(fs2Var, nl3Var2)) != null) {
            bn1Var.f.a(tp0VarA);
        }
        nl3Var2.invoke(j59.a);
    }

    public static final j59 a(ao2 ao2Var, Exception exc, ll3 ll3Var) {
        if (exc instanceof PatternSyntaxException) {
            ao2Var.a((RuntimeException) new IllegalArgumentException(defpackage.me0.c("Invalid regex pattern '", ((PatternSyntaxException) exc).getPattern(), "'.")));
        } else {
            ll3Var.invoke();
        }
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(ek1 ek1Var, r07 r07Var, bn1 bn1Var, KeyListener keyListener, fs2 fs2Var, nl3 nl3Var, defpackage.bm3 bm3Var, ao2 ao2Var, Object obj) throws ParseException {
        Locale localeForLanguageTag;
        kl1 kl1Var = ek1Var.H;
        T lu4Var = 0;
        ll1 ll1VarA = kl1Var != null ? kl1Var.a() : null;
        if (ll1VarA instanceof pe1) {
            bn1Var.setKeyListener(keyListener);
            pe1 pe1Var = (pe1) ll1VarA;
            String str = (String) pe1Var.b.a(fs2Var);
            List<oe1> list = pe1Var.c;
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            for (oe1 oe1Var : list) {
                char cI0 = ua8.i0((CharSequence) oe1Var.a.a(fs2Var));
                as2 as2Var = oe1Var.c;
                String str2 = as2Var != null ? (String) as2Var.a(fs2Var) : null;
                Character chJ0 = ua8.j0((CharSequence) oe1Var.b.a(fs2Var));
                arrayList.add(new tr(cI0, str2, chJ0 != null ? chJ0.charValue() : (char) 0));
            }
            sr srVar = new sr(str, arrayList, ((Boolean) pe1Var.a.a(fs2Var)).booleanValue());
            ur urVar = (ur) r07Var.b;
            if (urVar != null) {
                urVar.a(srVar, true);
                lu4Var = urVar;
            } else {
                lu4Var = new mx2(srVar, new defpackage.cl5(bm3Var, 5));
            }
        } else if (ll1VarA instanceof fa1) {
            as2 as2Var2 = ((fa1) ll1VarA).a;
            String str3 = as2Var2 != null ? (String) as2Var2.a(fs2Var) : null;
            if (str3 != null) {
                localeForLanguageTag = Locale.forLanguageTag(str3);
                String languageTag = localeForLanguageTag.toLanguageTag();
                if (!defpackage.aa4.e(languageTag, str3)) {
                    ao2Var.a((Throwable) new IllegalArgumentException(defpackage.n2.d("Original locale tag '", str3, "' is not equals to final one '", languageTag, "'")));
                }
            } else {
                localeForLanguageTag = Locale.getDefault();
            }
            bn1Var.setKeyListener(DigitsKeyListener.getInstance("1234567890.,"));
            T t = r07Var.b;
            ur urVar2 = (ur) t;
            if (urVar2 != null) {
                t.getClass();
                ((vb0) t).a(localeForLanguageTag);
                lu4Var = urVar2;
            } else {
                lu4Var = new vb0(localeForLanguageTag, new defpackage.im1(bm3Var, 6));
            }
        } else if (ll1VarA instanceof ku1) {
            bn1Var.setKeyListener(DigitsKeyListener.getInstance("1234567890"));
            ur urVar3 = (ur) r07Var.b;
            if (urVar3 != null) {
                urVar3.a(mu4.a(), true);
                lu4Var = urVar3;
            } else {
                lu4Var = new lu4(new defpackage.dn4(1, bm3Var));
            }
        } else {
            bn1Var.setKeyListener(keyListener);
        }
        r07Var.b = lu4Var;
        nl3Var.invoke(lu4Var);
        return j59.a;
    }

    public static final j59 a(defpackage.bm3 bm3Var, Exception exc) {
        bm3Var.invoke(exc, new qn(1));
        return j59.a;
    }

    public static final j59 a() {
        return j59.a;
    }

    public final void a(bn1 bn1Var, ek1 ek1Var, final tt ttVar, final nl3 nl3Var) {
        final List<mk1> list;
        if (ek1Var.H != null || (list = ek1Var.n) == null || list.isEmpty()) {
            return;
        }
        final fs2 fs2Var = ttVar.b;
        nl3 nl3Var2 = new nl3() { // from class: vz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return jk1.a(list, nl3Var, fs2Var, this, ttVar, obj);
            }
        };
        for (mk1 mk1Var : list) {
            if (mk1Var instanceof lk1) {
                bn1Var.f.a(((lk1) mk1Var).a.a.a(fs2Var, nl3Var2));
            }
        }
        nl3Var2.invoke(j59.a);
    }

    public static final j59 a(List list, nl3 nl3Var, fs2 fs2Var, jk1 jk1Var, tt ttVar, Object obj) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            mk1 mk1Var = (mk1) it.next();
            or i55Var = null;
            if (mk1Var instanceof lk1) {
                try {
                    i55Var = new i55((String) ((lk1) mk1Var).a().a.a(fs2Var));
                } catch (PatternSyntaxException e) {
                    jk1Var.g.a(ttVar.a().q(), ttVar.a().o()).a((RuntimeException) new IllegalArgumentException(defpackage.me0.c("Invalid regex pattern '", e.getPattern(), "'."), e));
                }
            } else {
                if (!(mk1Var instanceof kk1)) {
                    defpackage.me0.e();
                    return null;
                }
                i55Var = new cs2(((kk1) mk1Var).a().a, fs2Var);
            }
            if (i55Var != null) {
                arrayList.add(i55Var);
            }
        }
        nl3Var.invoke(new qg3(arrayList));
        return j59.a;
    }
}
