package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.MaskFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ke0 implements ld0.a, pf4, xs2 {
    public final ox4 e;
    public final nd0 f;
    public final float[] h;
    public final ch4 i;
    public final tc3 j;
    public final b84 k;
    public final ArrayList l;
    public final tc3 m;
    public ac9 n;
    public ld0<Float, Float> o;
    public float p;
    public final PathMeasure a = new PathMeasure();
    public final Path b = new Path();
    public final Path c = new Path();
    public final RectF d = new RectF();
    public final ArrayList g = new ArrayList();

    public static final class a {
        public final ArrayList a = new ArrayList();
        public final j39 b;

        public a(j39 j39Var) {
            this.b = j39Var;
        }
    }

    public ke0(ox4 ox4Var, nd0 nd0Var, Paint.Cap cap, Paint.Join join, float f, fl flVar, dl dlVar, ArrayList arrayList, dl dlVar2) {
        ch4 ch4Var = new ch4(1);
        this.i = ch4Var;
        this.p = 0.0f;
        this.e = ox4Var;
        this.f = nd0Var;
        ch4Var.setStyle(Paint.Style.STROKE);
        ch4Var.setStrokeCap(cap);
        ch4Var.setStrokeJoin(join);
        ch4Var.setStrokeMiter(f);
        this.k = (b84) flVar.a();
        this.j = dlVar.a();
        if (dlVar2 == null) {
            this.m = null;
        } else {
            this.m = dlVar2.a();
        }
        this.l = new ArrayList(arrayList.size());
        this.h = new float[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            this.l.add(((dl) arrayList.get(i)).a());
        }
        nd0Var.c(this.k);
        nd0Var.c(this.j);
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            nd0Var.c((ld0) this.l.get(i2));
        }
        tc3 tc3Var = this.m;
        if (tc3Var != null) {
            nd0Var.c(tc3Var);
        }
        this.k.a(this);
        this.j.a(this);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ((ld0) this.l.get(i3)).a(this);
        }
        tc3 tc3Var2 = this.m;
        if (tc3Var2 != null) {
            tc3Var2.a(this);
        }
        if (nd0Var.m() != null) {
            tc3 tc3VarA = ((dl) nd0Var.m().a).a();
            this.o = tc3VarA;
            tc3VarA.a(this);
            nd0Var.c(this.o);
        }
    }

    @Override // defpackage.of4
    public final void a(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        hb5.g(nf4Var, i, arrayList, nf4Var2, this);
    }

    @Override // defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        dt dtVar = ah4.a;
        Path path = this.b;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.g;
            if (i >= arrayList.size()) {
                RectF rectF2 = this.d;
                path.computeBounds(rectF2, false);
                float fM = this.j.m() / 2.0f;
                rectF2.set(rectF2.left - fM, rectF2.top - fM, rectF2.right + fM, rectF2.bottom + fM);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                dt dtVar2 = ah4.a;
                return;
            }
            a aVar = (a) arrayList.get(i);
            for (int i2 = 0; i2 < aVar.a.size(); i2++) {
                path.addPath(((l46) aVar.a.get(i2)).getPath(), matrix);
            }
            i++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:78:0x01f8  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.xs2
    public void d(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        int i2;
        float f;
        MaskFilter maskFilter;
        float[] fArr;
        ke0 ke0Var = this;
        dt dtVar = ah4.a;
        float[] fArr2 = ib9.e.get();
        boolean z = false;
        fArr2[0] = 0.0f;
        int i3 = 1;
        fArr2[1] = 0.0f;
        fArr2[2] = 37394.73f;
        fArr2[3] = 39575.234f;
        matrix.mapPoints(fArr2);
        if (fArr2[0] == fArr2[2] || fArr2[1] == fArr2[3]) {
            return;
        }
        float f2 = 100.0f;
        float fIntValue = ke0Var.k.f().intValue() / 100.0f;
        int iC = hb5.c((int) (i * fIntValue));
        ch4 ch4Var = ke0Var.i;
        ch4Var.setAlpha(iC);
        ch4Var.setStrokeWidth(ke0Var.j.m());
        if (ch4Var.getStrokeWidth() <= 0.0f) {
            return;
        }
        ArrayList arrayList = ke0Var.l;
        if (!arrayList.isEmpty()) {
            int i4 = 0;
            while (true) {
                int size = arrayList.size();
                fArr = ke0Var.h;
                if (i4 >= size) {
                    break;
                }
                float fFloatValue = ((Float) ((ld0) arrayList.get(i4)).f()).floatValue();
                fArr[i4] = fFloatValue;
                if (i4 % 2 == 0) {
                    if (fFloatValue < 1.0f) {
                        fArr[i4] = 1.0f;
                    }
                } else if (fFloatValue < 0.1f) {
                    fArr[i4] = 0.1f;
                }
                i4++;
            }
            tc3 tc3Var = ke0Var.m;
            ch4Var.setPathEffect(new DashPathEffect(fArr, tc3Var == null ? 0.0f : tc3Var.f().floatValue()));
            dt dtVar2 = ah4.a;
        }
        ac9 ac9Var = ke0Var.n;
        if (ac9Var != null) {
            ch4Var.setColorFilter((ColorFilter) ac9Var.f());
        }
        ld0<Float, Float> ld0Var = ke0Var.o;
        if (ld0Var != null) {
            float fFloatValue2 = ld0Var.f().floatValue();
            if (fFloatValue2 == 0.0f) {
                ch4Var.setMaskFilter(null);
            } else if (fFloatValue2 != ke0Var.p) {
                nd0 nd0Var = ke0Var.f;
                if (nd0Var.A == fFloatValue2) {
                    maskFilter = nd0Var.B;
                } else {
                    BlurMaskFilter blurMaskFilter = new BlurMaskFilter(fFloatValue2 / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    nd0Var.B = blurMaskFilter;
                    nd0Var.A = fFloatValue2;
                    maskFilter = blurMaskFilter;
                }
                ch4Var.setMaskFilter(maskFilter);
            }
            ke0Var.p = fFloatValue2;
        }
        if (et2Var != null) {
            et2Var.a((int) (fIntValue * 255.0f), ch4Var);
        }
        canvas.save();
        canvas.concat(matrix);
        int i5 = 0;
        while (true) {
            ArrayList arrayList2 = ke0Var.g;
            if (i5 >= arrayList2.size()) {
                canvas.restore();
                dt dtVar3 = ah4.a;
                return;
            }
            a aVar = (a) arrayList2.get(i5);
            j39 j39Var = aVar.b;
            ArrayList arrayList3 = aVar.a;
            Path path = ke0Var.b;
            if (j39Var != null) {
                dt dtVar4 = ah4.a;
                path.reset();
                for (int size2 = arrayList3.size() - i3; size2 >= 0; size2--) {
                    path.addPath(((l46) arrayList3.get(size2)).getPath());
                }
                float fFloatValue3 = j39Var.d.f().floatValue() / f2;
                float fFloatValue4 = j39Var.e.f().floatValue() / f2;
                float fFloatValue5 = j39Var.f.f().floatValue() / 360.0f;
                if (fFloatValue3 >= 0.01f || fFloatValue4 <= 0.99f) {
                    PathMeasure pathMeasure = ke0Var.a;
                    pathMeasure.setPath(path, z);
                    float length = pathMeasure.getLength();
                    while (pathMeasure.nextContour()) {
                        length += pathMeasure.getLength();
                    }
                    float f3 = fFloatValue5 * length;
                    float f4 = (fFloatValue3 * length) + f3;
                    float fMin = Math.min((fFloatValue4 * length) + f3, (f4 + length) - 1.0f);
                    int size3 = arrayList3.size() - i3;
                    float f5 = 0.0f;
                    while (size3 >= 0) {
                        int i6 = i3;
                        Path path2 = ((l46) arrayList3.get(size3)).getPath();
                        Path path3 = ke0Var.c;
                        path3.set(path2);
                        pathMeasure.setPath(path3, z);
                        float length2 = pathMeasure.getLength();
                        if (fMin > length) {
                            float f6 = fMin - length;
                            if (f6 >= f5 + length2 || f5 >= f6) {
                                f = f5 + length2;
                                if (f < f4 && f5 <= fMin) {
                                    if (f > fMin || f4 >= f5) {
                                        ib9.a(path3, f4 < f5 ? 0.0f : (f4 - f5) / length2, fMin > f ? 1.0f : (fMin - f5) / length2, 0.0f);
                                        canvas.drawPath(path3, ch4Var);
                                    } else {
                                        canvas.drawPath(path3, ch4Var);
                                    }
                                }
                            } else {
                                ib9.a(path3, f4 > length ? (f4 - length) / length2 : 0.0f, Math.min(f6 / length2, 1.0f), 0.0f);
                                canvas.drawPath(path3, ch4Var);
                            }
                        } else {
                            f = f5 + length2;
                            if (f < f4) {
                            }
                        }
                        f5 += length2;
                        size3--;
                        ke0Var = this;
                        i3 = i6;
                        z = false;
                    }
                    i2 = i3;
                    dt dtVar5 = ah4.a;
                } else {
                    canvas.drawPath(path, ch4Var);
                    dt dtVar6 = ah4.a;
                    i2 = i3;
                }
            } else {
                i2 = i3;
                dt dtVar7 = ah4.a;
                path.reset();
                for (int size4 = arrayList3.size() - 1; size4 >= 0; size4--) {
                    path.addPath(((l46) arrayList3.get(size4)).getPath());
                }
                dt dtVar8 = ah4.a;
                canvas.drawPath(path, ch4Var);
            }
            i5++;
            ke0Var = this;
            i3 = i2;
            z = false;
            f2 = 100.0f;
        }
    }

    @Override // ld0.a
    public final void e() {
        this.e.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:24:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0059  */
    /* JADX WARN: Code duplicated, block: B:38:0x0065 A[SYNTHETIC] */
    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
        ArrayList arrayList;
        ArrayList arrayList2 = (ArrayList) list;
        a aVar = null;
        j39 j39Var = null;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            sx1 sx1Var = (sx1) arrayList2.get(size);
            if (sx1Var instanceof j39) {
                j39 j39Var2 = (j39) sx1Var;
                if (j39Var2.c == fs7.a.INDIVIDUALLY) {
                    j39Var = j39Var2;
                }
            }
        }
        if (j39Var != null) {
            j39Var.a(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            arrayList = this.g;
            if (size2 < 0) {
                break;
            }
            sx1 sx1Var2 = list2.get(size2);
            if (sx1Var2 instanceof j39) {
                j39 j39Var3 = (j39) sx1Var2;
                if (j39Var3.c == fs7.a.INDIVIDUALLY) {
                    if (aVar != null) {
                        arrayList.add(aVar);
                    }
                    a aVar2 = new a(j39Var3);
                    j39Var3.a(this);
                    aVar = aVar2;
                } else if (!(sx1Var2 instanceof l46)) {
                    if (aVar == null) {
                        aVar = new a(j39Var);
                    }
                    aVar.a.add((l46) sx1Var2);
                }
            } else if (!(sx1Var2 instanceof l46)) {
                if (aVar == null) {
                    aVar = new a(j39Var);
                }
                aVar.a.add((l46) sx1Var2);
            }
        }
        if (aVar != null) {
            arrayList.add(aVar);
        }
    }

    @Override // defpackage.of4
    public void i(by4 by4Var, Object obj) {
        PointF pointF = vx4.a;
        if (obj == 4) {
            this.k.k(by4Var);
            return;
        }
        if (obj == vx4.q) {
            this.j.k(by4Var);
            return;
        }
        ColorFilter colorFilter = vx4.I;
        nd0 nd0Var = this.f;
        if (obj == colorFilter) {
            ac9 ac9Var = this.n;
            if (ac9Var != null) {
                nd0Var.p(ac9Var);
            }
            ac9 ac9Var2 = new ac9(by4Var, null);
            this.n = ac9Var2;
            ac9Var2.a(this);
            nd0Var.c(this.n);
            return;
        }
        if (obj == vx4.e) {
            ld0<Float, Float> ld0Var = this.o;
            if (ld0Var != null) {
                ld0Var.k(by4Var);
                return;
            }
            ac9 ac9Var3 = new ac9(by4Var, null);
            this.o = ac9Var3;
            ac9Var3.a(this);
            nd0Var.c(this.o);
        }
    }
}
