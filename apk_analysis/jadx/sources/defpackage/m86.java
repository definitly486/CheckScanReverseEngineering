package defpackage;

import com.hookedonplay.decoviewlib.DecoView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class m86 {
    public final DecoView a;
    public List<a> b;

    public static final class a {
        public float a;
        public final int b;
        public int c = 0;

        public a(float f, int i) {
            this.a = f;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.a, aVar.a) == 0 && this.b == aVar.b && this.c == aVar.c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.c) + ej0.b(this.b, Float.hashCode(this.a) * 31, 31);
        }

        public final String toString() {
            float f = this.a;
            int i = this.c;
            StringBuilder sb = new StringBuilder("ChartSegment(value=");
            sb.append(f);
            sb.append(", color=");
            sb.append(this.b);
            sb.append(", seriesIndex=");
            return l2.e(sb, ")", i);
        }
    }

    public m86(DecoView decoView) {
        decoView.getClass();
        this.a = decoView;
        this.b = kx2.b;
    }
}
