package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class c06 {
    public static final b Companion = new b();

    @bq7("promotion")
    private final Boolean a;

    @bq7("promotionText")
    private final String b;

    @bq7("ordToken")
    private final String c;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String d;

    @bq7("text")
    private final String e;

    @ul2
    public static final class a implements dp3<c06> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.shared.ord.OrdInfoResponse", aVar, 5);
            s96Var.j("promotion", true);
            s96Var.j("promotionText", true);
            s96Var.j("ordToken", true);
            s96Var.j(TJAdUnitConstants.String.TITLE, true);
            s96Var.j("description", true);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            df4<?> df4VarA = ev0.a(gs0.a);
            ca8 ca8Var = ca8.a;
            return new df4[]{df4VarA, ev0.a(ca8Var), ev0.a(ca8Var), ev0.a(ca8Var), ev0.a(ca8Var)};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            Boolean bool;
            String str;
            String str2;
            String str3;
            String str4;
            int i;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            Object obj = null;
            if (du1VarBeginStructure.decodeSequentially()) {
                bool = (Boolean) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, gs0.a, null);
                ca8 ca8Var = ca8.a;
                String str5 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8Var, null);
                String str6 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8Var, null);
                str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8Var, null);
                str2 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8Var, null);
                str3 = str6;
                str4 = str5;
                i = 31;
            } else {
                boolean z = true;
                int i2 = 0;
                bool = null;
                String str7 = null;
                String str8 = null;
                String str9 = null;
                String str10 = null;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    obj = obj;
                    if (iDecodeElementIndex == -1) {
                        z = false;
                    } else if (iDecodeElementIndex == 0) {
                        bool = (Boolean) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, gs0.a, bool);
                        i2 |= 1;
                    } else if (iDecodeElementIndex == 1) {
                        str10 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8.a, str10);
                        i2 |= 2;
                    } else if (iDecodeElementIndex == 2) {
                        str9 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8.a, str9);
                        i2 |= 4;
                    } else if (iDecodeElementIndex == 3) {
                        str7 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8.a, str7);
                        i2 |= 8;
                    } else {
                        if (iDecodeElementIndex != 4) {
                            pg.h(iDecodeElementIndex);
                            return obj;
                        }
                        str8 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8.a, str8);
                        i2 |= 16;
                    }
                }
                str = str7;
                str2 = str8;
                str3 = str9;
                str4 = str10;
                i = i2;
            }
            Boolean bool2 = bool;
            du1VarBeginStructure.endStructure(s96Var);
            return new c06(i, bool2, str4, str3, str, str2, (wp7) null);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            c06 c06Var = (c06) obj;
            c06Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            c06.g(c06Var, gu1VarBeginStructure, s96Var);
            gu1VarBeginStructure.endStructure(s96Var);
        }

        @Override // defpackage.dp3
        public final df4<?>[] typeParametersSerializers() {
            return u96.c;
        }
    }

    public static final class b {
        public final df4<c06> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ c06(int i, Boolean bool, String str, String str2, String str3, String str4, wp7 wp7Var) {
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = bool;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = str;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = str2;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = str4;
        }
    }

    public static final /* synthetic */ void g(c06 c06Var, gu1 gu1Var, s96 s96Var) {
        if (gu1Var.shouldEncodeElementDefault(s96Var, 0) || c06Var.a != null) {
            gu1Var.encodeNullableSerializableElement(s96Var, 0, gs0.a, c06Var.a);
        }
        if (gu1Var.shouldEncodeElementDefault(s96Var, 1) || c06Var.b != null) {
            gu1Var.encodeNullableSerializableElement(s96Var, 1, ca8.a, c06Var.b);
        }
        if (gu1Var.shouldEncodeElementDefault(s96Var, 2) || c06Var.c != null) {
            gu1Var.encodeNullableSerializableElement(s96Var, 2, ca8.a, c06Var.c);
        }
        if (gu1Var.shouldEncodeElementDefault(s96Var, 3) || c06Var.d != null) {
            gu1Var.encodeNullableSerializableElement(s96Var, 3, ca8.a, c06Var.d);
        }
        if (!gu1Var.shouldEncodeElementDefault(s96Var, 4) && c06Var.e == null) {
            return;
        }
        gu1Var.encodeNullableSerializableElement(s96Var, 4, ca8.a, c06Var.e);
    }

    public final String a() {
        return this.e;
    }

    public final String b() {
        return this.c;
    }

    public final Boolean c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c06)) {
            return false;
        }
        c06 c06Var = (c06) obj;
        return aa4.e(this.a, c06Var.a) && aa4.e(this.b, c06Var.b) && aa4.e(this.c, c06Var.c) && aa4.e(this.d, c06Var.d) && aa4.e(this.e, c06Var.e);
    }

    public final b06 f() {
        Boolean bool = this.a;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        String str = this.c;
        String str2 = this.d;
        String str3 = this.e;
        String str4 = this.b;
        if (str4 == null) {
            str4 = "";
        }
        return new b06(str4, zBooleanValue, str, str2, str3);
    }

    public final int hashCode() {
        Boolean bool = this.a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.e;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        Boolean bool = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        StringBuilder sb = new StringBuilder("OrdInfoResponse(promotion=");
        sb.append(bool);
        sb.append(", promotionText=");
        sb.append(str);
        sb.append(", ordToken=");
        kv2.c(sb, str2, ", title=", str3, ", description=");
        return me0.d(sb, str4, ")");
    }

    public c06() {
        this((Boolean) null, (String) null, (String) null, (String) null, (String) null, 31, (jh2) null);
    }

    public c06(Boolean bool, String str, String str2, String str3, String str4) {
        this.a = bool;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public /* synthetic */ c06(Boolean bool, String str, String str2, String str3, String str4, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4);
    }
}
