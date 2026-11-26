package defpackage;

import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class qf4<K, V, R> implements df4<R> {
    public final df4<K> a;
    public final df4<V> b;

    public qf4(df4<K> df4Var, df4<V> df4Var2) {
        this.a = df4Var;
        this.b = df4Var2;
    }

    public abstract K a(R r);

    public abstract V b(R r);

    public abstract R c(K k, V v);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.xl2
    public final R deserialize(ud2 ud2Var) {
        R r;
        Object obj = s39.c;
        ud2Var.getClass();
        mp7 descriptor = getDescriptor();
        du1 du1VarBeginStructure = ud2Var.beginStructure(descriptor);
        boolean zDecodeSequentially = du1VarBeginStructure.decodeSequentially();
        df4<V> df4Var = this.b;
        df4<K> df4Var2 = this.a;
        if (zDecodeSequentially) {
            r = (R) c(du1VarBeginStructure.decodeSerializableElement(getDescriptor(), 0, df4Var2, null), du1VarBeginStructure.decodeSerializableElement(getDescriptor(), 1, df4Var, null));
        } else {
            Object objDecodeSerializableElement = obj;
            Object objDecodeSerializableElement2 = objDecodeSerializableElement;
            while (true) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex == -1) {
                    if (objDecodeSerializableElement == obj) {
                        throw new SerializationException("Element 'key' is missing");
                    }
                    if (objDecodeSerializableElement2 == obj) {
                        throw new SerializationException("Element 'value' is missing");
                    }
                    r = (R) c(objDecodeSerializableElement, objDecodeSerializableElement2);
                    break;
                }
                if (iDecodeElementIndex == 0) {
                    objDecodeSerializableElement = du1VarBeginStructure.decodeSerializableElement(getDescriptor(), 0, df4Var2, null);
                } else {
                    if (iDecodeElementIndex != 1) {
                        throw new SerializationException(jh.b(iDecodeElementIndex, "Invalid index: "));
                    }
                    objDecodeSerializableElement2 = du1VarBeginStructure.decodeSerializableElement(getDescriptor(), 1, df4Var, null);
                }
            }
        }
        du1VarBeginStructure.endStructure(descriptor);
        return r;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, R r) {
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(getDescriptor());
        gu1VarBeginStructure.encodeSerializableElement(getDescriptor(), 0, this.a, a(r));
        gu1VarBeginStructure.encodeSerializableElement(getDescriptor(), 1, this.b, b(r));
        gu1VarBeginStructure.endStructure(getDescriptor());
    }
}
