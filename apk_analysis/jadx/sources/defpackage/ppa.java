package defpackage;

import com.google.android.gms.internal.measurement.zzabe;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class ppa extends AbstractSet {
    public final int b;
    public final /* synthetic */ qpa c;

    public ppa(qpa qpaVar, int i) {
        this.c = qpaVar;
        this.b = i;
    }

    public final int a() {
        int i = this.b;
        if (i == -1) {
            return 0;
        }
        return this.c.c[i];
    }

    public final int b() {
        return this.c.c[this.b + 1];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return Arrays.binarySearch(this.c.b, a(), b(), obj, this.b == -1 ? qpa.g : zzabe.b) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new opa(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return b() - a();
    }
}
