package yads;

import defpackage.mp7;
import defpackage.u96;
import defpackage.xp7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ud0 implements defpackage.dp3 {
    public static final ud0 a;
    public static final /* synthetic */ defpackage.s96 b;

    static {
        ud0 ud0Var = new ud0();
        a = ud0Var;
        defpackage.s96 s96Var = new defpackage.s96("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnitMediation", ud0Var, 2);
        s96Var.j("waterfall", false);
        s96Var.j("bidding", false);
        b = s96Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final defpackage.df4[] childSerializers() {
        defpackage.cl4[] cl4VarArr = wd0.c;
        return new defpackage.df4[]{cl4VarArr[0].getValue(), cl4VarArr[1].getValue()};
    }

    @Override // defpackage.xl2
    public final Object deserialize(defpackage.ud2 ud2Var) {
        List list;
        List list2;
        int i;
        defpackage.s96 s96Var = b;
        defpackage.du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = wd0.c;
        if (du1VarBeginStructure.decodeSequentially()) {
            list2 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, (defpackage.xl2) cl4VarArr[0].getValue(), null);
            list = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, (defpackage.xl2) cl4VarArr[1].getValue(), null);
            i = 3;
        } else {
            boolean z = true;
            int i2 = 0;
            List list3 = null;
            List list4 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    list4 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, (defpackage.xl2) cl4VarArr[0].getValue(), list4);
                    i2 |= 1;
                } else {
                    if (iDecodeElementIndex != 1) {
                        defpackage.pg.h(iDecodeElementIndex);
                        return null;
                    }
                    list3 = (List) du1VarBeginStructure.decodeSerializableElement(s96Var, 1, (defpackage.xl2) cl4VarArr[1].getValue(), list3);
                    i2 |= 2;
                }
            }
            list = list3;
            list2 = list4;
            i = i2;
        }
        du1VarBeginStructure.endStructure(s96Var);
        return new wd0(i, list2, list);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(defpackage.ux2 ux2Var, Object obj) {
        wd0 wd0Var = (wd0) obj;
        defpackage.s96 s96Var = b;
        defpackage.gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
        defpackage.cl4[] cl4VarArr = wd0.c;
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 0, (xp7) cl4VarArr[0].getValue(), wd0Var.a);
        gu1VarBeginStructure.encodeSerializableElement(s96Var, 1, (xp7) cl4VarArr[1].getValue(), wd0Var.b);
        gu1VarBeginStructure.endStructure(s96Var);
    }

    @Override // defpackage.dp3
    public final defpackage.df4[] typeParametersSerializers() {
        return u96.c;
    }
}
