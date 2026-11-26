package defpackage;

import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public final class l39<A, B, C> implements df4<k39<? extends A, ? extends B, ? extends C>> {
    public final df4<A> a;
    public final df4<B> b;
    public final df4<C> c;
    public final op7 d = rp7.c("kotlin.Triple", new mp7[0], new ca2(this, 2));

    public l39(df4<A> df4Var, df4<B> df4Var2, df4<C> df4Var3) {
        this.a = df4Var;
        this.b = df4Var2;
        this.c = df4Var3;
    }

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        op7 op7Var = this.d;
        du1 du1VarBeginStructure = ud2Var.beginStructure(op7Var);
        boolean zDecodeSequentially = du1VarBeginStructure.decodeSequentially();
        df4<C> df4Var = this.c;
        df4<B> df4Var2 = this.b;
        df4<A> df4Var3 = this.a;
        if (zDecodeSequentially) {
            Object objDecodeSerializableElement = du1VarBeginStructure.decodeSerializableElement(op7Var, 0, df4Var3, null);
            Object objDecodeSerializableElement2 = du1VarBeginStructure.decodeSerializableElement(op7Var, 1, df4Var2, null);
            Object objDecodeSerializableElement3 = du1VarBeginStructure.decodeSerializableElement(op7Var, 2, df4Var, null);
            du1VarBeginStructure.endStructure(op7Var);
            return new k39(objDecodeSerializableElement, objDecodeSerializableElement2, objDecodeSerializableElement3);
        }
        Object obj = s39.c;
        Object objDecodeSerializableElement4 = obj;
        Object objDecodeSerializableElement5 = objDecodeSerializableElement4;
        Object objDecodeSerializableElement6 = objDecodeSerializableElement5;
        while (true) {
            int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(op7Var);
            if (iDecodeElementIndex == -1) {
                du1VarBeginStructure.endStructure(op7Var);
                if (objDecodeSerializableElement4 == obj) {
                    throw new SerializationException("Element 'first' is missing");
                }
                if (objDecodeSerializableElement5 == obj) {
                    throw new SerializationException("Element 'second' is missing");
                }
                if (objDecodeSerializableElement6 != obj) {
                    return new k39(objDecodeSerializableElement4, objDecodeSerializableElement5, objDecodeSerializableElement6);
                }
                throw new SerializationException("Element 'third' is missing");
            }
            if (iDecodeElementIndex == 0) {
                objDecodeSerializableElement4 = du1VarBeginStructure.decodeSerializableElement(op7Var, 0, df4Var3, null);
            } else if (iDecodeElementIndex == 1) {
                objDecodeSerializableElement5 = du1VarBeginStructure.decodeSerializableElement(op7Var, 1, df4Var2, null);
            } else {
                if (iDecodeElementIndex != 2) {
                    throw new SerializationException(jh.b(iDecodeElementIndex, "Unexpected index "));
                }
                objDecodeSerializableElement6 = du1VarBeginStructure.decodeSerializableElement(op7Var, 2, df4Var, null);
            }
        }
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.d;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        k39 k39Var = (k39) obj;
        k39Var.getClass();
        op7 op7Var = this.d;
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(op7Var);
        gu1VarBeginStructure.encodeSerializableElement(op7Var, 0, this.a, k39Var.b);
        gu1VarBeginStructure.encodeSerializableElement(op7Var, 1, this.b, k39Var.c);
        gu1VarBeginStructure.encodeSerializableElement(op7Var, 2, this.c, k39Var.d);
        gu1VarBeginStructure.endStructure(op7Var);
    }
}
