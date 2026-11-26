package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class sn0 {
    public static final d Companion = new d();
    public static final cl4<df4<Object>>[] e = {null, null, null, nm4.a(po4.PUBLICATION, c.f)};

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("bottomText")
    private final String c;

    @bq7("banners")
    private final List<b> d;

    @ul2
    public static final class a implements dp3<sn0> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.shared.bank.data.network.responses.BonusBlockResponse", aVar, 4);
            s96Var.j(TJAdUnitConstants.String.TITLE, true);
            s96Var.j("text", true);
            s96Var.j("bottomText", true);
            s96Var.j("banners", true);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            cl4<df4<Object>>[] cl4VarArr = sn0.e;
            ca8 ca8Var = ca8.a;
            return new df4[]{ca8Var, ca8Var, ca8Var, cl4VarArr[3].getValue()};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            List list;
            String str;
            String str2;
            int i;
            String str3;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            cl4<df4<Object>>[] cl4VarArr = sn0.e;
            if (du1VarBeginStructure.decodeSequentially()) {
                String strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                String strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                String strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
                list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 3, cl4VarArr[3].getValue(), null);
                str = strDecodeStringElement;
                str2 = strDecodeStringElement3;
                i = 15;
                str3 = strDecodeStringElement2;
            } else {
                boolean z = true;
                int i2 = 0;
                List list2 = null;
                String strDecodeStringElement4 = null;
                String strDecodeStringElement5 = null;
                String strDecodeStringElement6 = null;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    if (iDecodeElementIndex == -1) {
                        z = false;
                    } else if (iDecodeElementIndex == 0) {
                        strDecodeStringElement4 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                        i2 |= 1;
                    } else if (iDecodeElementIndex == 1) {
                        strDecodeStringElement6 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                        i2 |= 2;
                    } else if (iDecodeElementIndex == 2) {
                        strDecodeStringElement5 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
                        i2 |= 4;
                    } else {
                        if (iDecodeElementIndex != 3) {
                            pg.h(iDecodeElementIndex);
                            return null;
                        }
                        list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 3, cl4VarArr[3].getValue(), list2);
                        i2 |= 8;
                    }
                }
                list = list2;
                str = strDecodeStringElement4;
                str2 = strDecodeStringElement5;
                i = i2;
                str3 = strDecodeStringElement6;
            }
            du1VarBeginStructure.endStructure(s96Var);
            return new sn0(i, str, str3, str2, list, (wp7) null);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            sn0 sn0Var = (sn0) obj;
            sn0Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            sn0.e(sn0Var, gu1VarBeginStructure, s96Var);
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
        public final df4<sn0> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ sn0(int i, String str, String str2, String str3, List list, wp7 wp7Var) {
        this.a = (i & 1) == 0 ? new String() : str;
        if ((i & 2) == 0) {
            this.b = new String();
        } else {
            this.b = str2;
        }
        if ((i & 4) == 0) {
            this.c = new String();
        } else {
            this.c = str3;
        }
        if ((i & 8) == 0) {
            this.d = kx2.b;
        } else {
            this.d = list;
        }
    }

    public static final /* synthetic */ void e(sn0 sn0Var, gu1 gu1Var, s96 s96Var) {
        if (gu1Var.shouldEncodeElementDefault(s96Var, 0) || !aa4.e(sn0Var.a, new String())) {
            gu1Var.encodeStringElement(s96Var, 0, sn0Var.a);
        }
        if (gu1Var.shouldEncodeElementDefault(s96Var, 1) || !aa4.e(sn0Var.b, new String())) {
            gu1Var.encodeStringElement(s96Var, 1, sn0Var.b);
        }
        if (gu1Var.shouldEncodeElementDefault(s96Var, 2) || !aa4.e(sn0Var.c, new String())) {
            gu1Var.encodeStringElement(s96Var, 2, sn0Var.c);
        }
        if (!gu1Var.shouldEncodeElementDefault(s96Var, 3) && aa4.e(sn0Var.d, kx2.b)) {
            return;
        }
        gu1Var.encodeSerializableElement(s96Var, 3, e[3].getValue(), sn0Var.d);
    }

    public final List<b> a() {
        return this.d;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sn0)) {
            return false;
        }
        sn0 sn0Var = (sn0) obj;
        return aa4.e(this.a, sn0Var.a) && aa4.e(this.b, sn0Var.b) && aa4.e(this.c, sn0Var.c) && aa4.e(this.d, sn0Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        List<b> list = this.d;
        StringBuilder sbD = ad2.d("BonusBlockResponse(title=", str, ", text=", str2, ", bottomText=");
        sbD.append(str3);
        sbD.append(", banners=");
        sbD.append(list);
        sbD.append(")");
        return sbD.toString();
    }

    @up7
    public static final class b {
        public static final C0332b Companion = new C0332b();

        @bq7("logoUrl")
        private final String a;

        @bq7("aspectRatio")
        private final double b;

        @ul2
        public static final class a implements dp3<b> {
            public static final a a;
            private static final /* synthetic */ s96 descriptor;

            static {
                a aVar = new a();
                a = aVar;
                s96 s96Var = new s96("com.warefly.checkscan.shared.bank.data.network.responses.BonusBlockResponse.BannerResponse", aVar, 2);
                s96Var.j("logoUrl", true);
                s96Var.j("aspectRatio", true);
                descriptor = s96Var;
            }

            @Override // defpackage.dp3
            public final df4<?>[] childSerializers() {
                return new df4[]{ca8.a, pq2.a};
            }

            @Override // defpackage.xl2
            public final Object deserialize(ud2 ud2Var) {
                String strDecodeStringElement;
                double dDecodeDoubleElement;
                int i;
                ud2Var.getClass();
                s96 s96Var = descriptor;
                du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
                if (du1VarBeginStructure.decodeSequentially()) {
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    dDecodeDoubleElement = du1VarBeginStructure.decodeDoubleElement(s96Var, 1);
                    i = 3;
                } else {
                    boolean z = true;
                    int i2 = 0;
                    double dDecodeDoubleElement2 = 0.0d;
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
                            dDecodeDoubleElement2 = du1VarBeginStructure.decodeDoubleElement(s96Var, 1);
                            i2 |= 2;
                        }
                    }
                    strDecodeStringElement = strDecodeStringElement2;
                    dDecodeDoubleElement = dDecodeDoubleElement2;
                    i = i2;
                }
                du1VarBeginStructure.endStructure(s96Var);
                return new b(i, strDecodeStringElement, dDecodeDoubleElement, (wp7) null);
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
                b.b(bVar, gu1VarBeginStructure, s96Var);
                gu1VarBeginStructure.endStructure(s96Var);
            }

            @Override // defpackage.dp3
            public final df4<?>[] typeParametersSerializers() {
                return u96.c;
            }
        }

        /* JADX INFO: renamed from: sn0$b$b, reason: collision with other inner class name */
        public static final class C0332b {
            public final df4<b> serializer() {
                return a.a;
            }
        }

        @ul2
        public /* synthetic */ b(int i, String str, double d, wp7 wp7Var) {
            this.a = (i & 1) == 0 ? new String() : str;
            if ((i & 2) == 0) {
                this.b = 0.0d;
            } else {
                this.b = d;
            }
        }

        public static final /* synthetic */ void b(b bVar, gu1 gu1Var, s96 s96Var) {
            if (gu1Var.shouldEncodeElementDefault(s96Var, 0) || !aa4.e(bVar.a, new String())) {
                gu1Var.encodeStringElement(s96Var, 0, bVar.a);
            }
            if (!gu1Var.shouldEncodeElementDefault(s96Var, 1) && Double.compare(bVar.b, 0.0d) == 0) {
                return;
            }
            gu1Var.encodeDoubleElement(s96Var, 1, bVar.b);
        }

        public final String a() {
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
            return aa4.e(this.a, bVar.a) && Double.compare(this.b, bVar.b) == 0;
        }

        public final int hashCode() {
            return Double.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "BannerResponse(logoUrl=" + this.a + ", aspectRatio=" + this.b + ")";
        }

        public b() {
            this((String) null, 0.0d, 3, (jh2) null);
        }

        public b(String str, double d) {
            str.getClass();
            this.a = str;
            this.b = d;
        }

        public /* synthetic */ b(String str, double d, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? new String() : str, (i & 2) != 0 ? 0.0d : d);
        }
    }

    public sn0() {
        this((String) null, (String) null, (String) null, (List) null, 15, (jh2) null);
    }

    public sn0(String str, String str2, String str3, List<b> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = list;
    }

    public /* synthetic */ sn0(String str, String str2, String str3, List list, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new String() : str, (i & 2) != 0 ? new String() : str2, (i & 4) != 0 ? new String() : str3, (i & 8) != 0 ? kx2.b : list);
    }
}
