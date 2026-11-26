package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.collection.LongSparseArray;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class qs8 extends nd0 {
    public final StringBuilder D;
    public final StringBuilder E;
    public final StringBuilder F;
    public final StringBuilder G;
    public final RectF H;
    public final Matrix I;
    public final a J;
    public final b K;
    public final HashMap L;
    public final LongSparseArray<String> M;
    public final ArrayList N;
    public final ArrayList O;
    public final is8 P;
    public final ox4 Q;
    public final nw4 R;
    public final ts8 S;
    public final tn1 T;
    public ac9 U;
    public final tn1 V;
    public ac9 W;
    public final tc3 X;
    public ac9 Y;
    public final tc3 Z;
    public ac9 a0;
    public final b84 b0;
    public ac9 c0;
    public ac9 d0;
    public final b84 e0;
    public final b84 f0;
    public final b84 g0;

    public class a extends Paint {
    }

    public class b extends Paint {
    }

    public static /* synthetic */ class c {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[bq2.a.values().length];
            a = iArr;
            try {
                iArr[bq2.a.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[bq2.a.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[bq2.a.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class d {
        public String a = "";
        public float b = 0.0f;
    }

    public qs8(ox4 ox4Var, xk4 xk4Var) {
        ol olVar;
        ol olVar2;
        fl flVar;
        ol olVar3;
        fl flVar2;
        ol olVar4;
        fl flVar3;
        pl plVar;
        fl flVar4;
        pl plVar2;
        dl dlVar;
        pl plVar3;
        dl dlVar2;
        pl plVar4;
        cl clVar;
        pl plVar5;
        cl clVar2;
        super(ox4Var, xk4Var);
        this.D = new StringBuilder(2);
        this.E = new StringBuilder(0);
        this.F = new StringBuilder(0);
        this.G = new StringBuilder(0);
        this.H = new RectF();
        this.I = new Matrix();
        a aVar = new a(1);
        aVar.setStyle(Paint.Style.FILL);
        this.J = aVar;
        b bVar = new b(1);
        bVar.setStyle(Paint.Style.STROKE);
        this.K = bVar;
        this.L = new HashMap();
        this.M = new LongSparseArray<>();
        this.N = new ArrayList();
        this.O = new ArrayList();
        this.S = ts8.INDEX;
        this.Q = ox4Var;
        this.R = xk4Var.b;
        is8 is8Var = new is8((List) xk4Var.q.b);
        this.P = is8Var;
        is8Var.a(this);
        c(is8Var);
        ml mlVar = xk4Var.r;
        if (mlVar != null && (plVar5 = (pl) mlVar.a) != null && (clVar2 = plVar5.a) != null) {
            ld0<?, ?> ld0VarA = clVar2.a();
            this.T = (tn1) ld0VarA;
            ld0VarA.a(this);
            c(ld0VarA);
        }
        if (mlVar != null && (plVar4 = (pl) mlVar.a) != null && (clVar = plVar4.b) != null) {
            ld0<?, ?> ld0VarA2 = clVar.a();
            this.V = (tn1) ld0VarA2;
            ld0VarA2.a(this);
            c(ld0VarA2);
        }
        if (mlVar != null && (plVar3 = (pl) mlVar.a) != null && (dlVar2 = plVar3.c) != null) {
            tc3 tc3VarA = dlVar2.a();
            this.X = tc3VarA;
            tc3VarA.a(this);
            c(tc3VarA);
        }
        if (mlVar != null && (plVar2 = (pl) mlVar.a) != null && (dlVar = plVar2.d) != null) {
            tc3 tc3VarA2 = dlVar.a();
            this.Z = tc3VarA2;
            tc3VarA2.a(this);
            c(tc3VarA2);
        }
        if (mlVar != null && (plVar = (pl) mlVar.a) != null && (flVar4 = plVar.e) != null) {
            ld0<?, ?> ld0VarA3 = flVar4.a();
            this.b0 = (b84) ld0VarA3;
            ld0VarA3.a(this);
            c(ld0VarA3);
        }
        if (mlVar != null && (olVar4 = (ol) mlVar.b) != null && (flVar3 = olVar4.a) != null) {
            ld0<?, ?> ld0VarA4 = flVar3.a();
            this.e0 = (b84) ld0VarA4;
            ld0VarA4.a(this);
            c(ld0VarA4);
        }
        if (mlVar != null && (olVar3 = (ol) mlVar.b) != null && (flVar2 = olVar3.b) != null) {
            ld0<?, ?> ld0VarA5 = flVar2.a();
            this.f0 = (b84) ld0VarA5;
            ld0VarA5.a(this);
            c(ld0VarA5);
        }
        if (mlVar != null && (olVar2 = (ol) mlVar.b) != null && (flVar = olVar2.c) != null) {
            ld0<?, ?> ld0VarA6 = flVar.a();
            this.g0 = (b84) ld0VarA6;
            ld0VarA6.a(this);
            c(ld0VarA6);
        }
        if (mlVar == null || (olVar = (ol) mlVar.b) == null) {
            return;
        }
        this.S = olVar.d;
    }

    public static void v(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    public static void w(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    public final List<d> A(String str, float f, di3 di3Var, float f2, float f3, boolean z) {
        float fMeasureText;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (z) {
                gi3 gi3Var = this.R.h.get(gi3.a(cCharAt, di3Var.a, di3Var.c));
                if (gi3Var != null) {
                    fMeasureText = (ib9.c() * ((float) gi3Var.c) * f2) + f3;
                }
            } else {
                fMeasureText = this.J.measureText(str.substring(i4, i4 + 1)) + f3;
            }
            if (cCharAt == ' ') {
                z2 = true;
                f6 = fMeasureText;
            } else if (z2) {
                z2 = false;
                i3 = i4;
                f5 = fMeasureText;
            } else {
                f5 += fMeasureText;
            }
            f4 += fMeasureText;
            if (f > 0.0f && f4 >= f && cCharAt != ' ') {
                i++;
                d dVarX = x(i);
                if (i3 == i2) {
                    String strSubstring = str.substring(i2, i4);
                    String strTrim = strSubstring.trim();
                    float length = (f4 - fMeasureText) - ((strTrim.length() - strSubstring.length()) * f6);
                    dVarX.a = strTrim;
                    dVarX.b = length;
                    i2 = i4;
                    i3 = i2;
                    f4 = fMeasureText;
                    f5 = f4;
                } else {
                    String strSubstring2 = str.substring(i2, i3 - 1);
                    String strTrim2 = strSubstring2.trim();
                    float length2 = ((f4 - f5) - ((strSubstring2.length() - strTrim2.length()) * f6)) - f6;
                    dVarX.a = strTrim2;
                    dVarX.b = length2;
                    f4 = f5;
                    i2 = i3;
                }
            }
        }
        if (f4 > 0.0f) {
            i++;
            d dVarX2 = x(i);
            dVarX2.a = str.substring(i2);
            dVarX2.b = f4;
        }
        return this.O.subList(0, i);
    }

    @Override // defpackage.nd0, defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        super.b(rectF, matrix, z);
        nw4 nw4Var = this.R;
        rectF.set(0.0f, 0.0f, nw4Var.k.width(), nw4Var.k.height());
    }

    @Override // defpackage.nd0, defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        super.i(by4Var, obj);
        PointF pointF = vx4.a;
        if (obj == 1) {
            ac9 ac9Var = this.U;
            if (ac9Var != null) {
                p(ac9Var);
            }
            ac9 ac9Var2 = new ac9(by4Var, null);
            this.U = ac9Var2;
            ac9Var2.a(this);
            c(this.U);
            return;
        }
        if (obj == 2) {
            ac9 ac9Var3 = this.W;
            if (ac9Var3 != null) {
                p(ac9Var3);
            }
            ac9 ac9Var4 = new ac9(by4Var, null);
            this.W = ac9Var4;
            ac9Var4.a(this);
            c(this.W);
            return;
        }
        if (obj == vx4.q) {
            ac9 ac9Var5 = this.Y;
            if (ac9Var5 != null) {
                p(ac9Var5);
            }
            ac9 ac9Var6 = new ac9(by4Var, null);
            this.Y = ac9Var6;
            ac9Var6.a(this);
            c(this.Y);
            return;
        }
        if (obj == vx4.r) {
            ac9 ac9Var7 = this.a0;
            if (ac9Var7 != null) {
                p(ac9Var7);
            }
            ac9 ac9Var8 = new ac9(by4Var, null);
            this.a0 = ac9Var8;
            ac9Var8.a(this);
            c(this.a0);
            return;
        }
        if (obj == vx4.D) {
            ac9 ac9Var9 = this.c0;
            if (ac9Var9 != null) {
                p(ac9Var9);
            }
            ac9 ac9Var10 = new ac9(by4Var, null);
            this.c0 = ac9Var10;
            ac9Var10.a(this);
            c(this.c0);
            return;
        }
        if (obj != vx4.K) {
            if (obj == vx4.M) {
                is8 is8Var = this.P;
                is8Var.getClass();
                is8Var.k(new hs8(new rx4(), by4Var, new bq2()));
                return;
            }
            return;
        }
        ac9 ac9Var11 = this.d0;
        if (ac9Var11 != null) {
            p(ac9Var11);
        }
        ac9 ac9Var12 = new ac9(by4Var, null);
        this.d0 = ac9Var12;
        ac9Var12.a(this);
        c(this.d0);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0353 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x0355  */
    /* JADX WARN: Code duplicated, block: B:103:0x0358 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x035a  */
    /* JADX WARN: Code duplicated, block: B:105:0x035d  */
    /* JADX WARN: Code duplicated, block: B:109:0x0365  */
    /* JADX WARN: Code duplicated, block: B:111:0x036d  */
    /* JADX WARN: Code duplicated, block: B:129:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:131:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:132:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:136:0x040f  */
    /* JADX WARN: Code duplicated, block: B:138:0x0428  */
    /* JADX WARN: Code duplicated, block: B:140:0x043f  */
    /* JADX WARN: Code duplicated, block: B:142:0x0454 A[LOOP:7: B:141:0x0452->B:142:0x0454, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:145:0x0476  */
    /* JADX WARN: Code duplicated, block: B:147:0x0494  */
    /* JADX WARN: Code duplicated, block: B:148:0x049a  */
    /* JADX WARN: Code duplicated, block: B:151:0x04a8 A[LOOP:9: B:149:0x04a2->B:151:0x04a8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:155:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:159:0x04dd A[LOOP:10: B:157:0x04d7->B:159:0x04dd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:163:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:166:0x0508  */
    /* JADX WARN: Code duplicated, block: B:169:0x0515  */
    /* JADX WARN: Code duplicated, block: B:172:0x052b A[LOOP:13: B:167:0x050f->B:172:0x052b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:175:0x0543  */
    /* JADX WARN: Code duplicated, block: B:176:0x054a  */
    /* JADX WARN: Code duplicated, block: B:179:0x0564  */
    /* JADX WARN: Code duplicated, block: B:205:0x0531 A[EDGE_INSN: B:205:0x0531->B:173:0x0531 BREAK  A[LOOP:12: B:164:0x0502->B:171:0x0522], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:24:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:25:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:29:0x0106  */
    /* JADX WARN: Code duplicated, block: B:31:0x0119  */
    /* JADX WARN: Code duplicated, block: B:34:0x0125  */
    /* JADX WARN: Code duplicated, block: B:36:0x0141  */
    /* JADX WARN: Code duplicated, block: B:37:0x0153  */
    /* JADX WARN: Code duplicated, block: B:39:0x015e  */
    /* JADX WARN: Code duplicated, block: B:40:0x016f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0186 A[LOOP:4: B:41:0x0184->B:42:0x0186, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:49:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:50:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:55:0x024f  */
    /* JADX WARN: Code duplicated, block: B:78:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:80:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:81:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:83:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:85:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:87:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:89:0x030c  */
    /* JADX WARN: Code duplicated, block: B:90:0x030f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0319  */
    /* JADX WARN: Code duplicated, block: B:93:0x031e  */
    /* JADX WARN: Code duplicated, block: B:95:0x0322  */
    /* JADX WARN: Code duplicated, block: B:96:0x0326  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nd0
    public final void l(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        int i2;
        fi3 fi3Var;
        String str;
        Typeface typefaceCreateFromAsset;
        pg5<String> pg5Var;
        HashMap map;
        Typeface typeface;
        HashMap map2;
        Typeface typeface2;
        Typeface typeface3;
        boolean zContains;
        boolean zContains2;
        int i3;
        float fFloatValue;
        float fC;
        List listAsList;
        int size;
        int i4;
        int length;
        int i5;
        PointF pointF;
        float f;
        float f2;
        int i6;
        List<d> listA;
        int i7;
        d dVar;
        int i8;
        String string;
        ArrayList arrayList;
        int length2;
        int i9;
        StringBuilder sb;
        int i10;
        String string2;
        String str2;
        int i11;
        ArrayList arrayList2;
        Bidi bidi;
        int runCount;
        byte[] bArr;
        Integer[] numArr;
        int i12;
        StringBuilder sb2;
        int i13;
        int runLevel;
        String strSubstring;
        StringBuilder sb3;
        int length3;
        Canvas canvas2;
        float fFloatValue2;
        float f3;
        int i14;
        int i15;
        PointF pointF2;
        float f4;
        float f5;
        List<d> listA2;
        int i16;
        d dVar2;
        String str3;
        int i17;
        float f6;
        nw4 nw4Var;
        gi3 gi3Var;
        HashMap map3;
        ArrayList arrayList3;
        int size2;
        ArrayList arrayList4;
        int i18;
        List list;
        int i19;
        b bVar;
        a aVar;
        Path path;
        b bVar2;
        a aVar2;
        bq2 bq2VarF = this.P.f();
        nw4 nw4Var2 = this.R;
        di3 di3Var = (di3) nw4Var2.f.get(bq2VarF.b);
        if (di3Var == null) {
            return;
        }
        String str4 = di3Var.c;
        String str5 = di3Var.a;
        canvas.save();
        canvas.concat(matrix);
        u(bq2VarF, i, 0);
        ox4 ox4Var = this.Q;
        Map<String, Typeface> map4 = ox4Var.l;
        String str6 = "\n";
        tc3 tc3Var = this.Z;
        int i20 = 0;
        a aVar3 = this.J;
        b bVar3 = this.K;
        if (map4 == null) {
            i2 = 2;
            if (ox4Var.b.h.size() > 0) {
                ac9 ac9Var = this.c0;
                float fFloatValue3 = ac9Var != null ? ((Float) ac9Var.f()).floatValue() : bq2VarF.c;
                float f7 = 0.0f;
                float[] fArr = ib9.e.get();
                fArr[0] = 0.0f;
                fArr[1] = 0.0f;
                float f8 = ib9.f;
                fArr[2] = f8;
                fArr[3] = f8;
                float f9 = fFloatValue3 / 100.0f;
                matrix.mapPoints(fArr);
                a aVar4 = aVar3;
                ox4 ox4Var2 = ox4Var;
                nw4 nw4Var3 = nw4Var2;
                String str7 = str4;
                Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
                List listAsList2 = Arrays.asList(bq2VarF.a.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
                int size3 = listAsList2.size();
                float f10 = bq2VarF.e / 10.0f;
                ac9 ac9Var2 = this.a0;
                if (ac9Var2 != null) {
                    fFloatValue2 = ((Float) ac9Var2.f()).floatValue();
                } else {
                    if (tc3Var != null) {
                        fFloatValue2 = tc3Var.f().floatValue();
                    }
                    f3 = f10;
                    i14 = 0;
                    i15 = -1;
                    while (i14 < size3) {
                        String str8 = (String) listAsList2.get(i14);
                        pointF2 = bq2VarF.m;
                        if (pointF2 == null) {
                            f4 = f7;
                        } else {
                            f4 = pointF2.x;
                        }
                        f5 = f9;
                        i16 = i20;
                        for (listA2 = A(str8, f4, di3Var, f5, f3, true); i16 < listA2.size(); listA2 = listA2) {
                            dVar2 = listA2.get(i16);
                            i15++;
                            canvas.save();
                            if (z(canvas, bq2VarF, i15, dVar2.b)) {
                                str3 = dVar2.a;
                                i17 = i20;
                                while (i17 < str3.length()) {
                                    List list2 = listAsList2;
                                    String str9 = str7;
                                    int i21 = i16;
                                    f6 = f3;
                                    nw4Var = nw4Var3;
                                    gi3Var = nw4Var.h.get(gi3.a(str3.charAt(i17), str5, str9));
                                    if (gi3Var == null) {
                                        nw4Var3 = nw4Var;
                                        str3 = str3;
                                        size3 = size3;
                                        i14 = i14;
                                        i17 = i17;
                                        bVar = bVar3;
                                        ox4Var2 = ox4Var2;
                                        aVar = aVar4;
                                    } else {
                                        u(bq2VarF, i, i17);
                                        map3 = this.L;
                                        if (map3.containsKey(gi3Var)) {
                                            list = (List) map3.get(gi3Var);
                                        } else {
                                            arrayList3 = gi3Var.a;
                                            size2 = arrayList3.size();
                                            arrayList4 = new ArrayList(size2);
                                            i18 = i20;
                                            while (i18 < size2) {
                                                arrayList4.add(new tx1(ox4Var2, this, (wr7) arrayList3.get(i18), nw4Var));
                                                size2 = size2;
                                                i18++;
                                                arrayList3 = arrayList3;
                                            }
                                            map3.put(gi3Var, arrayList4);
                                            list = arrayList4;
                                        }
                                        i19 = i20;
                                        while (i19 < list.size()) {
                                            path = ((tx1) list.get(i19)).getPath();
                                            nw4 nw4Var4 = nw4Var;
                                            path.computeBounds(this.H, i20);
                                            Matrix matrix2 = this.I;
                                            matrix2.reset();
                                            List list3 = list;
                                            matrix2.preTranslate(f7, (-bq2VarF.g) * ib9.c());
                                            matrix2.preScale(f5, f5);
                                            path.transform(matrix2);
                                            if (bq2VarF.k) {
                                                aVar2 = aVar4;
                                                w(path, aVar2, canvas);
                                                bVar2 = bVar3;
                                                w(path, bVar2, canvas);
                                            } else {
                                                bVar2 = bVar3;
                                                aVar2 = aVar4;
                                                w(path, bVar2, canvas);
                                                w(path, aVar2, canvas);
                                            }
                                            i19++;
                                            bVar3 = bVar2;
                                            aVar4 = aVar2;
                                            list = list3;
                                            nw4Var = nw4Var4;
                                            i20 = 0;
                                            f7 = 0.0f;
                                        }
                                        nw4Var3 = nw4Var;
                                        bVar = bVar3;
                                        aVar = aVar4;
                                        canvas.translate((ib9.c() * ((float) gi3Var.c) * f5) + f6, 0.0f);
                                    }
                                    f3 = f6;
                                    bVar3 = bVar;
                                    str7 = str9;
                                    aVar4 = aVar;
                                    ox4Var2 = ox4Var2;
                                    i16 = i21;
                                    listAsList2 = list2;
                                    str3 = str3;
                                    i14 = i14;
                                    size3 = size3;
                                    i20 = 0;
                                    f7 = 0.0f;
                                    i17++;
                                }
                            }
                            int i22 = i16;
                            float f11 = f3;
                            List list4 = listAsList2;
                            int i23 = size3;
                            int i24 = i14;
                            b bVar4 = bVar3;
                            ox4 ox4Var3 = ox4Var2;
                            a aVar5 = aVar4;
                            String str10 = str7;
                            canvas.restore();
                            f3 = f11;
                            bVar3 = bVar4;
                            str7 = str10;
                            aVar4 = aVar5;
                            ox4Var2 = ox4Var3;
                            listAsList2 = list4;
                            i14 = i24;
                            size3 = i23;
                            i20 = 0;
                            f7 = 0.0f;
                            i16 = i22 + 1;
                        }
                        f9 = f5;
                        listAsList2 = listAsList2;
                        i20 = 0;
                        f7 = 0.0f;
                        i14++;
                    }
                    canvas2 = canvas;
                }
                f10 += fFloatValue2;
                f3 = f10;
                i14 = 0;
                i15 = -1;
                while (i14 < size3) {
                    String str11 = (String) listAsList2.get(i14);
                    pointF2 = bq2VarF.m;
                    if (pointF2 == null) {
                        f4 = f7;
                    } else {
                        f4 = pointF2.x;
                    }
                    f5 = f9;
                    i16 = i20;
                    while (i16 < listA2.size()) {
                        dVar2 = listA2.get(i16);
                        i15++;
                        canvas.save();
                        if (z(canvas, bq2VarF, i15, dVar2.b)) {
                            str3 = dVar2.a;
                            i17 = i20;
                            while (i17 < str3.length()) {
                                List list5 = listAsList2;
                                String str12 = str7;
                                int i25 = i16;
                                f6 = f3;
                                nw4Var = nw4Var3;
                                gi3Var = nw4Var.h.get(gi3.a(str3.charAt(i17), str5, str12));
                                if (gi3Var == null) {
                                    nw4Var3 = nw4Var;
                                    str3 = str3;
                                    size3 = size3;
                                    i14 = i14;
                                    i17 = i17;
                                    bVar = bVar3;
                                    ox4Var2 = ox4Var2;
                                    aVar = aVar4;
                                } else {
                                    u(bq2VarF, i, i17);
                                    map3 = this.L;
                                    if (map3.containsKey(gi3Var)) {
                                        list = (List) map3.get(gi3Var);
                                    } else {
                                        arrayList3 = gi3Var.a;
                                        size2 = arrayList3.size();
                                        arrayList4 = new ArrayList(size2);
                                        i18 = i20;
                                        while (i18 < size2) {
                                            arrayList4.add(new tx1(ox4Var2, this, (wr7) arrayList3.get(i18), nw4Var));
                                            size2 = size2;
                                            i18++;
                                            arrayList3 = arrayList3;
                                        }
                                        map3.put(gi3Var, arrayList4);
                                        list = arrayList4;
                                    }
                                    i19 = i20;
                                    while (i19 < list.size()) {
                                        path = ((tx1) list.get(i19)).getPath();
                                        nw4 nw4Var5 = nw4Var;
                                        path.computeBounds(this.H, i20);
                                        Matrix matrix3 = this.I;
                                        matrix3.reset();
                                        List list6 = list;
                                        matrix3.preTranslate(f7, (-bq2VarF.g) * ib9.c());
                                        matrix3.preScale(f5, f5);
                                        path.transform(matrix3);
                                        if (bq2VarF.k) {
                                            aVar2 = aVar4;
                                            w(path, aVar2, canvas);
                                            bVar2 = bVar3;
                                            w(path, bVar2, canvas);
                                        } else {
                                            bVar2 = bVar3;
                                            aVar2 = aVar4;
                                            w(path, bVar2, canvas);
                                            w(path, aVar2, canvas);
                                        }
                                        i19++;
                                        bVar3 = bVar2;
                                        aVar4 = aVar2;
                                        list = list6;
                                        nw4Var = nw4Var5;
                                        i20 = 0;
                                        f7 = 0.0f;
                                    }
                                    nw4Var3 = nw4Var;
                                    bVar = bVar3;
                                    aVar = aVar4;
                                    canvas.translate((ib9.c() * ((float) gi3Var.c) * f5) + f6, 0.0f);
                                }
                                f3 = f6;
                                bVar3 = bVar;
                                str7 = str12;
                                aVar4 = aVar;
                                ox4Var2 = ox4Var2;
                                i16 = i25;
                                listAsList2 = list5;
                                str3 = str3;
                                i14 = i14;
                                size3 = size3;
                                i20 = 0;
                                f7 = 0.0f;
                                i17++;
                            }
                        }
                        int i26 = i16;
                        float f12 = f3;
                        List list7 = listAsList2;
                        int i27 = size3;
                        int i28 = i14;
                        b bVar5 = bVar3;
                        ox4 ox4Var4 = ox4Var2;
                        a aVar6 = aVar4;
                        String str13 = str7;
                        canvas.restore();
                        f3 = f12;
                        bVar3 = bVar5;
                        str7 = str13;
                        aVar4 = aVar6;
                        ox4Var2 = ox4Var4;
                        listAsList2 = list7;
                        i14 = i28;
                        size3 = i27;
                        i20 = 0;
                        f7 = 0.0f;
                        i16 = i26 + 1;
                    }
                    f9 = f5;
                    listAsList2 = listAsList2;
                    i20 = 0;
                    f7 = 0.0f;
                    i14++;
                }
                canvas2 = canvas;
            }
            canvas2.restore();
        }
        i2 = 2;
        ac9 ac9Var3 = this.d0;
        if (ac9Var3 == null || (typefaceCreateFromAsset = (Typeface) ac9Var3.f()) == null) {
            Map<String, Typeface> map5 = ox4Var.l;
            if (map5 == null) {
                if (ox4Var.getCallback() == null) {
                    fi3Var = null;
                } else {
                    fi3Var = ox4Var.k;
                    if (fi3Var == null) {
                        fi3Var = new fi3(ox4Var.getCallback());
                        ox4Var.k = fi3Var;
                        str = ox4Var.m;
                        if (str != null) {
                            fi3Var.e = str;
                        }
                    }
                }
                if (fi3Var != null) {
                    pg5Var = fi3Var.a;
                    pg5Var.a = str5;
                    pg5Var.b = str4;
                    map = fi3Var.b;
                    typeface = (Typeface) map.get(pg5Var);
                    if (typeface != null) {
                        typefaceCreateFromAsset = typeface;
                        str6 = "\n";
                    } else {
                        map2 = fi3Var.c;
                        typeface2 = (Typeface) map2.get(str5);
                        if (typeface2 != null) {
                            typefaceCreateFromAsset = typeface2;
                        } else {
                            typeface3 = di3Var.d;
                            if (typeface3 != null) {
                                typefaceCreateFromAsset = typeface3;
                            } else {
                                StringBuilder sbD = fh.d("fonts/", str5);
                                sbD.append(fi3Var.e);
                                typefaceCreateFromAsset = Typeface.createFromAsset(fi3Var.d, sbD.toString());
                                map2.put(str5, typefaceCreateFromAsset);
                            }
                        }
                        zContains = str4.contains("Italic");
                        zContains2 = str4.contains("Bold");
                        if (!zContains && zContains2) {
                            i3 = 3;
                        } else if (zContains) {
                            i3 = i2;
                        } else if (zContains2) {
                            i3 = 1;
                        } else {
                            i3 = 0;
                        }
                        if (typefaceCreateFromAsset.getStyle() != i3) {
                            typefaceCreateFromAsset = Typeface.create(typefaceCreateFromAsset, i3);
                        }
                        map.put(pg5Var, typefaceCreateFromAsset);
                    }
                } else {
                    str6 = "\n";
                    typefaceCreateFromAsset = null;
                }
            } else {
                if (map5.containsKey(str5)) {
                    typefaceCreateFromAsset = map5.get(str5);
                } else {
                    String str14 = di3Var.b;
                    if (map5.containsKey(str14)) {
                        typefaceCreateFromAsset = map5.get(str14);
                    } else {
                        String strD = cg.d(str5, "-", str4);
                        if (map5.containsKey(strD)) {
                            typefaceCreateFromAsset = map5.get(strD);
                        } else {
                            if (ox4Var.getCallback() == null) {
                                fi3Var = null;
                            } else {
                                fi3Var = ox4Var.k;
                                if (fi3Var == null) {
                                    fi3Var = new fi3(ox4Var.getCallback());
                                    ox4Var.k = fi3Var;
                                    str = ox4Var.m;
                                    if (str != null) {
                                        fi3Var.e = str;
                                    }
                                }
                            }
                            if (fi3Var != null) {
                                pg5Var = fi3Var.a;
                                pg5Var.a = str5;
                                pg5Var.b = str4;
                                map = fi3Var.b;
                                typeface = (Typeface) map.get(pg5Var);
                                if (typeface != null) {
                                    typefaceCreateFromAsset = typeface;
                                } else {
                                    map2 = fi3Var.c;
                                    typeface2 = (Typeface) map2.get(str5);
                                    if (typeface2 != null) {
                                        typefaceCreateFromAsset = typeface2;
                                    } else {
                                        typeface3 = di3Var.d;
                                        if (typeface3 != null) {
                                            typefaceCreateFromAsset = typeface3;
                                        } else {
                                            StringBuilder sbD2 = fh.d("fonts/", str5);
                                            sbD2.append(fi3Var.e);
                                            typefaceCreateFromAsset = Typeface.createFromAsset(fi3Var.d, sbD2.toString());
                                            map2.put(str5, typefaceCreateFromAsset);
                                        }
                                    }
                                    zContains = str4.contains("Italic");
                                    zContains2 = str4.contains("Bold");
                                    if (!zContains) {
                                        if (zContains) {
                                            i3 = i2;
                                        } else if (zContains2) {
                                            i3 = 1;
                                        } else {
                                            i3 = 0;
                                        }
                                    } else if (zContains) {
                                        i3 = i2;
                                    } else if (zContains2) {
                                        i3 = 1;
                                    } else {
                                        i3 = 0;
                                    }
                                    if (typefaceCreateFromAsset.getStyle() != i3) {
                                        typefaceCreateFromAsset = Typeface.create(typefaceCreateFromAsset, i3);
                                    }
                                    map.put(pg5Var, typefaceCreateFromAsset);
                                }
                            } else {
                                str6 = "\n";
                                typefaceCreateFromAsset = null;
                            }
                        }
                    }
                }
                str6 = "\n";
            }
            if (typefaceCreateFromAsset == null) {
                typefaceCreateFromAsset = di3Var.d;
            }
        } else {
            str6 = "\n";
        }
        if (typefaceCreateFromAsset != null) {
            String str15 = bq2VarF.a;
            aVar3.setTypeface(typefaceCreateFromAsset);
            ac9 ac9Var4 = this.c0;
            float fFloatValue4 = ac9Var4 != null ? ((Float) ac9Var4.f()).floatValue() : bq2VarF.c;
            aVar3.setTextSize(ib9.c() * fFloatValue4);
            bVar3.setTypeface(aVar3.getTypeface());
            bVar3.setTextSize(aVar3.getTextSize());
            float f13 = bq2VarF.e / 10.0f;
            ac9 ac9Var5 = this.a0;
            if (ac9Var5 != null) {
                fFloatValue = ((Float) ac9Var5.f()).floatValue();
            } else {
                if (tc3Var != null) {
                    fFloatValue = tc3Var.f().floatValue();
                }
                fC = ((ib9.c() * f13) * fFloatValue4) / 100.0f;
                listAsList = Arrays.asList(str15.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll(str6, "\r").split("\r"));
                size = listAsList.size();
                i4 = 0;
                length = 0;
                i5 = -1;
                while (i4 < size) {
                    String str16 = (String) listAsList.get(i4);
                    pointF = bq2VarF.m;
                    if (pointF == null) {
                        f = 0.0f;
                    } else {
                        f = pointF.x;
                    }
                    f2 = fC;
                    i6 = i2;
                    i7 = 0;
                    for (listA = A(str16, f, di3Var, 0.0f, f2, false); i7 < listA.size(); listA = listA) {
                        dVar = listA.get(i7);
                        i5++;
                        canvas.save();
                        if (z(canvas, bq2VarF, i5, aVar3.measureText(dVar.a))) {
                            string = dVar.a;
                            if (Bidi.requiresBidi(string.toCharArray(), 0, string.length())) {
                                bidi = new Bidi(string, -2);
                                runCount = bidi.getRunCount();
                                bArr = new byte[runCount];
                                numArr = new Integer[runCount];
                                i12 = 0;
                                while (i12 < runCount) {
                                    bArr[i12] = (byte) bidi.getRunLevel(i12);
                                    numArr[i12] = Integer.valueOf(i12);
                                    i12++;
                                    size = size;
                                }
                                i8 = size;
                                Bidi.reorderVisually(bArr, 0, numArr, 0, runCount);
                                sb2 = this.F;
                                sb2.setLength(0);
                                i13 = 0;
                                while (i13 < runCount) {
                                    int iIntValue = numArr[i13].intValue();
                                    int i29 = runCount;
                                    int runStart = bidi.getRunStart(iIntValue);
                                    Integer[] numArr2 = numArr;
                                    int runLimit = bidi.getRunLimit(iIntValue);
                                    runLevel = bidi.getRunLevel(iIntValue);
                                    strSubstring = string.substring(runStart, runLimit);
                                    if ((runLevel & 1) == 0) {
                                        sb2.append(strSubstring);
                                    } else {
                                        sb3 = this.G;
                                        length3 = 0;
                                        sb3.setLength(0);
                                        while (length3 < strSubstring.length()) {
                                            String strT = t(length3, strSubstring);
                                            sb3.insert(0, strT);
                                            length3 += strT.length();
                                            strSubstring = strSubstring;
                                        }
                                        sb2.append((CharSequence) sb3);
                                    }
                                    i13++;
                                    runCount = i29;
                                    numArr = numArr2;
                                    bidi = bidi;
                                }
                                string = sb2.toString();
                            } else {
                                i8 = size;
                            }
                            arrayList = this.N;
                            arrayList.clear();
                            length2 = 0;
                            while (length2 < string.length()) {
                                String strT2 = t(length2, string);
                                arrayList.add(strT2);
                                length2 += strT2.length();
                            }
                            i9 = 0;
                            while (i9 < arrayList.size()) {
                                sb = this.E;
                                sb.setLength(0);
                                sb.append((String) arrayList.get(i9));
                                i10 = i9 + 1;
                                while (i10 < arrayList.size()) {
                                    str2 = (String) arrayList.get(i10);
                                    i11 = 0;
                                    while (true) {
                                        if (i11 < str2.length()) {
                                            break;
                                        }
                                        arrayList2 = arrayList;
                                        if (Character.getDirectionality(str2.codePointAt(i11)) == 2) {
                                            break;
                                        }
                                        i11++;
                                        arrayList = arrayList2;
                                    }
                                    sb.insert(0, str2);
                                    i10++;
                                    arrayList = arrayList2;
                                }
                                ArrayList arrayList5 = arrayList;
                                string2 = sb.toString();
                                u(bq2VarF, i, i9 + length);
                                if (bq2VarF.k) {
                                    v(string2, aVar3, canvas);
                                    v(string2, bVar3, canvas);
                                } else {
                                    v(string2, bVar3, canvas);
                                    v(string2, aVar3, canvas);
                                }
                                canvas.translate(aVar3.measureText(string2) + f2, 0.0f);
                                i9 = i10;
                                arrayList = arrayList5;
                            }
                        } else {
                            f2 = f2;
                            listAsList = listAsList;
                            i8 = size;
                        }
                        length += dVar.a.length();
                        canvas.restore();
                        i7++;
                        di3Var = di3Var;
                        i6 = 2;
                        f2 = f2;
                        listAsList = listAsList;
                        size = i8;
                    }
                    i4++;
                    di3Var = di3Var;
                    i2 = i6;
                    fC = f2;
                    size = size;
                }
            }
            f13 += fFloatValue;
            fC = ((ib9.c() * f13) * fFloatValue4) / 100.0f;
            listAsList = Arrays.asList(str15.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll(str6, "\r").split("\r"));
            size = listAsList.size();
            i4 = 0;
            length = 0;
            i5 = -1;
            while (i4 < size) {
                String str17 = (String) listAsList.get(i4);
                pointF = bq2VarF.m;
                if (pointF == null) {
                    f = 0.0f;
                } else {
                    f = pointF.x;
                }
                f2 = fC;
                i6 = i2;
                i7 = 0;
                while (i7 < listA.size()) {
                    dVar = listA.get(i7);
                    i5++;
                    canvas.save();
                    if (z(canvas, bq2VarF, i5, aVar3.measureText(dVar.a))) {
                        string = dVar.a;
                        if (Bidi.requiresBidi(string.toCharArray(), 0, string.length())) {
                            bidi = new Bidi(string, -2);
                            runCount = bidi.getRunCount();
                            bArr = new byte[runCount];
                            numArr = new Integer[runCount];
                            i12 = 0;
                            while (i12 < runCount) {
                                bArr[i12] = (byte) bidi.getRunLevel(i12);
                                numArr[i12] = Integer.valueOf(i12);
                                i12++;
                                size = size;
                            }
                            i8 = size;
                            Bidi.reorderVisually(bArr, 0, numArr, 0, runCount);
                            sb2 = this.F;
                            sb2.setLength(0);
                            i13 = 0;
                            while (i13 < runCount) {
                                int iIntValue2 = numArr[i13].intValue();
                                int i210 = runCount;
                                int runStart2 = bidi.getRunStart(iIntValue2);
                                Integer[] numArr3 = numArr;
                                int runLimit2 = bidi.getRunLimit(iIntValue2);
                                runLevel = bidi.getRunLevel(iIntValue2);
                                strSubstring = string.substring(runStart2, runLimit2);
                                if ((runLevel & 1) == 0) {
                                    sb2.append(strSubstring);
                                } else {
                                    sb3 = this.G;
                                    length3 = 0;
                                    sb3.setLength(0);
                                    while (length3 < strSubstring.length()) {
                                        String strT3 = t(length3, strSubstring);
                                        sb3.insert(0, strT3);
                                        length3 += strT3.length();
                                        strSubstring = strSubstring;
                                    }
                                    sb2.append((CharSequence) sb3);
                                }
                                i13++;
                                runCount = i210;
                                numArr = numArr3;
                                bidi = bidi;
                            }
                            string = sb2.toString();
                        } else {
                            i8 = size;
                        }
                        arrayList = this.N;
                        arrayList.clear();
                        length2 = 0;
                        while (length2 < string.length()) {
                            String strT4 = t(length2, string);
                            arrayList.add(strT4);
                            length2 += strT4.length();
                        }
                        i9 = 0;
                        while (i9 < arrayList.size()) {
                            sb = this.E;
                            sb.setLength(0);
                            sb.append((String) arrayList.get(i9));
                            i10 = i9 + 1;
                            while (i10 < arrayList.size()) {
                                str2 = (String) arrayList.get(i10);
                                i11 = 0;
                                while (true) {
                                    if (i11 < str2.length()) {
                                        break;
                                        break;
                                    }
                                    arrayList2 = arrayList;
                                    if (Character.getDirectionality(str2.codePointAt(i11)) == 2) {
                                        break;
                                    }
                                    i11++;
                                    arrayList = arrayList2;
                                }
                                sb.insert(0, str2);
                                i10++;
                                arrayList = arrayList2;
                            }
                            ArrayList arrayList6 = arrayList;
                            string2 = sb.toString();
                            u(bq2VarF, i, i9 + length);
                            if (bq2VarF.k) {
                                v(string2, aVar3, canvas);
                                v(string2, bVar3, canvas);
                            } else {
                                v(string2, bVar3, canvas);
                                v(string2, aVar3, canvas);
                            }
                            canvas.translate(aVar3.measureText(string2) + f2, 0.0f);
                            i9 = i10;
                            arrayList = arrayList6;
                        }
                    } else {
                        f2 = f2;
                        listAsList = listAsList;
                        i8 = size;
                    }
                    length += dVar.a.length();
                    canvas.restore();
                    i7++;
                    di3Var = di3Var;
                    i6 = 2;
                    f2 = f2;
                    listAsList = listAsList;
                    size = i8;
                }
                i4++;
                di3Var = di3Var;
                i2 = i6;
                fC = f2;
                size = size;
            }
        }
        canvas2 = canvas;
        canvas2.restore();
    }

    public final String t(int i, String str) {
        int iCodePointAt = str.codePointAt(i);
        int iCharCount = Character.charCount(iCodePointAt) + i;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (Character.getType(iCodePointAt2) != 16 && Character.getType(iCodePointAt2) != 27 && Character.getType(iCodePointAt2) != 6 && Character.getType(iCodePointAt2) != 28 && Character.getType(iCodePointAt2) != 8 && Character.getType(iCodePointAt2) != 19) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j = iCodePointAt;
        LongSparseArray<String> longSparseArray = this.M;
        if (longSparseArray.containsKey(j)) {
            return longSparseArray.get(j);
        }
        StringBuilder sb = this.D;
        sb.setLength(0);
        while (i < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i);
            sb.appendCodePoint(iCodePointAt3);
            i += Character.charCount(iCodePointAt3);
        }
        String string = sb.toString();
        longSparseArray.put(j, string);
        return string;
    }

    public final void u(bq2 bq2Var, int i, int i2) {
        ac9 ac9Var = this.U;
        a aVar = this.J;
        if (ac9Var != null) {
            aVar.setColor(((Integer) ac9Var.f()).intValue());
        } else {
            tn1 tn1Var = this.T;
            if (tn1Var == null || !y(i2)) {
                aVar.setColor(bq2Var.h);
            } else {
                aVar.setColor(tn1Var.f().intValue());
            }
        }
        ac9 ac9Var2 = this.W;
        b bVar = this.K;
        if (ac9Var2 != null) {
            bVar.setColor(((Integer) ac9Var2.f()).intValue());
        } else {
            tn1 tn1Var2 = this.V;
            if (tn1Var2 == null || !y(i2)) {
                bVar.setColor(bq2Var.i);
            } else {
                bVar.setColor(tn1Var2.f().intValue());
            }
        }
        ld0<Integer, Integer> ld0Var = this.w.p;
        int iIntValue = 100;
        int iIntValue2 = ld0Var == null ? 100 : ld0Var.f().intValue();
        b84 b84Var = this.b0;
        if (b84Var != null && y(i2)) {
            iIntValue = b84Var.f().intValue();
        }
        int iRound = Math.round((((iIntValue / 100.0f) * ((iIntValue2 * 255.0f) / 100.0f)) * i) / 255.0f);
        aVar.setAlpha(iRound);
        bVar.setAlpha(iRound);
        ac9 ac9Var3 = this.Y;
        if (ac9Var3 != null) {
            bVar.setStrokeWidth(((Float) ac9Var3.f()).floatValue());
            return;
        }
        tc3 tc3Var = this.X;
        if (tc3Var == null || !y(i2)) {
            bVar.setStrokeWidth(ib9.c() * bq2Var.j);
        } else {
            bVar.setStrokeWidth(tc3Var.f().floatValue());
        }
    }

    public final d x(int i) {
        ArrayList arrayList = this.O;
        for (int size = arrayList.size(); size < i; size++) {
            arrayList.add(new d());
        }
        return (d) arrayList.get(i - 1);
    }

    public final boolean y(int i) {
        b84 b84Var;
        int length = this.P.f().a.length();
        b84 b84Var2 = this.e0;
        if (b84Var2 == null || (b84Var = this.f0) == null) {
            return true;
        }
        int iMin = Math.min(b84Var2.f().intValue(), b84Var.f().intValue());
        int iMax = Math.max(b84Var2.f().intValue(), b84Var.f().intValue());
        b84 b84Var3 = this.g0;
        if (b84Var3 != null) {
            int iIntValue = b84Var3.f().intValue();
            iMin += iIntValue;
            iMax += iIntValue;
        }
        if (this.S == ts8.INDEX) {
            return i >= iMin && i < iMax;
        }
        float f = (i / length) * 100.0f;
        return f >= ((float) iMin) && f < ((float) iMax);
    }

    public final boolean z(Canvas canvas, bq2 bq2Var, int i, float f) {
        PointF pointF = bq2Var.l;
        PointF pointF2 = bq2Var.m;
        float fC = ib9.c();
        float f2 = (i * bq2Var.f * fC) + (pointF == null ? 0.0f : (bq2Var.f * fC) + pointF.y);
        if (this.Q.w && pointF2 != null && pointF != null && f2 >= pointF.y + pointF2.y + bq2Var.c) {
            return false;
        }
        float f3 = pointF == null ? 0.0f : pointF.x;
        float f4 = pointF2 != null ? pointF2.x : 0.0f;
        int i2 = c.a[bq2Var.d.ordinal()];
        if (i2 == 1) {
            canvas.translate(f3, f2);
            return true;
        }
        if (i2 == 2) {
            canvas.translate((f3 + f4) - f, f2);
            return true;
        }
        if (i2 != 3) {
            return true;
        }
        canvas.translate(((f4 / 2.0f) + f3) - (f / 2.0f), f2);
        return true;
    }
}
