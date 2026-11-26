package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class x88 {
    public static final d Companion = new d();
    public static final cl4<df4<Object>>[] c = {null, nm4.a(po4.PUBLICATION, c.f)};

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("banners")
    private final List<b> b;

    @ul2
    public static final class a implements dp3<x88> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.shared.bank.data.network.responses.StepsBlockResponse", aVar, 2);
            s96Var.j(TJAdUnitConstants.String.TITLE, true);
            s96Var.j("banners", true);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            return new df4[]{ca8.a, x88.c[1].getValue()};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            List list;
            String strDecodeStringElement;
            int i;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            cl4<df4<Object>>[] cl4VarArr = x88.c;
            wp7 wp7Var = null;
            if (du1VarBeginStructure.decodeSequentially()) {
                strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, cl4VarArr[1].getValue(), null);
                i = 3;
            } else {
                boolean z = true;
                int i2 = 0;
                List list2 = null;
                String strDecodeStringElement2 = null;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    if (iDecodeElementIndex == -1) {
                        z = false;
                    } else if (iDecodeElementIndex == 0) {
                        strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                        i2 |= 1;
                    } else {
                        if (iDecodeElementIndex != 1) {
                            pg.h(iDecodeElementIndex);
                            return null;
                        }
                        list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, cl4VarArr[1].getValue(), list2);
                        i2 |= 2;
                    }
                }
                list = list2;
                strDecodeStringElement = strDecodeStringElement2;
                i = i2;
            }
            du1VarBeginStructure.endStructure(s96Var);
            return new x88(i, strDecodeStringElement, list, wp7Var);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            x88 x88Var = (x88) obj;
            x88Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            x88.c(x88Var, gu1VarBeginStructure, s96Var);
            gu1VarBeginStructure.endStructure(s96Var);
        }

        @Override // defpackage.dp3
        public final df4<?>[] typeParametersSerializers() {
            return u96.c;
        }
    }

    public static final class c extends gh4 implements ll3<df4<List<? extends b>>> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final df4<List<? extends b>> invoke() {
            return new mr(b.a.a);
        }
    }

    public static final class d {
        public final df4<x88> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ x88(int i, String str, List list, wp7 wp7Var) {
        this.a = (i & 1) == 0 ? new String() : str;
        if ((i & 2) == 0) {
            this.b = kx2.b;
        } else {
            this.b = list;
        }
    }

    public static final /* synthetic */ void c(x88 x88Var, gu1 gu1Var, s96 s96Var) {
        if (gu1Var.shouldEncodeElementDefault(s96Var, 0) || !aa4.e(x88Var.a, new String())) {
            gu1Var.encodeStringElement(s96Var, 0, x88Var.a);
        }
        if (!gu1Var.shouldEncodeElementDefault(s96Var, 1) && aa4.e(x88Var.b, kx2.b)) {
            return;
        }
        gu1Var.encodeSerializableElement(s96Var, 1, c[1].getValue(), x88Var.b);
    }

    public final List<b> a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x88)) {
            return false;
        }
        x88 x88Var = (x88) obj;
        return aa4.e(this.a, x88Var.a) && aa4.e(this.b, x88Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "StepsBlockResponse(title=" + this.a + ", banners=" + this.b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x88() {
        this((String) null, (List) (0 == true ? 1 : 0), 3, (jh2) (0 == true ? 1 : 0));
    }

    public x88(String str, List<b> list) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = list;
    }

    @up7
    public static final class b {
        public static final C0356b Companion = new C0356b();

        @bq7("text")
        private final String a;

        @bq7("logoUrl")
        private final String b;

        @ul2
        public static final class a implements dp3<b> {
            public static final a a;
            private static final /* synthetic */ s96 descriptor;

            static {
                a aVar = new a();
                a = aVar;
                s96 s96Var = new s96("com.warefly.checkscan.shared.bank.data.network.responses.StepsBlockResponse.BannerResponse", aVar, 2);
                s96Var.j("text", true);
                s96Var.j("logoUrl", true);
                descriptor = s96Var;
            }

            @Override // defpackage.dp3
            public final df4<?>[] childSerializers() {
                ca8 ca8Var = ca8.a;
                return new df4[]{ca8Var, ca8Var};
            }

            @Override // defpackage.xl2
            public final Object deserialize(ud2 ud2Var) {
                String strDecodeStringElement;
                String strDecodeStringElement2;
                int i;
                ud2Var.getClass();
                s96 s96Var = descriptor;
                du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
                wp7 wp7Var = null;
                if (du1VarBeginStructure.decodeSequentially()) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                    i = 3;
                } else {
                    boolean z = true;
                    int i2 = 0;
                    strDecodeStringElement = null;
                    String strDecodeStringElement3 = null;
                    while (z) {
                        int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                        if (iDecodeElementIndex == -1) {
                            z = false;
                        } else if (iDecodeElementIndex == 0) {
                            strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                            i2 |= 1;
                        } else {
                            if (iDecodeElementIndex != 1) {
                                pg.h(iDecodeElementIndex);
                                return null;
                            }
                            strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                            i2 |= 2;
                        }
                    }
                    strDecodeStringElement2 = strDecodeStringElement3;
                    i = i2;
                }
                du1VarBeginStructure.endStructure(s96Var);
                return new b(i, strDecodeStringElement, strDecodeStringElement2, wp7Var);
            }

            @Override // defpackage.xp7, defpackage.xl2
            public final mp7 getDescriptor() {
                return descriptor;
            }

            @Override // defpackage.xp7
            public final void serialize(ux2 ux2Var, Object obj) {
                b bVar = (b) obj;
                bVar.getClass();
                s96 s96Var = descriptor;
                gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
                b.c(bVar, gu1VarBeginStructure, s96Var);
                gu1VarBeginStructure.endStructure(s96Var);
            }

            @Override // defpackage.dp3
            public final df4<?>[] typeParametersSerializers() {
                return u96.c;
            }
        }

        /* JADX INFO: renamed from: x88$b$b, reason: collision with other inner class name */
        public static final class C0356b {
            public final df4<b> serializer() {
                return a.a;
            }
        }

        @ul2
        public /* synthetic */ b(int i, String str, String str2, wp7 wp7Var) {
            this.a = (i & 1) == 0 ? new String() : str;
            if ((i & 2) == 0) {
                this.b = new String();
            } else {
                this.b = str2;
            }
        }

        public static final /* synthetic */ void c(b bVar, gu1 gu1Var, s96 s96Var) {
            if (gu1Var.shouldEncodeElementDefault(s96Var, 0) || !aa4.e(bVar.a, new String())) {
                gu1Var.encodeStringElement(s96Var, 0, bVar.a);
            }
            if (!gu1Var.shouldEncodeElementDefault(s96Var, 1) && aa4.e(bVar.b, new String())) {
                return;
            }
            gu1Var.encodeStringElement(s96Var, 1, bVar.b);
        }

        public final String a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("BannerResponse(text=", this.a, ", logoUrl=", this.b, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b() {
            this((String) null, (String) (0 == true ? 1 : 0), 3, (jh2) (0 == true ? 1 : 0));
        }

        public b(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public /* synthetic */ b(String str, String str2, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? new String() : str, (i & 2) != 0 ? new String() : str2);
        }
    }

    public /* synthetic */ x88(String str, List list, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new String() : str, (i & 2) != 0 ? kx2.b : list);
    }
}
