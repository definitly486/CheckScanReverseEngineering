package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class vu3<K, V> extends b05<K, V, Map<K, ? extends V>, HashMap<K, V>> {
    public final uu3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vu3(df4<K> df4Var, df4<V> df4Var2) {
        super(df4Var, df4Var2);
        df4Var.getClass();
        df4Var2.getClass();
        mp7 descriptor = df4Var.getDescriptor();
        mp7 descriptor2 = df4Var2.getDescriptor();
        descriptor.getClass();
        descriptor2.getClass();
        this.c = new uu3("kotlin.collections.HashMap", descriptor, descriptor2);
    }

    @Override // defpackage.w
    public final Object a() {
        return new HashMap();
    }

    @Override // defpackage.w
    public final int b(Object obj) {
        HashMap map = (HashMap) obj;
        map.getClass();
        return map.size() * 2;
    }

    @Override // defpackage.w
    public final void c(int i, Object obj) {
        ((HashMap) obj).getClass();
    }

    @Override // defpackage.w
    public final Iterator d(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        return map.entrySet().iterator();
    }

    @Override // defpackage.w
    public final int e(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        return map.size();
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.c;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        throw null;
    }

    @Override // defpackage.w
    public final Object j(Object obj) {
        HashMap map = (HashMap) obj;
        map.getClass();
        return map;
    }
}
