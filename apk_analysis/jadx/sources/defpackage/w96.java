package defpackage;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class w96 extends wf4<PointF> {
    public final PointF i;

    public w96(List<vf4<PointF>> list) {
        super(list);
        this.i = new PointF();
    }

    @Override // defpackage.ld0
    public final Object g(vf4 vf4Var, float f) {
        return h(vf4Var, f, f, f);
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
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final PointF h(vf4<PointF> vf4Var, float f, float f2, float f3) {
        PointF pointF;
        PointF pointF2;
        PointF pointF3 = vf4Var.b;
        if (pointF3 == null || (pointF = vf4Var.c) == null) {
            ah.f("Missing values for keyframe.");
            return null;
        }
        PointF pointF4 = pointF3;
        PointF pointF5 = pointF;
        by4<A> by4Var = this.e;
        if (by4Var != 0 && (pointF2 = (PointF) by4Var.b(vf4Var.g, vf4Var.h.floatValue(), pointF4, pointF5, f, e(), this.d)) != null) {
            return pointF2;
        }
        float f4 = pointF4.x;
        float fB = i8.b(pointF5.x, f4, f2, f4);
        float f5 = pointF4.y;
        float fB2 = i8.b(pointF5.y, f5, f3, f5);
        PointF pointF6 = this.i;
        pointF6.set(fB, fB2);
        return pointF6;
    }
}
