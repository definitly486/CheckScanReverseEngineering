package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class zy8 implements Serializable {
    public static final b Companion = new b();
    public final String b;
    public final String c;

    @ul2
    public static final class a implements dp3<zy8> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.presentation.balance.transferCashback.card.view.TransferCardDialogListener.ApproveData", aVar, 2);
            s96Var.j("valueText", false);
            s96Var.j("titleValueText", false);
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
            if (du1VarBeginStructure.decodeSequentially()) {
                strDecodeStringElement = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                strDecodeStringElement2 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                i = 3;
            } else {
                String strDecodeStringElement3 = null;
                String strDecodeStringElement4 = null;
                boolean z = true;
                int i2 = 0;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    if (iDecodeElementIndex == -1) {
                        z = false;
                    } else if (iDecodeElementIndex == 0) {
                        strDecodeStringElement3 = du1VarBeginStructure.decodeStringElement(s96Var, 0);
                        i2 |= 1;
                    } else {
                        if (iDecodeElementIndex != 1) {
                            pg.h(iDecodeElementIndex);
                            return null;
                        }
                        strDecodeStringElement4 = du1VarBeginStructure.decodeStringElement(s96Var, 1);
                        i2 |= 2;
                    }
                }
                strDecodeStringElement = strDecodeStringElement3;
                strDecodeStringElement2 = strDecodeStringElement4;
                i = i2;
            }
            du1VarBeginStructure.endStructure(s96Var);
            return new zy8(i, strDecodeStringElement, strDecodeStringElement2);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            zy8 zy8Var = (zy8) obj;
            zy8Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            gu1VarBeginStructure.encodeStringElement(s96Var, 0, zy8Var.b);
            gu1VarBeginStructure.encodeStringElement(s96Var, 1, zy8Var.c);
            gu1VarBeginStructure.endStructure(s96Var);
        }

        @Override // defpackage.dp3
        public final df4<?>[] typeParametersSerializers() {
            return u96.c;
        }
    }

    public static final class b {
        public final df4<zy8> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ zy8(int i, String str, String str2) {
        if (3 != (i & 3)) {
            r96.f(a.a.getDescriptor(), i, 3);
            throw null;
        }
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zy8)) {
            return false;
        }
        zy8 zy8Var = (zy8) obj;
        return aa4.e(this.b, zy8Var.b) && aa4.e(this.c, zy8Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("ApproveData(valueText=", this.b, ", titleValueText=", this.c, ")");
    }

    public zy8(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.b = str;
        this.c = str2;
    }
}
