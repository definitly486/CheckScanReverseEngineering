package defpackage;

import androidx.core.app.FrameMetricsAggregator;
import androidx.core.app.NotificationCompat;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class q99 implements Serializable {
    public static final d Companion = new d();
    public static final cl4<df4<Object>>[] k = {null, null, nm4.a(po4.PUBLICATION, c.f), null, null, null, null, null, null};
    public final Long b;
    public final String c;
    public final b d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final Long i;
    public final boolean j;

    @ul2
    public static final class a implements dp3<q99> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.domain.entities.balance.UserBankCard", aVar, 9);
            s96Var.j("admitadId", false);
            s96Var.j("name", false);
            s96Var.j(NotificationCompat.CATEGORY_STATUS, false);
            s96Var.j("statusTitle", false);
            s96Var.j("statusDetails", false);
            s96Var.j("bankWebsiteUrl", false);
            s96Var.j("attachCardUrl", false);
            s96Var.j("attachedCardId", false);
            s96Var.j("expired", false);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            cl4<df4<Object>>[] cl4VarArr = q99.k;
            gw4 gw4Var = gw4.a;
            ca8 ca8Var = ca8.a;
            return new df4[]{ev0.a(gw4Var), ca8Var, cl4VarArr[2].getValue(), ev0.a(ca8Var), ev0.a(ca8Var), ev0.a(ca8Var), ev0.a(ca8Var), ev0.a(gw4Var), gs0.a};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            b bVar;
            Long l;
            String str;
            int i;
            String str2;
            String str3;
            String str4;
            Long l2;
            boolean zDecodeBooleanElement;
            String str5;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            cl4<df4<Object>>[] cl4VarArr = q99.k;
            int i2 = 7;
            int i3 = 6;
            int i4 = 5;
            int i5 = 8;
            String str6 = null;
            if (du1VarBeginStructure.decodeSequentially()) {
                gw4 gw4Var = gw4.a;
                Long l3 = (Long) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, gw4Var, null);
                String strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                b bVar2 = (b) du1VarBeginStructure.decodeSerializableElement(s96Var, 2, cl4VarArr[2].getValue(), null);
                ca8 ca8Var = ca8.a;
                String str7 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8Var, null);
                String str8 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8Var, null);
                String str9 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 5, ca8Var, null);
                String str10 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 6, ca8Var, null);
                bVar = bVar2;
                l2 = (Long) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 7, gw4Var, null);
                zDecodeBooleanElement = du1VarBeginStructure.decodeBooleanElement(s96Var, 8);
                str4 = str10;
                str3 = str9;
                str2 = str7;
                i = 511;
                str = str8;
                str5 = strDecodeStringElement;
                l = l3;
            } else {
                int i6 = 2;
                boolean z = true;
                int i7 = 0;
                boolean zDecodeBooleanElement2 = false;
                b bVar3 = null;
                String str11 = null;
                String str12 = null;
                String str13 = null;
                Long l4 = null;
                String strDecodeStringElement2 = null;
                Long l5 = null;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    switch (iDecodeElementIndex) {
                        case -1:
                            z = false;
                            i3 = 6;
                            i4 = 5;
                            i5 = 8;
                            i6 = 2;
                            break;
                        case 0:
                            l5 = (Long) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 0, gw4.a, l5);
                            i7 |= 1;
                            i2 = 7;
                            i3 = 6;
                            i4 = 5;
                            i5 = 8;
                            i6 = 2;
                            break;
                        case 1:
                            strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                            i7 |= 2;
                            i2 = 7;
                            i5 = 8;
                            break;
                        case 2:
                            bVar3 = (b) du1VarBeginStructure.decodeSerializableElement(s96Var, i6, cl4VarArr[i6].getValue(), bVar3);
                            i7 |= 4;
                            i2 = 7;
                            i5 = 8;
                            break;
                        case 3:
                            str12 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, ca8.a, str12);
                            i7 |= 8;
                            i2 = 7;
                            i5 = 8;
                            break;
                        case 4:
                            str11 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, ca8.a, str11);
                            i7 |= 16;
                            i5 = 8;
                            break;
                        case 5:
                            str13 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i4, ca8.a, str13);
                            i7 |= 32;
                            i5 = 8;
                            break;
                        case 6:
                            str6 = (String) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i3, ca8.a, str6);
                            i7 |= 64;
                            i5 = 8;
                            break;
                        case 7:
                            l4 = (Long) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i2, gw4.a, l4);
                            i7 |= 128;
                            i5 = 8;
                            break;
                        case 8:
                            zDecodeBooleanElement2 = du1VarBeginStructure.decodeBooleanElement(s96Var, i5);
                            i7 |= 256;
                            break;
                        default:
                            pg.h(iDecodeElementIndex);
                            return null;
                    }
                }
                bVar = bVar3;
                l = l5;
                str = str11;
                i = i7;
                str2 = str12;
                str3 = str13;
                str4 = str6;
                l2 = l4;
                zDecodeBooleanElement = zDecodeBooleanElement2;
                str5 = strDecodeStringElement2;
            }
            du1VarBeginStructure.endStructure(s96Var);
            return new q99(i, l, str5, bVar, str2, str, str3, str4, l2, zDecodeBooleanElement);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            q99 q99Var = (q99) obj;
            q99Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            cl4<df4<Object>>[] cl4VarArr = q99.k;
            gw4 gw4Var = gw4.a;
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 0, gw4Var, q99Var.b);
            gu1VarBeginStructure.encodeStringElement(s96Var, 1, q99Var.c);
            gu1VarBeginStructure.encodeSerializableElement(s96Var, 2, cl4VarArr[2].getValue(), q99Var.d);
            ca8 ca8Var = ca8.a;
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 3, ca8Var, q99Var.e);
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 4, ca8Var, q99Var.f);
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 5, ca8Var, q99Var.g);
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 6, ca8Var, q99Var.h);
            gu1VarBeginStructure.encodeNullableSerializableElement(s96Var, 7, gw4Var, q99Var.i);
            gu1VarBeginStructure.encodeBooleanElement(s96Var, 8, q99Var.j);
            gu1VarBeginStructure.endStructure(s96Var);
        }

        @Override // defpackage.dp3
        public final df4<?>[] typeParametersSerializers() {
            return u96.c;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @up7
    public static final class b implements Serializable {
        private static final /* synthetic */ b[] $VALUES;
        private static final cl4<df4<Object>> $cachedSerializer$delegate;
        public static final b Approved;
        public static final b Attached;
        public static final C0317b Companion;
        public static final b Pending;
        public static final b Rejected;
        public static final b UnknownNeedsUpdate;

        public static final class a extends gh4 implements ll3<df4<Object>> {
            public static final a f = new a(0);

            @Override // defpackage.ll3
            public final df4<Object> invoke() {
                b[] bVarArrValues = b.values();
                bVarArrValues.getClass();
                return new l03("com.warefly.checkscan.domain.entities.balance.UserBankCard.CardStatus", bVarArrValues);
            }
        }

        /* JADX INFO: renamed from: q99$b$b, reason: collision with other inner class name */
        public static final class C0317b {
            public final df4<b> serializer() {
                return (df4) b.$cachedSerializer$delegate.getValue();
            }
        }

        static {
            b bVar = new b("Approved", 0);
            Approved = bVar;
            b bVar2 = new b("Attached", 1);
            Attached = bVar2;
            b bVar3 = new b("Pending", 2);
            Pending = bVar3;
            b bVar4 = new b("Rejected", 3);
            Rejected = bVar4;
            b bVar5 = new b("UnknownNeedsUpdate", 4);
            UnknownNeedsUpdate = bVar5;
            $VALUES = new b[]{bVar, bVar2, bVar3, bVar4, bVar5};
            Companion = new C0317b();
            $cachedSerializer$delegate = nm4.a(po4.PUBLICATION, a.f);
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

    public static final class c extends gh4 implements ll3<df4<b>> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final df4<b> invoke() {
            return b.Companion.serializer();
        }
    }

    public static final class d {
        public final df4<q99> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ q99(int i, Long l, String str, b bVar, String str2, String str3, String str4, String str5, Long l2, boolean z) {
        if (511 != (i & FrameMetricsAggregator.EVERY_DURATION)) {
            r96.f(a.a.getDescriptor(), i, FrameMetricsAggregator.EVERY_DURATION);
            throw null;
        }
        this.b = l;
        this.c = str;
        this.d = bVar;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = str5;
        this.i = l2;
        this.j = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q99)) {
            return false;
        }
        q99 q99Var = (q99) obj;
        return aa4.e(this.b, q99Var.b) && aa4.e(this.c, q99Var.c) && this.d == q99Var.d && aa4.e(this.e, q99Var.e) && aa4.e(this.f, q99Var.f) && aa4.e(this.g, q99Var.g) && aa4.e(this.h, q99Var.h) && aa4.e(this.i, q99Var.i) && this.j == q99Var.j;
    }

    public final int hashCode() {
        Long l = this.b;
        int iHashCode = (this.d.hashCode() + zg.b((l == null ? 0 : l.hashCode()) * 31, 31, this.c)) * 31;
        String str = this.e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.h;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l2 = this.i;
        return Boolean.hashCode(this.j) + ((iHashCode5 + (l2 != null ? l2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UserBankCard(admitadId=");
        sb.append(this.b);
        sb.append(", name=");
        sb.append(this.c);
        sb.append(", status=");
        sb.append(this.d);
        sb.append(", statusTitle=");
        sb.append(this.e);
        sb.append(", statusDetails=");
        kv2.c(sb, this.f, ", bankWebsiteUrl=", this.g, ", attachCardUrl=");
        sb.append(this.h);
        sb.append(", attachedCardId=");
        sb.append(this.i);
        sb.append(", expired=");
        return dh.e(sb, this.j, ")");
    }
}
