package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class mr<E> extends gn1<E, List<? extends E>, ArrayList<E>> {
    public final kr b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mr(df4<E> df4Var) {
        super(df4Var);
        df4Var.getClass();
        mp7 descriptor = df4Var.getDescriptor();
        descriptor.getClass();
        this.b = new kr(descriptor);
    }

    @Override // defpackage.w
    public final Object a() {
        return new ArrayList();
    }

    @Override // defpackage.w
    public final int b(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        return arrayList.size();
    }

    @Override // defpackage.w
    public final void c(int i, Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        arrayList.ensureCapacity(i);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.b;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        throw null;
    }

    @Override // defpackage.w
    public final Object j(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        return arrayList;
    }

    @Override // defpackage.fn1
    public final void k(int i, Object obj, Object obj2) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        arrayList.add(i, obj2);
    }
}
