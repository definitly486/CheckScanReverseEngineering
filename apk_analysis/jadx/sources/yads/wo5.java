package yads;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.net.Uri;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.StrikethroughSpan;
import android.text.style.UnderlineSpan;
import android.util.DisplayMetrics;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import defpackage.nga;
import defpackage.nl3;
import defpackage.ws6;
import defpackage.x07;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.json.JSONObject;
import yads.wo5;

/* JADX INFO: loaded from: classes6.dex */
public final class wo5 {
    public final ef2 a;
    public final oi1 b;
    public final Paint c = new Paint();

    public wo5(ef2 ef2Var, oi1 oi1Var) {
        this.a = ef2Var;
        this.b = oi1Var;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:110:0x0204  */
    /* JADX WARN: Code duplicated, block: B:113:0x0216  */
    /* JADX WARN: Code duplicated, block: B:114:0x021f  */
    /* JADX WARN: Code duplicated, block: B:117:0x0231  */
    /* JADX WARN: Code duplicated, block: B:118:0x023a  */
    /* JADX WARN: Code duplicated, block: B:121:0x0240  */
    /* JADX WARN: Code duplicated, block: B:122:0x0249  */
    /* JADX WARN: Code duplicated, block: B:124:0x024d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0258  */
    /* JADX WARN: Code duplicated, block: B:128:0x025e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0267  */
    /* JADX WARN: Code duplicated, block: B:132:0x026d  */
    /* JADX WARN: Code duplicated, block: B:141:0x028e  */
    /* JADX WARN: Code duplicated, block: B:143:0x0296  */
    /* JADX WARN: Code duplicated, block: B:146:0x029e  */
    /* JADX WARN: Code duplicated, block: B:147:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:150:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:152:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:154:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:156:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:159:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:160:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:163:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:164:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:166:0x030c  */
    /* JADX WARN: Code duplicated, block: B:167:0x036f  */
    /* JADX WARN: Code duplicated, block: B:169:0x0377  */
    /* JADX WARN: Code duplicated, block: B:172:0x039e  */
    /* JADX WARN: Code duplicated, block: B:173:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:176:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:177:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:180:0x03be  */
    /* JADX WARN: Code duplicated, block: B:181:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:184:0x0420  */
    /* JADX WARN: Code duplicated, block: B:193:0x043f  */
    /* JADX WARN: Code duplicated, block: B:195:0x044f  */
    /* JADX WARN: Code duplicated, block: B:198:0x0455  */
    /* JADX WARN: Code duplicated, block: B:199:0x045c  */
    /* JADX WARN: Code duplicated, block: B:202:0x0462  */
    /* JADX WARN: Code duplicated, block: B:203:0x0469  */
    /* JADX WARN: Code duplicated, block: B:206:0x046f  */
    /* JADX WARN: Code duplicated, block: B:208:0x047a  */
    /* JADX WARN: Code duplicated, block: B:351:0x0731  */
    /* JADX WARN: Code duplicated, block: B:445:0x0510 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:446:0x050c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:466:0x01c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x01dd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v46 */
    /* JADX WARN: Type inference failed for: r11v47, types: [java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23, types: [yads.nw5, yads.zo1] */
    /* JADX WARN: Type inference failed for: r14v41 */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r28v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r28v4 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r31v4 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r46v0 */
    /* JADX WARN: Type inference failed for: r46v2 */
    /* JADX WARN: Type inference failed for: r46v3 */
    /* JADX WARN: Type inference failed for: r50v0 */
    /* JADX WARN: Type inference failed for: r50v1, types: [yads.d82] */
    /* JADX WARN: Type inference failed for: r50v2 */
    /* JADX WARN: Type inference failed for: r52v0 */
    /* JADX WARN: Type inference failed for: r52v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r52v2 */
    /* JADX WARN: Type inference failed for: r53v0 */
    /* JADX WARN: Type inference failed for: r53v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r53v2 */
    /* JADX WARN: Type inference failed for: r54v0 */
    /* JADX WARN: Type inference failed for: r54v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r54v2 */
    /* JADX WARN: Type inference failed for: r56v0 */
    /* JADX WARN: Type inference failed for: r56v1, types: [yads.tf1] */
    /* JADX WARN: Type inference failed for: r56v2 */
    /* JADX WARN: Type inference failed for: r57v0 */
    /* JADX WARN: Type inference failed for: r57v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r57v2 */
    /* JADX WARN: Type inference failed for: r58v0 */
    /* JADX WARN: Type inference failed for: r58v1, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r58v2 */
    /* JADX WARN: Type inference failed for: r59v0 */
    /* JADX WARN: Type inference failed for: r59v1, types: [java.lang.Double] */
    /* JADX WARN: Type inference failed for: r59v2 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14, types: [java.lang.Integer, java.lang.Number] */
    /* JADX WARN: Type inference failed for: r5v78 */
    /* JADX WARN: Type inference failed for: r60v0 */
    /* JADX WARN: Type inference failed for: r60v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r60v2 */
    /* JADX WARN: Type inference failed for: r61v0 */
    /* JADX WARN: Type inference failed for: r61v1 */
    /* JADX WARN: Type inference failed for: r61v2, types: [yads.bx3] */
    /* JADX WARN: Type inference failed for: r61v3 */
    /* JADX WARN: Type inference failed for: r62v0 */
    /* JADX WARN: Type inference failed for: r62v1, types: [yads.bp1] */
    /* JADX WARN: Type inference failed for: r62v2 */
    /* JADX WARN: Type inference failed for: r63v0 */
    /* JADX WARN: Type inference failed for: r63v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r63v2 */
    /* JADX WARN: Type inference failed for: r64v0 */
    /* JADX WARN: Type inference failed for: r64v1, types: [yads.yj5] */
    /* JADX WARN: Type inference failed for: r64v2 */
    /* JADX WARN: Type inference failed for: r65v0 */
    /* JADX WARN: Type inference failed for: r65v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r65v2 */
    /* JADX WARN: Type inference failed for: r66v0 */
    /* JADX WARN: Type inference failed for: r66v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r66v2 */
    /* JADX WARN: Type inference failed for: r67v0 */
    /* JADX WARN: Type inference failed for: r67v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r67v2 */
    /* JADX WARN: Type inference failed for: r68v0 */
    /* JADX WARN: Type inference failed for: r68v1, types: [yads.bp1] */
    /* JADX WARN: Type inference failed for: r68v2 */
    public final SpannableStringBuilder a(tt ttVar, an2 an2Var, b82 b82Var, String str, List list, List list2, List list3, nl3 nl3Var) {
        char c;
        SpannableStringBuilder spannableStringBuilder;
        Integer numValueOf;
        ?? ValueOf;
        char c2;
        int i;
        SpannableStringBuilder spannableStringBuilder2;
        vq0 vq0Var;
        fs2 fs2Var;
        ?? r46;
        ?? arrayList;
        int i2;
        DisplayMetrics displayMetrics;
        fs2 fs2VarB;
        int i3;
        int i4;
        as2 as2Var;
        ?? ValueOf2;
        g12 g12Var;
        ro5 ro5Var;
        as2 as2Var2;
        ?? r50;
        as2 as2Var3;
        ?? r52;
        as2 as2Var4;
        ?? r53;
        ?? ValueOf3;
        as2 as2Var5;
        ?? r56;
        as2 as2Var6;
        ?? ValueOf4;
        as2 as2Var7;
        ?? r58;
        as2 as2Var8;
        ?? ValueOf5;
        as2 as2Var9;
        ?? ValueOf6;
        aa2 aa2Var;
        fs2 fs2Var2;
        DisplayMetrics displayMetrics2;
        int i5;
        ?? ax3Var;
        as2 as2Var10;
        ?? r62;
        as2 as2Var11;
        ?? r63;
        xz1 xz1Var;
        int i6;
        ?? yj5Var;
        as2 as2Var12;
        ?? ValueOf7;
        ?? ValueOf8;
        ?? ValueOf9;
        as2 as2Var13;
        ?? r68;
        long jLongValue;
        long j;
        int i7;
        int iIntValue;
        long jLongValue2;
        long j2;
        int i8;
        long jLongValue3;
        long j3;
        int i9;
        fs2 fs2Var3;
        ?? N0;
        ?? r14;
        boolean z;
        nl3 nl3Var2;
        int i10;
        tt ttVar2;
        boolean z2;
        Iterator it;
        zo1 zo1Var;
        ttVar = ttVar;
        Context context = an2Var.getContext();
        vq0 vq0VarA = ttVar.a();
        fs2 fs2VarB2 = ttVar.b();
        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(str.length() == 0 ? "\u200b" : str);
        DisplayMetrics displayMetrics3 = context.getResources().getDisplayMetrics();
        fs2 fs2VarB3 = ttVar.b();
        long jLongValue4 = ((Number) b82Var.v.a(fs2VarB3)).longValue();
        long j4 = jLongValue4 >> 31;
        int i11 = (j4 == 0 || j4 == -1) ? (int) jLongValue4 : jLongValue4 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        g12 g12Var2 = (g12) b82Var.w.a(fs2VarB3);
        int iA = pq.a(Integer.valueOf(i11), displayMetrics3, g12Var2);
        as2 as2Var14 = b82Var.y;
        tf1 tf1Var = as2Var14 != null ? (tf1) as2Var14.a(fs2VarB3) : null;
        as2 as2Var15 = b82Var.z;
        if (as2Var15 != null) {
            c = 31;
            spannableStringBuilder = null;
            long jLongValue5 = ((Number) as2Var15.a(fs2VarB3)).longValue();
            long j5 = jLongValue5 >> 31;
            numValueOf = Integer.valueOf((j5 == 0 || j5 == -1) ? (int) jLongValue5 : jLongValue5 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE);
        } else {
            c = 31;
            spannableStringBuilder = null;
            numValueOf = null;
        }
        as2 as2Var16 = b82Var.t;
        ?? r28 = as2Var16 != null ? (String) as2Var16.a(fs2VarB3) : spannableStringBuilder;
        as2 as2Var17 = b82Var.I;
        if (as2Var17 != null) {
            long jLongValue6 = ((Number) as2Var17.a(fs2VarB3)).longValue();
            long j6 = jLongValue6 >> c;
            ValueOf = Integer.valueOf(pq.a(Integer.valueOf((j6 == 0 || j6 == -1) ? (int) jLongValue6 : jLongValue6 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE), displayMetrics3, g12Var2));
        } else {
            ValueOf = spannableStringBuilder;
        }
        xv5 xv5Var = new xv5(str, iA, i11, g12Var2, r28, tf1Var, numValueOf, ValueOf, ((Number) b82Var.Z.a(fs2VarB3)).intValue());
        int iB = xv5Var.b();
        Integer numA = xv5Var.a();
        defpackage.kx2 kx2Var = defpackage.kx2.b;
        if (numA == null && (list == null || list.isEmpty())) {
            i = iB;
            spannableStringBuilder2 = spannableStringBuilder3;
            vq0Var = vq0VarA;
            fs2Var = fs2VarB2;
            arrayList = kx2Var;
            r46 = arrayList;
            c2 = c;
        } else {
            fs2 fs2VarB4 = ttVar.b();
            int iB2 = xv5Var.b();
            int size = list != null ? list.size() : 0;
            c2 = c;
            TreeSet treeSet = new TreeSet();
            yr.c0(new Integer[0], treeSet);
            ArrayList arrayList2 = new ArrayList(size + 1);
            if (list != null) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    context = context;
                    y72 y72Var = (y72) it2.next();
                    kx2Var = kx2Var;
                    it2 = it2;
                    long jLongValue7 = ((Number) y72Var.q.a(fs2VarB4)).longValue();
                    long j7 = jLongValue7 >> c2;
                    int i12 = (j7 == 0 || j7 == -1) ? (int) jLongValue7 : jLongValue7 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                    if (i12 > iB2) {
                        i12 = iB2;
                    }
                    as2 as2Var18 = y72Var.f;
                    if (as2Var18 != null) {
                        fs2VarB4 = fs2VarB4;
                        spannableStringBuilder3 = spannableStringBuilder3;
                        long jLongValue8 = ((Number) as2Var18.a(fs2VarB4)).longValue();
                        long j8 = jLongValue8 >> c2;
                        i2 = (j8 == 0 || j8 == -1) ? (int) jLongValue8 : jLongValue8 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                        if (i2 > iB2) {
                        }
                        if (i12 < i2) {
                            displayMetrics = context.getResources().getDisplayMetrics();
                            fs2VarB = ttVar.b();
                            i3 = i2;
                            i4 = xv5Var.c;
                            as2Var = y72Var.i;
                            if (as2Var != null) {
                                jLongValue3 = ((Number) as2Var.a(fs2VarB)).longValue();
                                j3 = jLongValue3 >> c2;
                                if (j3 != 0 || j3 == -1) {
                                    i9 = (int) jLongValue3;
                                } else {
                                    i9 = jLongValue3 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                                }
                                ValueOf2 = Integer.valueOf(i9);
                            } else {
                                ValueOf2 = spannableStringBuilder;
                            }
                            g12Var = (g12) y72Var.j.a(fs2VarB);
                            as2Var2 = y72Var.b;
                            if (as2Var2 != null) {
                                r50 = (d82) as2Var2.a(fs2VarB);
                            } else {
                                r50 = spannableStringBuilder;
                            }
                            int iA2 = pq.a((Number) y72Var.d.a(fs2VarB), displayMetrics, g12Var);
                            as2Var3 = y72Var.g;
                            if (as2Var3 != null) {
                                r52 = (String) as2Var3.a(fs2VarB);
                            } else {
                                r52 = spannableStringBuilder;
                            }
                            as2Var4 = y72Var.h;
                            if (as2Var4 != null) {
                                r53 = (String) as2Var4.a(fs2VarB);
                            } else {
                                r53 = spannableStringBuilder;
                            }
                            if (ValueOf2 != 0) {
                                ValueOf3 = Integer.valueOf(pq.a((Number) ValueOf2, displayMetrics, g12Var));
                            } else {
                                ValueOf3 = spannableStringBuilder;
                            }
                            as2Var5 = y72Var.l;
                            if (as2Var5 != null) {
                                r56 = (tf1) as2Var5.a(fs2VarB);
                            } else {
                                r56 = spannableStringBuilder;
                            }
                            as2Var6 = y72Var.m;
                            if (as2Var6 != null) {
                                jLongValue2 = ((Number) as2Var6.a(fs2VarB)).longValue();
                                j2 = jLongValue2 >> c2;
                                if (j2 != 0 || j2 == -1) {
                                    i8 = (int) jLongValue2;
                                } else {
                                    i8 = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                                }
                                ValueOf4 = Integer.valueOf(i8);
                            } else {
                                ValueOf4 = spannableStringBuilder;
                            }
                            as2Var7 = y72Var.k;
                            if (as2Var7 != null) {
                                r58 = (JSONObject) as2Var7.a(fs2VarB);
                            } else {
                                r58 = spannableStringBuilder;
                            }
                            as2Var8 = y72Var.n;
                            if (as2Var8 != null) {
                                double dDoubleValue = ((Number) as2Var8.a(fs2VarB)).doubleValue();
                                if (ValueOf2 != 0) {
                                    iIntValue = ValueOf2.intValue();
                                } else {
                                    iIntValue = i4;
                                }
                                ValueOf5 = Double.valueOf(dDoubleValue / ((double) iIntValue));
                            } else {
                                ValueOf5 = spannableStringBuilder;
                            }
                            as2Var9 = y72Var.o;
                            if (as2Var9 != null) {
                                ValueOf6 = Integer.valueOf(uq.a(Long.valueOf(((Number) as2Var9.a(fs2VarB)).longValue()), displayMetrics, g12Var));
                            } else {
                                ValueOf6 = spannableStringBuilder;
                            }
                            aa2Var = y72Var.p;
                            if (aa2Var == null) {
                                i5 = i12;
                                ax3Var = spannableStringBuilder;
                            } else {
                                fs2Var2 = ttVar.b;
                                displayMetrics2 = context.getResources().getDisplayMetrics();
                                i5 = i12;
                                if (aa2Var instanceof y92) {
                                    ka2 ka2Var = ((y92) aa2Var).a;
                                    ax3Var = new zw3(((Number) ka2Var.a.a(fs2Var2)).intValue(), (float) ((Number) ka2Var.b.a(fs2Var2)).doubleValue(), ((Boolean) ka2Var.c.a(fs2Var2)).booleanValue(), ((Boolean) ka2Var.d.a(fs2Var2)).booleanValue(), pq.b(Long.valueOf(((Number) ka2Var.e.b.a(fs2Var2)).longValue()), displayMetrics2, (g12) ka2Var.e.a.a(fs2Var2)));
                                } else {
                                    if (aa2Var instanceof z92) {
                                        defpackage.me0.e();
                                        return spannableStringBuilder;
                                    }
                                    qa2 qa2Var = ((z92) aa2Var).a;
                                    ax3Var = new ax3(((Number) qa2Var.a.a(fs2Var2)).intValue(), ((Boolean) qa2Var.b.a(fs2Var2)).booleanValue());
                                }
                            }
                            as2Var10 = y72Var.r;
                            if (as2Var10 != null) {
                                r62 = (bp1) as2Var10.a(fs2VarB);
                            } else {
                                r62 = spannableStringBuilder;
                            }
                            as2Var11 = y72Var.s;
                            if (as2Var11 != null) {
                                r63 = (Integer) as2Var11.a(fs2VarB);
                            } else {
                                r63 = spannableStringBuilder;
                            }
                            xz1Var = y72Var.t;
                            i6 = xv5Var.i;
                            if (xz1Var == null) {
                                yj5Var = spannableStringBuilder;
                            } else {
                                DisplayMetrics displayMetrics4 = context.getResources().getDisplayMetrics();
                                fs2 fs2Var4 = ttVar.b;
                                float fA = pq.a((Number) xz1Var.b.a(fs2Var4), displayMetrics4);
                                float fA2 = pq.a(xz1Var.d.a, displayMetrics4, fs2Var4);
                                float fA3 = pq.a(xz1Var.d.b, displayMetrics4, fs2Var4);
                                Paint paint = this.c;
                                paint.setColor(((Number) xz1Var.c.a(fs2Var4)).intValue());
                                paint.setAlpha((int) (((double) (i6 >>> 24)) * ((Number) xz1Var.a.a(fs2Var4)).doubleValue()));
                                yj5Var = new yj5(fA2, fA3, fA, paint.getColor());
                            }
                            as2Var12 = y72Var.u;
                            if (as2Var12 != null) {
                                jLongValue = ((Number) as2Var12.a(fs2VarB)).longValue();
                                j = jLongValue >> c2;
                                if (j != 0 || j == -1) {
                                    i7 = (int) jLongValue;
                                } else {
                                    i7 = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                                }
                                ValueOf7 = Integer.valueOf(pq.a(Integer.valueOf(i7), displayMetrics, g12Var));
                            } else {
                                ValueOf7 = spannableStringBuilder;
                            }
                            if (y72Var.u != null) {
                                ValueOf8 = Integer.valueOf(i5);
                            } else {
                                ValueOf8 = spannableStringBuilder;
                            }
                            if (y72Var.u != null) {
                                ValueOf9 = Integer.valueOf(i3);
                            } else {
                                ValueOf9 = spannableStringBuilder;
                            }
                            as2Var13 = y72Var.v;
                            if (as2Var13 != null) {
                                r68 = (bp1) as2Var13.a(fs2VarB);
                            } else {
                                r68 = spannableStringBuilder;
                            }
                            ro5Var = new ro5(i5, i3, r50, iA2, r52, r53, ValueOf3, g12Var, r56, ValueOf4, r58, ValueOf5, ValueOf6, ax3Var, r62, r63, yj5Var, ValueOf7, ValueOf8, ValueOf9, r68);
                            if (ro5Var.d != null && ro5Var.e == 0 && ro5Var.f == null && ro5Var.g == null && ro5Var.h == null && ro5Var.i == ro5.w && ro5Var.j == null && ro5Var.k == null && ro5Var.m == null && ro5Var.n == null && ro5Var.o == null && ro5Var.p == null && ro5Var.q == null && ro5Var.r == null && ro5Var.s == null && ro5Var.t == null && ro5Var.u == null && ro5Var.v == null) {
                                iB = iB;
                                iB2 = iB2;
                                vq0VarA = vq0VarA;
                                fs2VarB2 = fs2VarB2;
                                arrayList2 = arrayList2;
                            } else {
                                treeSet.add(Integer.valueOf(i5));
                                treeSet.add(Integer.valueOf(i3));
                                ArrayList arrayList3 = arrayList2;
                                arrayList3.add(ro5Var);
                                arrayList2 = arrayList3;
                                iB = iB;
                                iB2 = iB2;
                                vq0VarA = vq0VarA;
                                fs2VarB2 = fs2VarB2;
                            }
                        }
                    } else {
                        fs2VarB4 = fs2VarB4;
                        spannableStringBuilder3 = spannableStringBuilder3;
                    }
                    i2 = iB2;
                    if (i12 < i2) {
                        displayMetrics = context.getResources().getDisplayMetrics();
                        fs2VarB = ttVar.b();
                        i3 = i2;
                        i4 = xv5Var.c;
                        as2Var = y72Var.i;
                        if (as2Var != null) {
                            jLongValue3 = ((Number) as2Var.a(fs2VarB)).longValue();
                            j3 = jLongValue3 >> c2;
                            if (j3 != 0) {
                                i9 = (int) jLongValue3;
                            } else {
                                i9 = (int) jLongValue3;
                            }
                            ValueOf2 = Integer.valueOf(i9);
                        } else {
                            ValueOf2 = spannableStringBuilder;
                        }
                        g12Var = (g12) y72Var.j.a(fs2VarB);
                        as2Var2 = y72Var.b;
                        if (as2Var2 != null) {
                            r50 = (d82) as2Var2.a(fs2VarB);
                        } else {
                            r50 = spannableStringBuilder;
                        }
                        int iA3 = pq.a((Number) y72Var.d.a(fs2VarB), displayMetrics, g12Var);
                        as2Var3 = y72Var.g;
                        if (as2Var3 != null) {
                            r52 = (String) as2Var3.a(fs2VarB);
                        } else {
                            r52 = spannableStringBuilder;
                        }
                        as2Var4 = y72Var.h;
                        if (as2Var4 != null) {
                            r53 = (String) as2Var4.a(fs2VarB);
                        } else {
                            r53 = spannableStringBuilder;
                        }
                        if (ValueOf2 != 0) {
                            ValueOf3 = Integer.valueOf(pq.a((Number) ValueOf2, displayMetrics, g12Var));
                        } else {
                            ValueOf3 = spannableStringBuilder;
                        }
                        as2Var5 = y72Var.l;
                        if (as2Var5 != null) {
                            r56 = (tf1) as2Var5.a(fs2VarB);
                        } else {
                            r56 = spannableStringBuilder;
                        }
                        as2Var6 = y72Var.m;
                        if (as2Var6 != null) {
                            jLongValue2 = ((Number) as2Var6.a(fs2VarB)).longValue();
                            j2 = jLongValue2 >> c2;
                            if (j2 != 0) {
                                i8 = (int) jLongValue2;
                            } else {
                                i8 = (int) jLongValue2;
                            }
                            ValueOf4 = Integer.valueOf(i8);
                        } else {
                            ValueOf4 = spannableStringBuilder;
                        }
                        as2Var7 = y72Var.k;
                        if (as2Var7 != null) {
                            r58 = (JSONObject) as2Var7.a(fs2VarB);
                        } else {
                            r58 = spannableStringBuilder;
                        }
                        as2Var8 = y72Var.n;
                        if (as2Var8 != null) {
                            double dDoubleValue2 = ((Number) as2Var8.a(fs2VarB)).doubleValue();
                            if (ValueOf2 != 0) {
                                iIntValue = ValueOf2.intValue();
                            } else {
                                iIntValue = i4;
                            }
                            ValueOf5 = Double.valueOf(dDoubleValue2 / ((double) iIntValue));
                        } else {
                            ValueOf5 = spannableStringBuilder;
                        }
                        as2Var9 = y72Var.o;
                        if (as2Var9 != null) {
                            ValueOf6 = Integer.valueOf(uq.a(Long.valueOf(((Number) as2Var9.a(fs2VarB)).longValue()), displayMetrics, g12Var));
                        } else {
                            ValueOf6 = spannableStringBuilder;
                        }
                        aa2Var = y72Var.p;
                        if (aa2Var == null) {
                            i5 = i12;
                            ax3Var = spannableStringBuilder;
                        } else {
                            fs2Var2 = ttVar.b;
                            displayMetrics2 = context.getResources().getDisplayMetrics();
                            i5 = i12;
                            if (aa2Var instanceof y92) {
                                ka2 ka2Var2 = ((y92) aa2Var).a;
                                ax3Var = new zw3(((Number) ka2Var2.a.a(fs2Var2)).intValue(), (float) ((Number) ka2Var2.b.a(fs2Var2)).doubleValue(), ((Boolean) ka2Var2.c.a(fs2Var2)).booleanValue(), ((Boolean) ka2Var2.d.a(fs2Var2)).booleanValue(), pq.b(Long.valueOf(((Number) ka2Var2.e.b.a(fs2Var2)).longValue()), displayMetrics2, (g12) ka2Var2.e.a.a(fs2Var2)));
                            } else {
                                if (aa2Var instanceof z92) {
                                    defpackage.me0.e();
                                    return spannableStringBuilder;
                                }
                                qa2 qa2Var2 = ((z92) aa2Var).a;
                                ax3Var = new ax3(((Number) qa2Var2.a.a(fs2Var2)).intValue(), ((Boolean) qa2Var2.b.a(fs2Var2)).booleanValue());
                            }
                        }
                        as2Var10 = y72Var.r;
                        if (as2Var10 != null) {
                            r62 = (bp1) as2Var10.a(fs2VarB);
                        } else {
                            r62 = spannableStringBuilder;
                        }
                        as2Var11 = y72Var.s;
                        if (as2Var11 != null) {
                            r63 = (Integer) as2Var11.a(fs2VarB);
                        } else {
                            r63 = spannableStringBuilder;
                        }
                        xz1Var = y72Var.t;
                        i6 = xv5Var.i;
                        if (xz1Var == null) {
                            yj5Var = spannableStringBuilder;
                        } else {
                            DisplayMetrics displayMetrics5 = context.getResources().getDisplayMetrics();
                            fs2 fs2Var5 = ttVar.b;
                            float fA4 = pq.a((Number) xz1Var.b.a(fs2Var5), displayMetrics5);
                            float fA5 = pq.a(xz1Var.d.a, displayMetrics5, fs2Var5);
                            float fA6 = pq.a(xz1Var.d.b, displayMetrics5, fs2Var5);
                            Paint paint2 = this.c;
                            paint2.setColor(((Number) xz1Var.c.a(fs2Var5)).intValue());
                            paint2.setAlpha((int) (((double) (i6 >>> 24)) * ((Number) xz1Var.a.a(fs2Var5)).doubleValue()));
                            yj5Var = new yj5(fA5, fA6, fA4, paint2.getColor());
                        }
                        as2Var12 = y72Var.u;
                        if (as2Var12 != null) {
                            jLongValue = ((Number) as2Var12.a(fs2VarB)).longValue();
                            j = jLongValue >> c2;
                            if (j != 0) {
                                i7 = (int) jLongValue;
                            } else {
                                i7 = (int) jLongValue;
                            }
                            ValueOf7 = Integer.valueOf(pq.a(Integer.valueOf(i7), displayMetrics, g12Var));
                        } else {
                            ValueOf7 = spannableStringBuilder;
                        }
                        if (y72Var.u != null) {
                            ValueOf8 = Integer.valueOf(i5);
                        } else {
                            ValueOf8 = spannableStringBuilder;
                        }
                        if (y72Var.u != null) {
                            ValueOf9 = Integer.valueOf(i3);
                        } else {
                            ValueOf9 = spannableStringBuilder;
                        }
                        as2Var13 = y72Var.v;
                        if (as2Var13 != null) {
                            r68 = (bp1) as2Var13.a(fs2VarB);
                        } else {
                            r68 = spannableStringBuilder;
                        }
                        ro5Var = new ro5(i5, i3, r50, iA3, r52, r53, ValueOf3, g12Var, r56, ValueOf4, r58, ValueOf5, ValueOf6, ax3Var, r62, r63, yj5Var, ValueOf7, ValueOf8, ValueOf9, r68);
                        if (ro5Var.d != null) {
                        }
                        treeSet.add(Integer.valueOf(i5));
                        treeSet.add(Integer.valueOf(i3));
                        ArrayList arrayList4 = arrayList2;
                        arrayList4.add(ro5Var);
                        arrayList2 = arrayList4;
                        iB = iB;
                        iB2 = iB2;
                        vq0VarA = vq0VarA;
                        fs2VarB2 = fs2VarB2;
                    }
                }
            }
            i = iB;
            spannableStringBuilder2 = spannableStringBuilder3;
            vq0Var = vq0VarA;
            fs2Var = fs2VarB2;
            r46 = kx2Var;
            int i13 = iB2;
            ArrayList arrayList5 = arrayList2;
            defpackage.nn1.I(arrayList5);
            Integer numA2 = xv5Var.a();
            if (numA2 != null) {
                int iIntValue2 = numA2.intValue();
                treeSet.add(0);
                treeSet.add(Integer.valueOf(i13));
                arrayList5.add(0, new ro5(0, i13, null, 0, null, null, null, ro5.w, null, null, null, null, Integer.valueOf(iIntValue2), null, null, null, null, null, null, null, null));
            }
            if (arrayList5.isEmpty()) {
                arrayList = r46;
            } else {
                List listT0 = defpackage.qn1.t0(treeSet);
                arrayList = new ArrayList();
                ArrayList arrayList6 = new ArrayList();
                int iIntValue3 = ((Number) defpackage.qn1.T(listT0)).intValue();
                if (listT0.size() == 1) {
                    g12 g12Var3 = ro5.w;
                    ro5 ro5VarA = qo5.a(iIntValue3, iIntValue3);
                    Iterator it3 = arrayList5.iterator();
                    while (it3.hasNext()) {
                        ro5VarA = ro5VarA.a((ro5) it3.next(), iIntValue3, iIntValue3);
                    }
                    arrayList.add(ro5VarA);
                } else {
                    int size2 = listT0.size();
                    int i14 = 1;
                    while (i14 < size2) {
                        int iIntValue4 = ((Number) listT0.get(i14)).intValue();
                        int size3 = arrayList5.size();
                        for (int i15 = 0; i15 < size3; i15++) {
                            ro5 ro5Var2 = (ro5) arrayList5.get(i15);
                            if (iIntValue4 < ro5Var2.a()) {
                                break;
                            }
                            if (iIntValue4 > ro5Var2.a() && iIntValue4 <= ro5Var2.c) {
                                arrayList6.add(ro5Var2);
                            }
                        }
                        if (!arrayList6.isEmpty()) {
                            g12 g12Var4 = ro5.w;
                            ro5 ro5VarA2 = qo5.a(iIntValue3, iIntValue4);
                            Iterator it4 = arrayList6.iterator();
                            while (it4.hasNext()) {
                                ro5VarA2 = ro5VarA2.a((ro5) it4.next(), iIntValue3, iIntValue4);
                            }
                            arrayList.add(ro5VarA2);
                        }
                        arrayList6.clear();
                        i14++;
                        iIntValue3 = iIntValue4;
                    }
                }
            }
        }
        if (list2 != null) {
            ArrayList arrayList7 = new ArrayList();
            for (Object obj : list2) {
                fs2 fs2Var6 = fs2Var;
                if (((Number) ((x72) obj).f.a(fs2Var6)).longValue() <= xv5Var.j) {
                    arrayList7.add(obj);
                }
                fs2Var = fs2Var6;
            }
            fs2Var3 = fs2Var;
            N0 = defpackage.qn1.n0(arrayList7, new vo5(this, xv5Var, fs2Var3));
        } else {
            fs2Var3 = fs2Var;
            N0 = r46;
        }
        boolean z3 = an2Var instanceof zo1;
        if (z3) {
            zo1Var = (zo1) an2Var;
        } else {
            r14 = spannableStringBuilder;
        }
        if (r14 != 0) {
            r14.n.clear();
            r14.o.clear();
            lw5 lw5Var = r14.p;
            if (lw5Var != null) {
                r14 = zo1Var;
                lw5Var.invalidateRoot();
            }
            r14 = zo1Var;
            r14.h();
            za2 za2Var = r14.t;
            if (za2Var != null) {
                za2Var.c.clear();
            }
        }
        r14 = zo1Var;
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            a(an2Var, spannableStringBuilder2, xv5Var, (ro5) it5.next());
        }
        SpannableStringBuilder spannableStringBuilder4 = spannableStringBuilder2;
        int i16 = 33;
        if (list != null && !list.isEmpty()) {
            Iterator it6 = list.iterator();
            while (it6.hasNext()) {
                y72 y72Var2 = (y72) it6.next();
                if (y72Var2.a != null || y72Var2.c != null || y72Var2.e != null) {
                    Iterator it7 = list.iterator();
                    while (it7.hasNext()) {
                        y72 y72Var3 = (y72) it7.next();
                        long jLongValue9 = ((Number) y72Var3.q.a(fs2Var3)).longValue();
                        long j9 = jLongValue9 >> c2;
                        int i17 = (j9 == 0 || j9 == -1) ? (int) jLongValue9 : jLongValue9 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                        if (i17 > i) {
                            i17 = i;
                        }
                        as2 as2Var19 = y72Var3.f;
                        if (as2Var19 != null) {
                            long jLongValue10 = ((Number) as2Var19.a(fs2Var3)).longValue();
                            long j10 = jLongValue10 >> c2;
                            i10 = (j10 == 0 || j10 == -1) ? (int) jLongValue10 : jLongValue10 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                            if (i10 > i) {
                                i10 = i;
                            }
                        } else {
                            i10 = i;
                        }
                        List list4 = y72Var3.a;
                        if (list4 == null || list4.isEmpty()) {
                            ttVar2 = ttVar;
                        } else {
                            an2Var.setMovementMethod(oi5.a);
                            ttVar2 = ttVar;
                            spannableStringBuilder4.setSpan(new yt4(ttVar2, list4), i17, i10, i16);
                            ViewCompat.enableAccessibleClickableSpanSupport(an2Var);
                        }
                        o92 o92Var = y72Var3.e;
                        h92 h92Var = y72Var3.c;
                        if (o92Var != null || h92Var != null) {
                            fs2 fs2Var7 = ttVar2.b;
                            i41 i41Var = new i41(o92Var, h92Var);
                            if (z3) {
                                zo1 zo1Var2 = (zo1) an2Var;
                                za2 za2Var2 = zo1Var2.t;
                                if (za2Var2 == null) {
                                    zo1Var2.setTextRoundedBgHelper$mobileads_externalRelease(new za2(zo1Var2, fs2Var7));
                                } else {
                                    ArrayList arrayList8 = za2Var2.c;
                                    if (arrayList8 == null || !arrayList8.isEmpty()) {
                                        Iterator it8 = arrayList8.iterator();
                                        while (true) {
                                            if (it8.hasNext()) {
                                                i41 i41Var2 = (i41) it8.next();
                                                z2 = z3;
                                                it = it7;
                                                if (!defpackage.aa4.e(i41Var2.b, i41Var.b) || !defpackage.aa4.e(i41Var2.c, i41Var.c) || i10 != spannableStringBuilder4.getSpanEnd(i41Var2) || i17 != spannableStringBuilder4.getSpanStart(i41Var2)) {
                                                    it7 = it;
                                                    z3 = z2;
                                                }
                                            }
                                        }
                                    }
                                    it7 = it;
                                    z3 = z2;
                                }
                                z2 = z3;
                                it = it7;
                                spannableStringBuilder4.setSpan(i41Var, i17, i10, 33);
                                za2 za2Var3 = zo1Var2.t;
                                if (za2Var3 != null) {
                                    za2Var3.c.add(i41Var);
                                }
                                it7 = it;
                                z3 = z2;
                            }
                            i16 = 33;
                        }
                    }
                    break;
                }
            }
        }
        tt ttVar3 = ttVar;
        int length = spannableStringBuilder4.length();
        if (list3 == null || list3.isEmpty()) {
            z = false;
        } else {
            an2Var.setMovementMethod(oi5.a);
            z = false;
            spannableStringBuilder4.setSpan(new yt4(ttVar3, list3), 0, length, 33);
            ViewCompat.enableAccessibleClickableSpanSupport(an2Var);
        }
        int size4 = N0.size() - 1;
        if (size4 >= 0) {
            while (true) {
                int i18 = size4 - 1;
                x72 x72Var = (x72) N0.get(size4);
                int iA4 = a(xv5Var.b(), x72Var, fs2Var3);
                int iA5 = size4 > 0 ? a(xv5Var.b(), (x72) N0.get(size4 - 1), fs2Var3) : Integer.MIN_VALUE;
                spannableStringBuilder4.insert(iA4, (CharSequence) "#");
                nd3 nd3VarA = a(ttVar3, an2Var, spannableStringBuilder4, xv5Var, x72Var);
                boolean z4 = iA5 + 1 == iA4 ? true : z;
                boolean z5 = (iA4 <= 0 || defpackage.ga1.e(spannableStringBuilder4.charAt(iA4 + (-1)))) ? z : true;
                if (!z4 && z5) {
                    spannableStringBuilder4.insert(iA4, (CharSequence) "\u2060");
                }
                SpannableStringBuilder spannableStringBuilder5 = spannableStringBuilder4;
                nl3Var2 = nl3Var;
                spannableStringBuilder4 = spannableStringBuilder5;
                vq0 vq0Var2 = vq0Var;
                vq0Var2.a(this.b.b(((Uri) x72Var.i.a(fs2Var3)).toString(), new uo5(ttVar3, x72Var, nd3VarA, spannableStringBuilder5, nl3Var2)));
                if (i18 < 0) {
                    break;
                }
                ttVar3 = ttVar;
                vq0Var = vq0Var2;
                size4 = i18;
            }
        } else {
            nl3Var2 = nl3Var;
        }
        if (nl3Var2 != null) {
            nl3Var2.invoke(spannableStringBuilder4);
        }
        return spannableStringBuilder4;
    }

    public static final void a(vq0 vq0Var, tt ttVar, TextView textView, List list) {
        ((bt0) vq0Var.n.G.getValue()).a(ttVar, textView, list);
    }

    public final void a(final an2 an2Var, SpannableStringBuilder spannableStringBuilder, xv5 xv5Var, ro5 ro5Var) {
        iw5 iw5Var;
        int iA;
        int i = ro5Var.b;
        int i2 = ro5Var.c;
        if (i > i2) {
            return;
        }
        d82 d82Var = ro5Var.d;
        if (d82Var == null) {
            d82Var = d82.BASELINE;
        }
        int i3 = ro5Var.e;
        if (i3 != 0) {
            Integer num = ro5Var.n;
            spannableStringBuilder.setSpan(new rs(i3, (num == null && (num = xv5Var.h) == null) ? 0 : num.intValue()), i, i2, 33);
        } else if (d82Var != d82.BASELINE) {
            Integer num2 = ro5Var.h;
            int iIntValue = num2 != null ? num2.intValue() : 0;
            int iOrdinal = d82Var.ordinal();
            if (iOrdinal == 0) {
                iw5Var = iw5.TOP;
            } else if (iOrdinal == 1) {
                iw5Var = iw5.CENTER;
            } else if (iOrdinal == 2) {
                iw5Var = iw5.BOTTOM;
            } else if (iOrdinal != 3) {
                iw5Var = iw5.BASELINE;
            } else {
                iw5Var = iw5.BASELINE;
            }
            spannableStringBuilder.setSpan(new n96(iIntValue, iw5Var, new ws6() { // from class: oga
                @Override // defpackage.ws6
                public final Object get() {
                    return wo5.a(an2Var);
                }
            }), i, i2, 33);
        }
        Integer num3 = ro5Var.h;
        if (num3 != null) {
            int iIntValue2 = num3.intValue();
            Integer num4 = ro5Var.n;
            spannableStringBuilder.setSpan(new hz2(iIntValue2, (num4 == null && (num4 = xv5Var.h) == null) ? 0 : num4.intValue()), i, i2, 33);
        }
        String str = ro5Var.g;
        if (str != null) {
            spannableStringBuilder.setSpan(new wy2(str), i, i2, 33);
        }
        Integer num5 = ro5Var.q;
        if (num5 != null) {
            spannableStringBuilder.setSpan(new wv5(num5.intValue()), i, i2, 33);
        }
        Double d = ro5Var.m;
        if (d != null) {
            spannableStringBuilder.setSpan(new as3((float) d.doubleValue()), i, i2, 33);
        }
        bp1 bp1Var = ro5Var.p;
        if (bp1Var != null) {
            int iOrdinal2 = bp1Var.ordinal();
            if (iOrdinal2 == 0) {
                spannableStringBuilder.setSpan(new go4(), i, i2, 33);
            } else if (iOrdinal2 == 1) {
                spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
            }
        }
        bp1 bp1Var2 = ro5Var.v;
        if (bp1Var2 != null) {
            int iOrdinal3 = bp1Var2.ordinal();
            if (iOrdinal3 == 0) {
                spannableStringBuilder.setSpan(new ho4(), i, i2, 33);
            } else if (iOrdinal3 == 1) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
            }
        }
        ef2 ef2Var = this.a;
        String str2 = ro5Var.f;
        if (str2 == null) {
            str2 = xv5Var.e;
        }
        cf2 cf2VarA = ef2Var.a(str2);
        if (ro5Var.f != null || ro5Var.j != null || ro5Var.k != null) {
            tf1 tf1Var = ro5Var.j;
            if (tf1Var == null && ro5Var.k == null) {
                iA = gf2.a(xv5Var.f, xv5Var.g);
            } else {
                iA = gf2.a(tf1Var, ro5Var.k);
            }
            Typeface typefaceA = cf2VarA.a(iA);
            if (typefaceA == null) {
                typefaceA = Typeface.DEFAULT;
            }
            spannableStringBuilder.setSpan(new x36(typefaceA), i, i2, 33);
        }
        if (kw5.a()) {
            cf2VarA.getClass();
        }
        Integer num6 = ro5Var.n;
        if (num6 != null || ro5Var.s != null) {
            int i4 = defpackage.aa4.e(num6, xv5Var.h) ? 18 : 33;
            Integer num7 = ro5Var.s;
            int iIntValue3 = num7 != null ? num7.intValue() : 0;
            Integer num8 = ro5Var.n;
            int iIntValue4 = num8 != null ? num8.intValue() : 0;
            Integer num9 = ro5Var.t;
            spannableStringBuilder.setSpan(new dt3(iIntValue3, iIntValue4, num9 != null ? num9.intValue() : i), i, i2, i4);
        }
        yj5 yj5Var = ro5Var.r;
        if (yj5Var != null) {
            spannableStringBuilder.setSpan(new zj5(yj5Var), i, i2, 33);
        }
        bx3 bx3Var = ro5Var.o;
        if (bx3Var != null) {
            if (bx3Var instanceof zw3) {
                if (((zw3) bx3Var).d) {
                    spannableStringBuilder.setSpan(new dx3(bx3Var, an2Var instanceof zo1 ? (zo1) an2Var : null), i, i2, 33);
                }
            } else if ((bx3Var instanceof ax3) && ((ax3) bx3Var).b) {
                spannableStringBuilder.setSpan(new dx3(bx3Var, an2Var instanceof zo1 ? (zo1) an2Var : null), i, i2, 33);
            }
        }
    }

    public static int a(int i, x72 x72Var, fs2 fs2Var) {
        long jLongValue = ((Number) x72Var.f.a(fs2Var)).longValue();
        int iOrdinal = ((w72) x72Var.d.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                return (int) jLongValue;
            }
            return jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        if (iOrdinal != 1) {
            defpackage.me0.e();
            return 0;
        }
        long j2 = ((long) i) - jLongValue;
        long j3 = j2 >> 31;
        if (j3 == 0 || j3 == -1) {
            return (int) j2;
        }
        return j2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
    }

    public static final Layout a(TextView textView) {
        return textView.getLayout();
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0121  */
    public static nd3 a(tt ttVar, an2 an2Var, SpannableStringBuilder spannableStringBuilder, xv5 xv5Var, x72 x72Var) {
        iw5 iw5Var;
        ld3 ld3Var;
        String strA;
        char c;
        DisplayMetrics displayMetrics = an2Var.getResources().getDisplayMetrics();
        vq0 vq0Var = ttVar.a;
        fs2 fs2Var = ttVar.b;
        int iA = a(xv5Var.j, x72Var, fs2Var);
        int iA2 = uq.a(x72Var.j, displayMetrics, fs2Var);
        int iA3 = uq.a(x72Var.c, displayMetrics, fs2Var);
        Integer num = xv5Var.h;
        int iIntValue = num != null ? num.intValue() : 0;
        int iOrdinal = ((d82) x72Var.b.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            iw5Var = iw5.TOP;
        } else if (iOrdinal == 1) {
            iw5Var = iw5.CENTER;
        } else if (iOrdinal == 2) {
            iw5Var = iw5.BOTTOM;
        } else if (iOrdinal != 3) {
            iw5Var = iw5.BASELINE;
        } else {
            iw5Var = iw5.BASELINE;
        }
        u72 u72Var = x72Var.a;
        if (u72Var != null) {
            int iOrdinal2 = u72Var.b.ordinal();
            if (iOrdinal2 == 1) {
                strA = x07.a(Button.class).a();
            } else if (iOrdinal2 == 2) {
                strA = x07.a(ImageView.class).a();
            } else if (iOrdinal2 != 3) {
                strA = iOrdinal2 != 4 ? null : x07.a(ImageView.class).a();
            } else {
                strA = x07.a(TextView.class).a();
            }
            as2 as2Var = u72Var.a;
            String str = as2Var != null ? (String) as2Var.a(fs2Var) : null;
            yt4[] yt4VarArr = (yt4[]) spannableStringBuilder.getSpans(iA, iA + 1, yt4.class);
            if (yt4VarArr.length > 1) {
                c = 0;
                o01.b(ttVar.a, new Throwable("Two or more clickable ranges intersect."));
            } else {
                c = 0;
            }
            yt4 yt4Var = yt4VarArr.length == 0 ? null : yt4VarArr[c];
            List list = yt4Var != null ? yt4Var.c : null;
            ld3Var = new ld3(strA, str, list != null ? new nga(vq0Var, ttVar, an2Var, list) : null);
        } else {
            ld3Var = null;
        }
        nd3 nd3Var = new nd3(iA2, iA3, iIntValue, iw5Var, ld3Var);
        spannableStringBuilder.setSpan(nd3Var, iA, iA + 1, 33);
        zo1 zo1Var = an2Var instanceof zo1 ? (zo1) an2Var : null;
        if (zo1Var != null && defpackage.aa4.e(s0.a, Boolean.TRUE)) {
            zo1Var.o.add(nd3Var);
            ld3 ld3Var2 = nd3Var.f;
            if ((ld3Var2 != null ? ld3Var2.b : null) == null) {
                if ((ld3Var2 != null ? ld3Var2.c : null) != null) {
                    zo1Var.n.add(nd3Var);
                }
            } else {
                zo1Var.n.add(nd3Var);
            }
            lw5 lw5Var = zo1Var.p;
            if (lw5Var != null) {
                lw5Var.invalidateVirtualView(zo1Var.n.size() - 1);
            }
        }
        return nd3Var;
    }
}
