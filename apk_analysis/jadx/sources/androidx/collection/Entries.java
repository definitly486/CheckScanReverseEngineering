package androidx.collection;

import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.hn1;
import defpackage.j59;
import defpackage.ly1;
import defpackage.re4;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class Entries<K, V> implements Set<Map.Entry<? extends K, ? extends V>>, re4 {
    private final ScatterMap<K, V> parent;

    /* JADX INFO: renamed from: androidx.collection.Entries$iterator$1, reason: invalid class name */
    @bd2(c = "androidx.collection.Entries$iterator$1", f = "ScatterMap.kt", l = {1414}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends f57 implements bm3<bp7<? super Map.Entry<? extends K, ? extends V>>, e02<? super j59>, Object> {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ Entries<K, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Entries<K, V> entries, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = entries;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(bp7<? super Map.Entry<? extends K, ? extends V>> bp7Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0056  */
        /* JADX WARN: Code duplicated, block: B:25:0x00b5  */
        /* JADX WARN: Code duplicated, block: B:27:0x00b8  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0056 -> B:14:0x0067). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0070 -> B:20:0x00a5). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00a2 -> B:21:0x00a7). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00b5 -> B:26:0x00b6). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
            /*
                r20 = this;
                r0 = r20
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.label
                r4 = 8
                r5 = 1
                if (r2 == 0) goto L2f
                if (r2 != r5) goto L28
                int r2 = r0.I$3
                int r6 = r0.I$2
                long r7 = r0.J$0
                int r9 = r0.I$1
                int r10 = r0.I$0
                java.lang.Object r11 = r0.L$2
                long[] r11 = (long[]) r11
                java.lang.Object r12 = r0.L$1
                androidx.collection.Entries r12 = (androidx.collection.Entries) r12
                java.lang.Object r13 = r0.L$0
                bp7 r13 = (defpackage.bp7) r13
                defpackage.r57.b(r21)
                goto La5
            L28:
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r0)
                r0 = 0
                return r0
            L2f:
                defpackage.r57.b(r21)
                java.lang.Object r2 = r0.L$0
                bp7 r2 = (defpackage.bp7) r2
                androidx.collection.Entries<K, V> r6 = r0.this$0
                androidx.collection.ScatterMap r6 = androidx.collection.Entries.access$getParent$p(r6)
                androidx.collection.Entries<K, V> r7 = r0.this$0
                long[] r6 = r6.metadata
                int r8 = r6.length
                int r8 = r8 + (-2)
                if (r8 < 0) goto Lbc
                r9 = 0
            L46:
                r10 = r6[r9]
                long r12 = ~r10
                r14 = 7
                long r12 = r12 << r14
                long r12 = r12 & r10
                r14 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
                long r12 = r12 & r14
                int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
                if (r12 == 0) goto Lb5
                int r12 = r9 - r8
                int r12 = ~r12
                int r12 = r12 >>> 31
                int r12 = 8 - r12
                r13 = r2
                r2 = 0
                r18 = r10
                r11 = r6
                r10 = r8
                r6 = r12
                r12 = r7
                r7 = r18
            L67:
                if (r2 >= r6) goto Lad
                r14 = 255(0xff, double:1.26E-321)
                long r14 = r14 & r7
                r16 = 128(0x80, double:6.32E-322)
                int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
                if (r14 >= 0) goto La5
                int r14 = r9 << 3
                int r14 = r14 + r2
                androidx.collection.MapEntry r15 = new androidx.collection.MapEntry
                androidx.collection.ScatterMap r3 = androidx.collection.Entries.access$getParent$p(r12)
                java.lang.Object[] r3 = r3.keys
                r3 = r3[r14]
                r17 = r4
                androidx.collection.ScatterMap r4 = androidx.collection.Entries.access$getParent$p(r12)
                java.lang.Object[] r4 = r4.values
                r4 = r4[r14]
                r15.<init>(r3, r4)
                r0.L$0 = r13
                r0.L$1 = r12
                r0.L$2 = r11
                r0.I$0 = r10
                r0.I$1 = r9
                r0.J$0 = r7
                r0.I$2 = r6
                r0.I$3 = r2
                r0.label = r5
                a32 r3 = r13.a(r0, r15)
                if (r3 != r1) goto La7
                return r1
            La5:
                r17 = r4
            La7:
                long r7 = r7 >> r17
                int r2 = r2 + r5
                r4 = r17
                goto L67
            Lad:
                r3 = r4
                if (r6 != r3) goto Lbc
                r8 = r10
                r6 = r11
                r7 = r12
                r2 = r13
                goto Lb6
            Lb5:
                r3 = r4
            Lb6:
                if (r9 == r8) goto Lbc
                int r9 = r9 + 1
                r4 = r3
                goto L46
            Lbc:
                j59 r0 = defpackage.j59.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.collection.Entries.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public Entries(ScatterMap<K, V> scatterMap) {
        scatterMap.getClass();
        this.parent = scatterMap;
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean contains(Map.Entry<? extends K, ? extends V> entry) {
        entry.getClass();
        return aa4.e(this.parent.get(entry.getKey()), entry.getValue());
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        collection.getClass();
        Collection<? extends Object> collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!aa4.e(this.parent.get((K) entry.getKey()), entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    public int getSize() {
        return this.parent._size;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.parent.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return ly1.d(new AnonymousClass1(this, null));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        return (T[]) hn1.d(this, tArr);
    }

    public boolean add(Map.Entry<? extends K, ? extends V> entry) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return hn1.c(this);
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((Map.Entry) obj);
        }
        return false;
    }
}
