package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class yr7 extends ld0<sr7, Path> {
    public final sr7 i;
    public final Path j;
    public Path k;
    public Path l;
    public ArrayList m;

    public yr7(List<vf4<sr7>> list) {
        super(list);
        this.i = new sr7();
        this.j = new Path();
    }

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
    @Override // defpackage.ld0
    public final Path g(vf4<sr7> vf4Var, float f) {
        sr7 sr7VarG;
        sr7 sr7Var = vf4Var.b;
        sr7 sr7Var2 = vf4Var.c;
        sr7 sr7Var3 = sr7Var2 == null ? sr7Var : sr7Var2;
        sr7 sr7Var4 = this.i;
        ArrayList arrayList = sr7Var4.a;
        if (sr7Var4.b == null) {
            sr7Var4.b = new PointF();
        }
        boolean z = sr7Var.c;
        ArrayList arrayList2 = sr7Var.a;
        boolean z2 = true;
        sr7Var4.c = z || sr7Var3.c;
        int size = arrayList2.size();
        ArrayList arrayList3 = sr7Var3.a;
        if (size != arrayList3.size()) {
            gv4.b("Curves must have the same number of control points. Shape 1: " + arrayList2.size() + "\tShape 2: " + arrayList3.size());
        }
        int iMin = Math.min(arrayList2.size(), arrayList3.size());
        if (arrayList.size() < iMin) {
            for (int size2 = arrayList.size(); size2 < iMin; size2++) {
                arrayList.add(new q62());
            }
        } else if (arrayList.size() > iMin) {
            for (int size3 = arrayList.size() - 1; size3 >= iMin; size3--) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        PointF pointF = sr7Var.b;
        PointF pointF2 = sr7Var3.b;
        float f2 = hb5.f(pointF.x, pointF2.x, f);
        float f3 = hb5.f(pointF.y, pointF2.y, f);
        PointF pointF3 = sr7Var4.b;
        if (pointF3 == null) {
            pointF3 = new PointF();
            sr7Var4.b = pointF3;
        }
        pointF3.set(f2, f3);
        int size4 = arrayList.size() - 1;
        while (size4 >= 0) {
            q62 q62Var = (q62) arrayList2.get(size4);
            q62 q62Var2 = (q62) arrayList3.get(size4);
            PointF pointF4 = q62Var.a;
            PointF pointF5 = q62Var.b;
            PointF pointF6 = q62Var.c;
            PointF pointF7 = q62Var2.a;
            boolean z3 = z2;
            PointF pointF8 = q62Var2.b;
            PointF pointF9 = q62Var2.c;
            ((q62) arrayList.get(size4)).a.set(hb5.f(pointF4.x, pointF7.x, f), hb5.f(pointF4.y, pointF7.y, f));
            ((q62) arrayList.get(size4)).b.set(hb5.f(pointF5.x, pointF8.x, f), hb5.f(pointF5.y, pointF8.y, f));
            ((q62) arrayList.get(size4)).c.set(hb5.f(pointF6.x, pointF9.x, f), hb5.f(pointF6.y, pointF9.y, f));
            size4--;
            z2 = z3;
            arrayList2 = arrayList2;
            sr7Var4 = sr7Var4;
            arrayList3 = arrayList3;
        }
        sr7 sr7Var5 = sr7Var4;
        ArrayList arrayList4 = this.m;
        if (arrayList4 != null) {
            sr7VarG = sr7Var5;
            for (int size5 = arrayList4.size() - 1; size5 >= 0; size5--) {
                sr7VarG = ((as7) this.m.get(size5)).g(sr7VarG);
            }
        } else {
            sr7VarG = sr7Var5;
        }
        Path path = this.j;
        hb5.e(sr7VarG, path);
        if (this.e == null) {
            return path;
        }
        if (this.k == null) {
            this.k = new Path();
            this.l = new Path();
        }
        hb5.e(sr7Var, this.k);
        if (sr7Var2 != null) {
            hb5.e(sr7Var2, this.l);
        }
        by4<A> by4Var = this.e;
        float f4 = vf4Var.g;
        float fFloatValue = vf4Var.h.floatValue();
        Path path2 = this.k;
        return (Path) by4Var.b(f4, fFloatValue, path2, sr7Var2 == null ? path2 : this.l, f, e(), this.d);
    }

    @Override // defpackage.ld0
    public final boolean l() {
        ArrayList arrayList = this.m;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }
}
