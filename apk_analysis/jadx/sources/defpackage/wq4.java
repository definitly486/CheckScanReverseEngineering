package defpackage;

import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class wq4<E> extends gn1<E, Set<? extends E>, LinkedHashSet<E>> {
    public final vq4 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wq4(df4<E> df4Var) {
        super(df4Var);
        df4Var.getClass();
        mp7 descriptor = df4Var.getDescriptor();
        descriptor.getClass();
        this.b = new vq4(descriptor);
    }

    @Override // defpackage.w
    public final Object a() {
        return new LinkedHashSet();
    }

    @Override // defpackage.w
    public final int b(Object obj) {
        LinkedHashSet linkedHashSet = (LinkedHashSet) obj;
        linkedHashSet.getClass();
        return linkedHashSet.size();
    }

    @Override // defpackage.w
    public final void c(int i, Object obj) {
        ((LinkedHashSet) obj).getClass();
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
        LinkedHashSet linkedHashSet = (LinkedHashSet) obj;
        linkedHashSet.getClass();
        return linkedHashSet;
    }

    @Override // defpackage.fn1
    public final void k(int i, Object obj, Object obj2) {
        LinkedHashSet linkedHashSet = (LinkedHashSet) obj;
        linkedHashSet.getClass();
        linkedHashSet.add(obj2);
    }
}
