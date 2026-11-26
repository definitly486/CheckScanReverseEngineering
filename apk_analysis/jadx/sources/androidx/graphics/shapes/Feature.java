package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import defpackage.ar4;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Feature {
    private final List<Cubic> cubics;

    public static final class Edge extends Feature {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Edge(List<? extends Cubic> list) {
            super(list);
            list.getClass();
        }

        public String toString() {
            return "Edge";
        }

        @Override // androidx.graphics.shapes.Feature
        public Edge transformed$graphics_shapes_release(PointTransformer pointTransformer) {
            pointTransformer.getClass();
            ar4 ar4VarE = u96.e();
            int size = getCubics().size();
            for (int i = 0; i < size; i++) {
                ar4VarE.add(getCubics().get(i).transformed(pointTransformer));
            }
            return new Edge(u96.d(ar4VarE));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Feature(List<? extends Cubic> list) {
        list.getClass();
        this.cubics = list;
    }

    public final List<Cubic> getCubics() {
        return this.cubics;
    }

    public abstract Feature transformed$graphics_shapes_release(PointTransformer pointTransformer);

    public static final class Corner extends Feature {
        private final boolean convex;
        private final long roundedCenter;
        private final long vertex;

        public /* synthetic */ Corner(List list, long j, long j2, boolean z, int i, jh2 jh2Var) {
            this(list, j, j2, (i & 8) != 0 ? true : z, null);
        }

        public final boolean getConvex() {
            return this.convex;
        }

        /* JADX INFO: renamed from: getRoundedCenter-1ufDz9w, reason: not valid java name */
        public final long m9313getRoundedCenter1ufDz9w() {
            return this.roundedCenter;
        }

        /* JADX INFO: renamed from: getVertex-1ufDz9w, reason: not valid java name */
        public final long m9314getVertex1ufDz9w() {
            return this.vertex;
        }

        public String toString() {
            return "Corner: vertex=" + ((Object) FloatFloatPair.m1023toStringimpl(this.vertex)) + ", center=" + ((Object) FloatFloatPair.m1023toStringimpl(this.roundedCenter)) + ", convex=" + this.convex;
        }

        @Override // androidx.graphics.shapes.Feature
        public Feature transformed$graphics_shapes_release(PointTransformer pointTransformer) {
            pointTransformer.getClass();
            ar4 ar4VarE = u96.e();
            int size = getCubics().size();
            for (int i = 0; i < size; i++) {
                ar4VarE.add(getCubics().get(i).transformed(pointTransformer));
            }
            return new Corner(u96.d(ar4VarE), PointKt.m9331transformedso9K2fw(this.vertex, pointTransformer), PointKt.m9331transformedso9K2fw(this.roundedCenter, pointTransformer), this.convex, null);
        }

        public /* synthetic */ Corner(List list, long j, long j2, boolean z, jh2 jh2Var) {
            this(list, j, j2, z);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private Corner(List<? extends Cubic> list, long j, long j2, boolean z) {
            super(list);
            list.getClass();
            this.vertex = j;
            this.roundedCenter = j2;
            this.convex = z;
        }
    }
}
