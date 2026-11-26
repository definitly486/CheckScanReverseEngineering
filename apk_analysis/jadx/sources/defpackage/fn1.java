package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class fn1<Element, Collection, Builder> extends w<Element, Collection, Builder> {
    public final df4<Element> a;

    public fn1(df4<Element> df4Var) {
        this.a = df4Var;
    }

    @Override // defpackage.w
    public final void g(du1 du1Var, Builder builder, int i, int i2) {
        if (i2 < 0) {
            fg.c("Size must be known in advance when using READ_ALL");
            return;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            h(du1Var, i + i3, builder);
        }
    }

    @Override // defpackage.w
    public void h(du1 du1Var, int i, Object obj) {
        k(i, obj, du1Var.decodeSerializableElement(getDescriptor(), i, this.a, null));
    }

    public abstract void k(int i, Object obj, Object obj2);

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, Collection collection) {
        int iE = e(collection);
        mp7 descriptor = getDescriptor();
        gu1 gu1VarBeginCollection = ux2Var.beginCollection(descriptor, iE);
        Iterator<Element> itD = d(collection);
        for (int i = 0; i < iE; i++) {
            gu1VarBeginCollection.encodeSerializableElement(getDescriptor(), i, this.a, itD.next());
        }
        gu1VarBeginCollection.endStructure(descriptor);
    }
}
