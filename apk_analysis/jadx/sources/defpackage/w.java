package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class w<Element, Collection, Builder> implements df4<Collection> {
    public abstract Builder a();

    public abstract int b(Builder builder);

    public abstract void c(int i, Object obj);

    public abstract Iterator<Element> d(Collection collection);

    public Collection deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return (Collection) f(ud2Var);
    }

    public abstract int e(Collection collection);

    public final Object f(ud2 ud2Var) {
        ud2Var.getClass();
        Builder builderA = a();
        int iB = b(builderA);
        du1 du1VarBeginStructure = ud2Var.beginStructure(getDescriptor());
        if (!du1VarBeginStructure.decodeSequentially()) {
            while (true) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(getDescriptor());
                if (iDecodeElementIndex == -1) {
                    break;
                }
                h(du1VarBeginStructure, iDecodeElementIndex + iB, builderA);
            }
        } else {
            int iDecodeCollectionSize = du1VarBeginStructure.decodeCollectionSize(getDescriptor());
            c(iDecodeCollectionSize, builderA);
            g(du1VarBeginStructure, builderA, iB, iDecodeCollectionSize);
        }
        du1VarBeginStructure.endStructure(getDescriptor());
        return j(builderA);
    }

    public abstract void g(du1 du1Var, Builder builder, int i, int i2);

    public abstract void h(du1 du1Var, int i, Object obj);

    public abstract Builder i(Collection collection);

    public abstract Collection j(Builder builder);
}
