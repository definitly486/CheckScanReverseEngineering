package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class jv4 {
    public static final b Companion = new b();

    @bq7("logoUrl")
    private final String a;

    @ul2
    public static final class a implements dp3<jv4> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.shared.bank.data.network.responses.LogoBlockResponse", aVar, 1);
            s96Var.j("logoUrl", true);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            return new df4[]{ca8.a};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            String strDecodeStringElement;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            int i = 1;
            wp7 wp7Var = null;
            if (du1VarBeginStructure.decodeSequentially()) {
                strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
            } else {
                boolean z = true;
                int i2 = 0;
                strDecodeStringElement = null;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    if (iDecodeElementIndex == -1) {
                        z = false;
                    } else {
                        if (iDecodeElementIndex != 0) {
                            pg.h(iDecodeElementIndex);
                            return null;
                        }
                        strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                        i2 = 1;
                    }
                }
                i = i2;
            }
            du1VarBeginStructure.endStructure(s96Var);
            return new jv4(i, strDecodeStringElement, wp7Var);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            jv4 jv4Var = (jv4) obj;
            jv4Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            jv4.b(jv4Var, gu1VarBeginStructure, s96Var);
            gu1VarBeginStructure.endStructure(s96Var);
        }

        @Override // defpackage.dp3
        public final df4<?>[] typeParametersSerializers() {
            return u96.c;
        }
    }

    public static final class b {
        public final df4<jv4> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ jv4(int i, String str, wp7 wp7Var) {
        if ((i & 1) == 0) {
            this.a = new String();
        } else {
            this.a = str;
        }
    }

    public static final /* synthetic */ void b(jv4 jv4Var, gu1 gu1Var, s96 s96Var) {
        if (!gu1Var.shouldEncodeElementDefault(s96Var, 0) && aa4.e(jv4Var.a, new String())) {
            return;
        }
        gu1Var.encodeStringElement(s96Var, 0, jv4Var.a);
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof jv4) && aa4.e(this.a, ((jv4) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("LogoBlockResponse(logoUrl=", this.a, ")");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public jv4() {
        this((String) null, 1, (jh2) (0 == true ? 1 : 0));
    }

    public jv4(String str) {
        str.getClass();
        this.a = str;
    }

    public /* synthetic */ jv4(String str, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new String() : str);
    }
}
