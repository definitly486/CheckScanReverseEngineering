package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class o03 {
    public static final b Companion = new b();
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    @ul2
    public static final class a implements dp3<o03> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.domain.entities.common.ErrorBody", aVar, 4);
            s96Var.j("text", false);
            s96Var.j("description", false);
            s96Var.j("buttonText", false);
            s96Var.j("buttonUrl", false);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            ca8 ca8Var = ca8.a;
            return new df4[]{ev0.a(ca8Var), ev0.a(ca8Var), ev0.a(ca8Var), ev0.a(ca8Var)};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            String str;
            int i;
            String str2;
            String str3;
            String str4;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            if (du1VarBeginStructure.decodeSequentially()) {
                ca8 ca8Var = ca8.a;
                String str5 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8Var, null);
                String str6 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8Var, null);
                String str7 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8Var, null);
                str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8Var, null);
                i = 15;
                str2 = str7;
                str3 = str6;
                str4 = str5;
            } else {
                boolean z = true;
                int i2 = 0;
                str = null;
                String str8 = null;
                String str9 = null;
                String str10 = null;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    if (iDecodeElementIndex == -1) {
                        z = false;
                    } else if (iDecodeElementIndex == 0) {
                        str10 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, ca8.a, str10);
                        i2 |= 1;
                    } else if (iDecodeElementIndex == 1) {
                        str9 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, ca8.a, str9);
                        i2 |= 2;
                    } else if (iDecodeElementIndex == 2) {
                        str8 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ca8.a, str8);
                        i2 |= 4;
                    } else {
                        if (iDecodeElementIndex != 3) {
                            pg.h(iDecodeElementIndex);
                            return null;
                        }
                        str = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8.a, str);
                        i2 |= 8;
                    }
                }
                i = i2;
                str2 = str8;
                str3 = str9;
                str4 = str10;
            }
            String str11 = str;
            du1VarBeginStructure.endStructure(s96Var);
            return new o03(i, str4, str3, str2, str11);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            o03 o03Var = (o03) obj;
            o03Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            ca8 ca8Var = ca8.a;
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, ca8Var, o03Var.a);
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 1, ca8Var, o03Var.b);
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 2, ca8Var, o03Var.c);
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, ca8Var, o03Var.d);
            gu1VarBeginStructure.endStructure(s96Var);
        }

        @Override // defpackage.dp3
        public final df4<?>[] typeParametersSerializers() {
            return u96.c;
        }
    }

    public static final class b {
        public final df4<o03> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ o03(int i, String str, String str2, String str3, String str4) {
        if (15 != (i & 15)) {
            r96.f(a.a.getDescriptor(), i, 15);
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o03)) {
            return false;
        }
        o03 o03Var = (o03) obj;
        return aa4.e(this.a, o03Var.a) && aa4.e(this.b, o03Var.b) && aa4.e(this.c, o03Var.c) && aa4.e(this.d, o03Var.d);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return dg.c(ad2.d("ErrorBody(text=", this.a, ", description=", this.b, ", buttonText="), this.c, ", buttonUrl=", this.d, ")");
    }
}
