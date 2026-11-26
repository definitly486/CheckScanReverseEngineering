package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class ji0 {
    public static final d Companion = new d();
    public static final cl4<df4<Object>>[] b = {nm4.a(po4.PUBLICATION, c.f)};

    @bq7("banners")
    private final List<b> a;

    @ul2
    public static final class a implements dp3<ji0> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.shared.bank.data.network.responses.BenefitsBlockResponse", aVar, 1);
            s96Var.j("banners", true);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            return new df4[]{ji0.b[0].getValue()};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            List list;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            cl4<df4<Object>>[] cl4VarArr = ji0.b;
            int i = 1;
            wp7 wp7Var = null;
            if (du1VarBeginStructure.decodeSequentially()) {
                list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, cl4VarArr[0].getValue(), null);
            } else {
                boolean z = true;
                int i2 = 0;
                List list2 = null;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    if (iDecodeElementIndex == -1) {
                        z = false;
                    } else {
                        if (iDecodeElementIndex != 0) {
                            pg.h(iDecodeElementIndex);
                            return null;
                        }
                        list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, cl4VarArr[0].getValue(), list2);
                        i2 = 1;
                    }
                }
                list = list2;
                i = i2;
            }
            du1VarBeginStructure.endStructure(s96Var);
            return new ji0(i, list, wp7Var);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            ji0 ji0Var = (ji0) obj;
            ji0Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            ji0.b(ji0Var, gu1VarBeginStructure, s96Var);
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
        public final df4<ji0> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ ji0(int i, List list, wp7 wp7Var) {
        if ((i & 1) == 0) {
            this.a = kx2.b;
        } else {
            this.a = list;
        }
    }

    public static final /* synthetic */ void b(ji0 ji0Var, gu1 gu1Var, s96 s96Var) {
        if (!gu1Var.shouldEncodeElementDefault(s96Var, 0) && aa4.e(ji0Var.a, kx2.b)) {
            return;
        }
        gu1Var.encodeSerializableElement(s96Var, 0, b[0].getValue(), ji0Var.a);
    }

    public final List<b> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ji0) && aa4.e(this.a, ((ji0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("BenefitsBlockResponse(banners=", this.a, ")");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ji0() {
        this((List) null, 1, (jh2) (0 == true ? 1 : 0));
    }

    public ji0(List<b> list) {
        list.getClass();
        this.a = list;
    }

    public /* synthetic */ ji0(List list, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? kx2.b : list);
    }

    @up7
    public static final class b {
        public static final C0213b Companion = new C0213b();

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        @ul2
        public static final class a implements dp3<b> {
            public static final a a;
            private static final /* synthetic */ s96 descriptor;

            static {
                a aVar = new a();
                a = aVar;
                s96 s96Var = new s96("com.warefly.checkscan.shared.bank.data.network.responses.BenefitsBlockResponse.BannerResponse", aVar, 3);
                s96Var.j(TJAdUnitConstants.String.TITLE, true);
                s96Var.j("text", true);
                s96Var.j("logoUrl", true);
                descriptor = s96Var;
            }

            @Override // defpackage.dp3
            public final df4<?>[] childSerializers() {
                ca8 ca8Var = ca8.a;
                return new df4[]{ca8Var, ca8Var, ca8Var};
            }

            @Override // defpackage.xl2
            public final Object deserialize(ud2 ud2Var) {
                String str;
                String strDecodeStringElement;
                String str2;
                int i;
                ud2Var.getClass();
                s96 s96Var = descriptor;
                du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
                if (du1VarBeginStructure.decodeSequentially()) {
                    String strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                    String strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                    str = strDecodeStringElement2;
                    strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 2);
                    str2 = strDecodeStringElement3;
                    i = 7;
                } else {
                    String strDecodeStringElement4 = null;
                    String strDecodeStringElement5 = null;
                    String strDecodeStringElement6 = null;
                    boolean z = true;
                    int i2 = 0;
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
                        } else {
                            if (iDecodeElementIndex != 2) {
                                pg.h(iDecodeElementIndex);
                                return null;
                            }
                            strDecodeStringElement5 = du1VarBeginStructure.decodeStringElement(s96Var, 2);
                            i2 |= 4;
                        }
                    }
                    str = strDecodeStringElement4;
                    strDecodeStringElement = strDecodeStringElement5;
                    str2 = strDecodeStringElement6;
                    i = i2;
                }
                du1VarBeginStructure.endStructure(s96Var);
                return new b(i, str, str2, strDecodeStringElement, (wp7) null);
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
                b.d(bVar, gu1VarBeginStructure, s96Var);
                gu1VarBeginStructure.endStructure(s96Var);
            }

            @Override // defpackage.dp3
            public final df4<?>[] typeParametersSerializers() {
                return u96.c;
            }
        }

        /* JADX INFO: renamed from: ji0$b$b, reason: collision with other inner class name */
        public static final class C0213b {
            public final df4<b> serializer() {
                return a.a;
            }
        }

        @ul2
        public /* synthetic */ b(int i, String str, String str2, String str3, wp7 wp7Var) {
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
        }

        public static final /* synthetic */ void d(b bVar, gu1 gu1Var, s96 s96Var) {
            if (gu1Var.shouldEncodeElementDefault(s96Var, 0) || !aa4.e(bVar.a, new String())) {
                gu1Var.encodeStringElement(s96Var, 0, bVar.a);
            }
            if (gu1Var.shouldEncodeElementDefault(s96Var, 1) || !aa4.e(bVar.b, new String())) {
                gu1Var.encodeStringElement(s96Var, 1, bVar.b);
            }
            if (!gu1Var.shouldEncodeElementDefault(s96Var, 2) && aa4.e(bVar.c, new String())) {
                return;
            }
            gu1Var.encodeStringElement(s96Var, 2, bVar.c);
        }

        public final String a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
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
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("BannerResponse(title=", str, ", text=", str2, ", logoUrl="), this.c, ")");
        }

        public b(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public b() {
            this((String) null, (String) null, (String) null, 7, (jh2) null);
        }

        public /* synthetic */ b(String str, String str2, String str3, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? new String() : str, (i & 2) != 0 ? new String() : str2, (i & 4) != 0 ? new String() : str3);
        }
    }
}
