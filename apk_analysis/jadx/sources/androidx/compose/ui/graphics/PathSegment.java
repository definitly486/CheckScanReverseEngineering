package androidx.compose.ui.graphics;

import defpackage.g03;
import defpackage.h03;
import defpackage.js2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class PathSegment {
    public static final int $stable = 8;
    private final float[] points;
    private final Type type;
    private final float weight;

    public enum Type {
        Move,
        Line,
        Quadratic,
        Conic,
        Cubic,
        Close,
        Done;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<Type> getEntries() {
            return $ENTRIES;
        }
    }

    public PathSegment(Type type, float[] fArr, float f) {
        this.type = type;
        this.points = fArr;
        this.weight = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && PathSegment.class == obj.getClass()) {
            PathSegment pathSegment = (PathSegment) obj;
            if (this.type == pathSegment.type && Arrays.equals(this.points, pathSegment.points) && this.weight == pathSegment.weight) {
                return true;
            }
        }
        return false;
    }

    public final float[] getPoints() {
        return this.points;
    }

    public final Type getType() {
        return this.type;
    }

    public final float getWeight() {
        return this.weight;
    }

    public int hashCode() {
        return Float.hashCode(this.weight) + ((Arrays.hashCode(this.points) + (this.type.hashCode() * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PathSegment(type=");
        sb.append(this.type);
        sb.append(", points=");
        String string = Arrays.toString(this.points);
        string.getClass();
        sb.append(string);
        sb.append(", weight=");
        return js2.b(sb, this.weight, ')');
    }
}
