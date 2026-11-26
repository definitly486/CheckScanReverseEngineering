package defpackage;

import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k1<T> implements df4<T> {
    public xl2<T> a(du1 du1Var, String str) {
        return du1Var.getSerializersModule().d(c(), str);
    }

    public xp7<T> b(ux2 ux2Var, T t) {
        t.getClass();
        return ux2Var.getSerializersModule().e(c(), t);
    }

    public abstract ne4<T> c();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.xl2
    public final T deserialize(ud2 ud2Var) {
        T t;
        ud2Var.getClass();
        mp7 descriptor = getDescriptor();
        du1 du1VarBeginStructure = ud2Var.beginStructure(descriptor);
        r07 r07Var = new r07();
        if (du1VarBeginStructure.decodeSequentially()) {
            t = (T) du1VarBeginStructure.decodeSerializableElement(getDescriptor(), 1, ea6.a(this, du1VarBeginStructure, du1VarBeginStructure.decodeStringElement(getDescriptor(), 0)), null);
        } else {
            Object objDecodeSerializableElement = null;
            while (true) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex == -1) {
                    if (objDecodeSerializableElement != null) {
                        t = (T) objDecodeSerializableElement;
                        break;
                    }
                    eg.d((String) r07Var.b, "Polymorphic value has not been read for class ");
                    return null;
                }
                if (iDecodeElementIndex != 0) {
                    T t2 = r07Var.b;
                    if (iDecodeElementIndex != 1) {
                        StringBuilder sb = new StringBuilder("Invalid index in polymorphic deserialization of ");
                        String str = (String) t2;
                        if (str == null) {
                            str = "unknown class";
                        }
                        sb.append(str);
                        sb.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                        sb.append(iDecodeElementIndex);
                        throw new SerializationException(sb.toString());
                    }
                    if (t2 == 0) {
                        fg.c("Cannot read polymorphic value before its type token");
                        return null;
                    }
                    r07Var.b = t2;
                    objDecodeSerializableElement = du1VarBeginStructure.decodeSerializableElement(getDescriptor(), iDecodeElementIndex, ea6.a(this, du1VarBeginStructure, (String) t2), null);
                } else {
                    r07Var.b = (T) du1VarBeginStructure.decodeStringElement(getDescriptor(), iDecodeElementIndex);
                }
            }
        }
        du1VarBeginStructure.endStructure(descriptor);
        return t;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, T t) {
        t.getClass();
        xp7<? super T> xp7VarB = ea6.b(this, ux2Var, t);
        mp7 descriptor = getDescriptor();
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(descriptor);
        gu1VarBeginStructure.encodeStringElement(getDescriptor(), 0, xp7VarB.getDescriptor().h());
        gu1VarBeginStructure.encodeSerializableElement(getDescriptor(), 1, xp7VarB, t);
        gu1VarBeginStructure.endStructure(descriptor);
    }
}
