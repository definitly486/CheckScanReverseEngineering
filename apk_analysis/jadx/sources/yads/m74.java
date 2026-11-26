package yads;

import androidx.work.WorkRequest;
import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class m74 implements defpackage.dp3 {
    public static final m74 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        m74 m74Var = new m74();
        a = m74Var;
        defpackage.s96 s96Var = new defpackage.s96("com.monetization.ads.base.model.mediation.prefetch.config.MediationPrefetchSettings", m74Var, 2);
        s96Var.j("load_timeout_millis", true);
        s96Var.j("mediation_prefetch_ad_units", true);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        return new defpackage.df4[]{defpackage.gw4.a, o74.d[1].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        int i;
        long jDecodeLongElement;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = o74.d;
        if (du1VarBeginStructure.decodeSequentially()) {
            jDecodeLongElement = du1VarBeginStructure.decodeLongElement(s96Var, 0);
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, (defpackage.xl2) cl4VarArr[1].getValue(), null);
            i = 3;
        } else {
            boolean z = true;
            List list2 = null;
            long jDecodeLongElement2 = 0;
            int i2 = 0;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    jDecodeLongElement2 = du1VarBeginStructure.decodeLongElement(s96Var, 0);
                    i2 |= 1;
                } else {
                    if (iDecodeElementIndex != 1) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, (defpackage.xl2) cl4VarArr[1].getValue(), list2);
                    i2 |= 2;
                }
            }
            list = list2;
            i = i2;
            jDecodeLongElement = jDecodeLongElement2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new o74(i, jDecodeLongElement, list);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        o74 o74Var = (o74) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = o74.d;
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 0) || o74Var.b != WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            gu1VarBeginStructure.encodeLongElement(s96Var, 0, o74Var.b);
        }
        if (gu1VarBeginStructure.shouldEncodeElementDefault(s96Var, 1) || !defpackage.aa4.e(o74Var.c, defpackage.kx2.b)) {
            gu1VarBeginStructure.encodeSerializableElement(s96Var, 1, (xp7) cl4VarArr[1].getValue(), o74Var.c);
        }
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
