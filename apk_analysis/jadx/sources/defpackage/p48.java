package defpackage;

import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class p48 implements Supplier {
    @Override // java.util.function.Supplier
    public final Object get() {
        return new SoftReference(new ArrayDeque());
    }
}
