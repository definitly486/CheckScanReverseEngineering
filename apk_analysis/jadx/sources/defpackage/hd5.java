package defpackage;

import kotlinx.serialization.MissingFieldException;

/* JADX INFO: loaded from: classes5.dex */
public final class hd5 implements df4<lc2.d> {
    public static final hd5 a = new hd5();
    public static final cl4 b = nm4.a(po4.PUBLICATION, a.f);

    public static final class a extends gh4 implements ll3<mp7> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final mp7 invoke() {
            return rp7.c("kotlinx.datetime.MonthBased", new mp7[0], gd5.f);
        }
    }

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        int iDecodeIntElement;
        ud2Var.getClass();
        mp7 descriptor = getDescriptor();
        du1 du1VarBeginStructure = ud2Var.beginStructure(descriptor);
        boolean zDecodeSequentially = du1VarBeginStructure.decodeSequentially();
        boolean z = true;
        hd5 hd5Var = a;
        if (!zDecodeSequentially) {
            iDecodeIntElement = 0;
            boolean z2 = false;
            while (true) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(hd5Var.getDescriptor());
                if (iDecodeElementIndex == -1) {
                    z = z2;
                    break;
                }
                if (iDecodeElementIndex != 0) {
                    tc0.i(iDecodeElementIndex);
                    throw null;
                }
                iDecodeIntElement = du1VarBeginStructure.decodeIntElement(hd5Var.getDescriptor(), 0);
                z2 = true;
            }
        } else {
            iDecodeIntElement = du1VarBeginStructure.decodeIntElement(hd5Var.getDescriptor(), 0);
        }
        j59 j59Var = j59.a;
        du1VarBeginStructure.endStructure(descriptor);
        if (z) {
            return new lc2.d(iDecodeIntElement);
        }
        throw new MissingFieldException("months", getDescriptor().h());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return (mp7) b.getValue();
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        lc2.d dVar = (lc2.d) obj;
        dVar.getClass();
        mp7 descriptor = getDescriptor();
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(descriptor);
        gu1VarBeginStructure.encodeIntElement(a.getDescriptor(), 0, dVar.c);
        gu1VarBeginStructure.endStructure(descriptor);
    }
}
