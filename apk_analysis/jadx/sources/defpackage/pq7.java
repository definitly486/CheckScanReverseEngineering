package defpackage;

import android.graphics.Color;
import android.graphics.PointF;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class pq7 {
    public int a;
    public final int b;
    public float c;
    public final float d;
    public final float e;
    public final boolean f;
    public final boolean g;
    public final b h;
    public PointF i = null;
    public ArrayList<c> j;

    public static class a {
        public final int a;
        public float e;
        public final int b = Color.argb(0, 0, 0, 0);
        public float c = -1.0f;
        public float d = 100.0f;
        public boolean f = true;
        public boolean g = true;
        public final b h = b.STYLE_DONUT;

        public a(int i) {
            this.a = Color.argb(255, 32, 32, 32);
            this.a = i;
        }

        public final void a(float f, float f2) {
            if (0.0f >= f) {
                fg.c("minimum value must be less that maximum value");
            } else if (0.0f > f2 || f < f2) {
                fg.c("Initial value must be in the range of min .. max");
            } else {
                this.d = f;
                this.e = f2;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b STYLE_DONUT;
        public static final b STYLE_LINE_HORIZONTAL;
        public static final b STYLE_LINE_VERTICAL;
        public static final b STYLE_PIE;

        static {
            b bVar = new b("STYLE_DONUT", 0);
            STYLE_DONUT = bVar;
            b bVar2 = new b("STYLE_PIE", 1);
            STYLE_PIE = bVar2;
            b bVar3 = new b("STYLE_LINE_HORIZONTAL", 2);
            STYLE_LINE_HORIZONTAL = bVar3;
            b bVar4 = new b("STYLE_LINE_VERTICAL", 3);
            STYLE_LINE_VERTICAL = bVar4;
            $VALUES = new b[]{bVar, bVar2, bVar3, bVar4};
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public interface c {
        void a();

        void b();
    }

    public pq7(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        this.h = aVar.h;
    }

    public final PointF a() {
        PointF pointF = this.i;
        if (pointF != null) {
            return pointF;
        }
        PointF pointF2 = new PointF(0.0f, 0.0f);
        this.i = pointF2;
        return pointF2;
    }
}
