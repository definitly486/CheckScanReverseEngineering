package defpackage;

import kotlinx.serialization.MissingFieldException;

/* JADX INFO: loaded from: classes5.dex */
public final class fu8 implements df4<lc2.e> {
    public static final fu8 a = new fu8();
    public static final cl4 b = nm4.a(po4.PUBLICATION, a.f);

    public static final class a extends gh4 implements ll3<mp7> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final mp7 invoke() {
            return rp7.c("kotlinx.datetime.TimeBased", new mp7[0], eu8.f);
        }
    }

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        long jDecodeLongElement;
        ud2Var.getClass();
        mp7 descriptor = getDescriptor();
        du1 du1VarBeginStructure = ud2Var.beginStructure(descriptor);
        boolean zDecodeSequentially = du1VarBeginStructure.decodeSequentially();
        boolean z = true;
        fu8 fu8Var = a;
        if (!zDecodeSequentially) {
            long jDecodeLongElement2 = 0;
            boolean z2 = false;
            while (true) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(fu8Var.getDescriptor());
                if (iDecodeElementIndex == -1) {
                    z = z2;
                    jDecodeLongElement = jDecodeLongElement2;
                    break;
                }
                if (iDecodeElementIndex != 0) {
                    tc0.i(iDecodeElementIndex);
                    throw null;
                }
                jDecodeLongElement2 = du1VarBeginStructure.decodeLongElement(fu8Var.getDescriptor(), 0);
                z2 = true;
            }
        } else {
            jDecodeLongElement = du1VarBeginStructure.decodeLongElement(fu8Var.getDescriptor(), 0);
        }
        j59 j59Var = j59.a;
        du1VarBeginStructure.endStructure(descriptor);
        if (z) {
            return new lc2.e(jDecodeLongElement);
        }
        throw new MissingFieldException("nanoseconds", getDescriptor().h());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return (mp7) b.getValue();
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        lc2.e eVar = (lc2.e) obj;
        eVar.getClass();
        mp7 descriptor = getDescriptor();
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(descriptor);
        gu1VarBeginStructure.encodeLongElement(a.getDescriptor(), 0, eVar.c);
        gu1VarBeginStructure.endStructure(descriptor);
    }
}
