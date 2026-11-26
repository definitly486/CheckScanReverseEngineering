package defpackage;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class xu3<E> extends gn1<E, Set<? extends E>, HashSet<E>> {
    public final wu3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xu3(df4<E> df4Var) {
        super(df4Var);
        df4Var.getClass();
        mp7 descriptor = df4Var.getDescriptor();
        descriptor.getClass();
        this.b = new wu3(descriptor);
    }

    @Override // defpackage.w
    public final Object a() {
        return new HashSet();
    }

    @Override // defpackage.w
    public final int b(Object obj) {
        HashSet hashSet = (HashSet) obj;
        hashSet.getClass();
        return hashSet.size();
    }

    @Override // defpackage.w
    public final void c(int i, Object obj) {
        ((HashSet) obj).getClass();
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
        HashSet hashSet = (HashSet) obj;
        hashSet.getClass();
        return hashSet;
    }

    @Override // defpackage.fn1
    public final void k(int i, Object obj, Object obj2) {
        HashSet hashSet = (HashSet) obj;
        hashSet.getClass();
        hashSet.add(obj2);
    }
}
