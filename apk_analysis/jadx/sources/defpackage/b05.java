package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b05<Key, Value, Collection, Builder extends Map<Key, Value>> extends w<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {
    public final df4<Key> a;
    public final df4<Value> b;

    public b05(df4<Key> df4Var, df4<Value> df4Var2) {
        this.a = df4Var;
        this.b = df4Var2;
    }

    @Override // defpackage.w
    public final void g(du1 du1Var, Object obj, int i, int i2) {
        Map map = (Map) obj;
        map.getClass();
        if (i2 < 0) {
            fg.c("Size must be known in advance when using READ_ALL");
            return;
        }
        w74 w74VarM = kx6.m(2, kx6.n(0, i2 * 2));
        int i3 = w74VarM.b;
        int i4 = w74VarM.c;
        int i5 = w74VarM.d;
        if ((i5 <= 0 || i3 > i4) && (i5 >= 0 || i4 > i3)) {
            return;
        }
        while (true) {
            k(du1Var, i + i3, map, false);
            if (i3 == i4) {
                return;
            } else {
                i3 += i5;
            }
        }
    }

    @Override // defpackage.w
    public final /* bridge */ /* synthetic */ void h(du1 du1Var, int i, Object obj) {
        k(du1Var, i, (Map) obj, true);
    }

    public final void k(du1 du1Var, int i, Builder builder, boolean z) {
        int iDecodeElementIndex;
        builder.getClass();
        Object objDecodeSerializableElement = du1Var.decodeSerializableElement(getDescriptor(), i, this.a, null);
        if (z) {
            iDecodeElementIndex = du1Var.decodeElementIndex(getDescriptor());
            if (iDecodeElementIndex != i + 1) {
                c9.f(rz0.c(i, iDecodeElementIndex, "Value must follow key in a map, index for key: ", ", returned index for value: "));
                return;
            }
        } else {
            iDecodeElementIndex = i + 1;
        }
        boolean zContainsKey = builder.containsKey(objDecodeSerializableElement);
        df4<Value> df4Var = this.b;
        builder.put(objDecodeSerializableElement, (!zContainsKey || (df4Var.getDescriptor().getKind() instanceof dg6)) ? du1Var.decodeSerializableElement(getDescriptor(), iDecodeElementIndex, df4Var, null) : du1Var.decodeSerializableElement(getDescriptor(), iDecodeElementIndex, df4Var, n05.c(objDecodeSerializableElement, builder)));
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Collection collection) {
        int iE = e(collection);
        mp7 descriptor = getDescriptor();
        gu1 gu1VarBeginCollection = ux2Var.beginCollection(descriptor, iE);
        Iterator<Map.Entry<? extends Key, ? extends Value>> itD = d(collection);
        int i = 0;
        while (itD.hasNext()) {
            Map.Entry<? extends Key, ? extends Value> next = itD.next();
            Key key = next.getKey();
            Value value = next.getValue();
            int i2 = i + 1;
            gu1VarBeginCollection.encodeSerializableElement(getDescriptor(), i, this.a, key);
            i += 2;
            gu1VarBeginCollection.encodeSerializableElement(getDescriptor(), i2, this.b, value);
        }
        gu1VarBeginCollection.endStructure(descriptor);
    }
}
