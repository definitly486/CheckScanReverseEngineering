package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class du4 implements Serializable {
    public static final b Companion = new b();

    @bq7("lat")
    private double b;

    @bq7("lon")
    private double c;

    @bq7("city")
    private final String d;

    @bq7("street")
    private final String e;

    @bq7("build")
    private final String f;

    /* JADX INFO: loaded from: classes4.dex */
    @ul2
    public static final class a implements dp3<du4> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.core.data.models.Location", aVar, 5);
            s96Var.j("lat", true);
            s96Var.j("lon", true);
            s96Var.j("city", true);
            s96Var.j("street", true);
            s96Var.j("build", true);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            ca8 ca8Var = ca8.a;
            df4<?> df4VarA = ev0.a(ca8Var);
            df4<?> df4VarA2 = ev0.a(ca8Var);
            df4<?> df4VarA3 = ev0.a(ca8Var);
            pq2 pq2Var = pq2.a;
            return new df4[]{pq2Var, pq2Var, df4VarA, df4VarA2, df4VarA3};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            String str;
            String str2;
            int i;
            String str3;
            double d;
            double d2;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            Object obj = null;
            if (du1VarBeginStructure.decodeSequentially()) {
                double dDecodeDoubleElement = du1VarBeginStructure.decodeDoubleElement(s96Var, 0);
                double dDecodeDoubleElement2 = du1VarBeginStructure.decodeDoubleElement(s96Var, 1);
                ca8 ca8Var = ca8.a;
                String str4 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8Var, null);
                String str5 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8Var, null);
                str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8Var, null);
                str2 = str5;
                i = 31;
                str3 = str4;
                d = dDecodeDoubleElement2;
                d2 = dDecodeDoubleElement;
            } else {
                boolean z = true;
                str = null;
                String str6 = null;
                double dDecodeDoubleElement3 = 0.0d;
                double dDecodeDoubleElement4 = 0.0d;
                int i2 = 0;
                String str7 = null;
                while (z) {
                    obj = obj;
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    if (iDecodeElementIndex == -1) {
                        z = false;
                    } else if (iDecodeElementIndex == 0) {
                        dDecodeDoubleElement4 = du1VarBeginStructure.decodeDoubleElement(s96Var, 0);
                        i2 |= 1;
                    } else if (iDecodeElementIndex == 1) {
                        dDecodeDoubleElement3 = du1VarBeginStructure.decodeDoubleElement(s96Var, 1);
                        i2 |= 2;
                    } else if (iDecodeElementIndex == 2) {
                        str6 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8.a, str6);
                        i2 |= 4;
                    } else if (iDecodeElementIndex == 3) {
                        str7 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8.a, str7);
                        i2 |= 8;
                    } else {
                        if (iDecodeElementIndex != 4) {
                            pg.h(iDecodeElementIndex);
                            return obj;
                        }
                        str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8.a, str);
                        i2 |= 16;
                    }
                }
                str2 = str7;
                i = i2;
                str3 = str6;
                d = dDecodeDoubleElement3;
                d2 = dDecodeDoubleElement4;
            }
            String str8 = str;
            du1VarBeginStructure.endStructure(s96Var);
            return new du4(i, d2, d, str3, str2, str8, (wp7) null);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            du4 du4Var = (du4) obj;
            du4Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            du4.d(du4Var, gu1VarBeginStructure, s96Var);
            gu1VarBeginStructure.endStructure(s96Var);
        }

        @Override // defpackage.dp3
        public final df4<?>[] typeParametersSerializers() {
            return u96.c;
        }
    }

    public static final class b {
        public final df4<du4> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ du4(int i, double d, double d2, String str, String str2, String str3, wp7 wp7Var) {
        if ((i & 1) == 0) {
            this.b = 0.0d;
        } else {
            this.b = d;
        }
        if ((i & 2) == 0) {
            this.c = 0.0d;
        } else {
            this.c = d2;
        }
        if ((i & 4) == 0) {
            this.d = null;
        } else {
            this.d = str;
        }
        if ((i & 8) == 0) {
            this.e = null;
        } else {
            this.e = str2;
        }
        if ((i & 16) == 0) {
            this.f = null;
        } else {
            this.f = str3;
        }
    }

    public static final /* synthetic */ void d(du4 du4Var, gu1 gu1Var, s96 s96Var) {
        if (gu1Var.shouldEncodeElementDefault(s96Var, 0) || Double.compare(du4Var.b, 0.0d) != 0) {
            gu1Var.encodeDoubleElement(s96Var, 0, du4Var.b);
        }
        if (gu1Var.shouldEncodeElementDefault(s96Var, 1) || Double.compare(du4Var.c, 0.0d) != 0) {
            gu1Var.encodeDoubleElement(s96Var, 1, du4Var.c);
        }
        if (gu1Var.shouldEncodeElementDefault(s96Var, 2) || du4Var.d != null) {
            gu1Var.encodeNullableSerializableElement(s96Var, 2, ca8.a, du4Var.d);
        }
        if (gu1Var.shouldEncodeElementDefault(s96Var, 3) || du4Var.e != null) {
            gu1Var.encodeNullableSerializableElement(s96Var, 3, ca8.a, du4Var.e);
        }
        if (!gu1Var.shouldEncodeElementDefault(s96Var, 4) && du4Var.f == null) {
            return;
        }
        gu1Var.encodeNullableSerializableElement(s96Var, 4, ca8.a, du4Var.f);
    }

    public final double a() {
        return this.b;
    }

    public final double b() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof du4)) {
            return false;
        }
        du4 du4Var = (du4) obj;
        return Double.compare(this.b, du4Var.b) == 0 && Double.compare(this.c, du4Var.c) == 0 && aa4.e(this.d, du4Var.d) && aa4.e(this.e, du4Var.e) && aa4.e(this.f, du4Var.f);
    }

    public final int hashCode() {
        int iHashCode = (Double.hashCode(this.c) + (Double.hashCode(this.b) * 31)) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        double d = this.b;
        double d2 = this.c;
        String str = this.d;
        String str2 = this.e;
        String str3 = this.f;
        StringBuilder sb = new StringBuilder("Location(lat=");
        sb.append(d);
        sb.append(", lon=");
        sb.append(d2);
        sb.append(", city=");
        sb.append(str);
        kv2.c(sb, ", street=", str2, ", build=", str3);
        sb.append(")");
        return sb.toString();
    }

    public du4(double d, double d2, String str, String str2, String str3) {
        this.b = d;
        this.c = d2;
        this.d = str;
        this.e = str2;
        this.f = str3;
    }

    public du4() {
        this(0.0d, 0.0d, (String) null, (String) null, (String) null, 31, (jh2) null);
    }

    public /* synthetic */ du4(double d, double d2, String str, String str2, String str3, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? 0.0d : d, (i & 2) != 0 ? 0.0d : d2, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3);
    }
}
