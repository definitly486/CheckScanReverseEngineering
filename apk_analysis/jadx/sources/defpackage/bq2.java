package defpackage;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public final class bq2 {
    public String a;
    public String b;
    public float c;
    public a d;
    public int e;
    public float f;
    public float g;
    public int h;
    public int i;
    public float j;
    public boolean k;
    public PointF l;
    public PointF m;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a CENTER;
        public static final a LEFT_ALIGN;
        public static final a RIGHT_ALIGN;

        static {
            a aVar = new a("LEFT_ALIGN", 0);
            LEFT_ALIGN = aVar;
            a aVar2 = new a("RIGHT_ALIGN", 1);
            RIGHT_ALIGN = aVar2;
            a aVar3 = new a("CENTER", 2);
            CENTER = aVar3;
            $VALUES = new a[]{aVar, aVar2, aVar3};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public final int hashCode() {
        int iOrdinal = ((this.d.ordinal() + (((int) (zg.b(this.a.hashCode() * 31, 31, this.b) + this.c)) * 31)) * 31) + this.e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f);
        return (((iOrdinal * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.h;
    }
}
