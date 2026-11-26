package defpackage;

import com.google.common.collect.j;
import com.google.common.collect.n;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i44<E> extends n<E> {

    public class a extends j<E> {
        public a() {
        }

        @Override // java.util.List
        public final E get(int i) {
            return (E) i44.this.get(i);
        }

        @Override // com.google.common.collect.i
        public final boolean i() {
            return i44.this.i();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return i44.this.size();
        }

        @Override // com.google.common.collect.j, com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    @Override // com.google.common.collect.i
    public final int b(int i, Object[] objArr) {
        return a().b(i, objArr);
    }

    public abstract E get(int i);

    @Override // com.google.common.collect.n, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* JADX INFO: renamed from: j */
    public final y69<E> iterator() {
        return a().listIterator(0);
    }

    @Override // com.google.common.collect.n
    public final j<E> p() {
        return new a();
    }

    @Override // com.google.common.collect.n, com.google.common.collect.i
    public Object writeReplace() {
        return super.writeReplace();
    }
}
