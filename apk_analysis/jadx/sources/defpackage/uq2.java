package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public abstract class uq2 {
    public static final e a;
    public static final c b;
    public static final d c;
    public static final f d;
    public static final d e;
    public static final qz5<uq2> f;
    public static final boolean g;

    public static class a extends uq2 {
        @Override // defpackage.uq2
        public final g a(int i, int i2, int i3, int i4) {
            return g.QUALITY;
        }

        @Override // defpackage.uq2
        public final float b(int i, int i2, int i3, int i4) {
            int iMin = Math.min(i2 / i4, i / i3);
            if (iMin == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMin);
        }
    }

    public static class b extends uq2 {
        @Override // defpackage.uq2
        public final g a(int i, int i2, int i3, int i4) {
            return g.MEMORY;
        }

        @Override // defpackage.uq2
        public final float b(int i, int i2, int i3, int i4) {
            int iCeil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int iMax = Math.max(1, Integer.highestOneBit(iCeil));
            return 1.0f / (iMax << (iMax >= iCeil ? 0 : 1));
        }
    }

    public static class c extends uq2 {
        @Override // defpackage.uq2
        public final g a(int i, int i2, int i3, int i4) {
            return b(i, i2, i3, i4) == 1.0f ? g.QUALITY : uq2.a.a(i, i2, i3, i4);
        }

        @Override // defpackage.uq2
        public final float b(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, uq2.a.b(i, i2, i3, i4));
        }
    }

    public static class d extends uq2 {
        @Override // defpackage.uq2
        public final g a(int i, int i2, int i3, int i4) {
            return g.QUALITY;
        }

        @Override // defpackage.uq2
        public final float b(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }
    }

    public static class e extends uq2 {
        @Override // defpackage.uq2
        public final g a(int i, int i2, int i3, int i4) {
            return uq2.g ? g.QUALITY : g.MEMORY;
        }

        @Override // defpackage.uq2
        public final float b(int i, int i2, int i3, int i4) {
            if (uq2.g) {
                return Math.min(i3 / i, i4 / i2);
            }
            int iMax = Math.max(i2 / i4, i / i3);
            if (iMax == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMax);
        }
    }

    public static class f extends uq2 {
        @Override // defpackage.uq2
        public final g a(int i, int i2, int i3, int i4) {
            return g.QUALITY;
        }

        @Override // defpackage.uq2
        public final float b(int i, int i2, int i3, int i4) {
            return 1.0f;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class g {
        private static final /* synthetic */ g[] $VALUES;
        public static final g MEMORY;
        public static final g QUALITY;

        static {
            g gVar = new g("MEMORY", 0);
            MEMORY = gVar;
            g gVar2 = new g("QUALITY", 1);
            QUALITY = gVar2;
            $VALUES = new g[]{gVar, gVar2};
        }

        public g() {
            throw null;
        }

        public static g valueOf(String str) {
            return (g) Enum.valueOf(g.class, str);
        }

        public static g[] values() {
            return (g[]) $VALUES.clone();
        }
    }

    static {
        new a();
        new b();
        a = new e();
        b = new c();
        d dVar = new d();
        c = dVar;
        d = new f();
        e = dVar;
        f = qz5.a(dVar, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        g = true;
    }

    public abstract g a(int i, int i2, int i3, int i4);

    public abstract float b(int i, int i2, int i3, int i4);
}
