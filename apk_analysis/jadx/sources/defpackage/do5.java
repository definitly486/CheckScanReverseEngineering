package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;
import java.util.stream.Collector;
import java.util.stream.Stream;
import org.jsoup.nodes.h;
import org.jsoup.nodes.n;

/* JADX INFO: loaded from: classes5.dex */
public class do5<T extends n> extends ArrayList<T> {
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public T b(int i) {
        T t = (T) super.remove(i);
        h hVar = t.b;
        if (hVar != null) {
            hVar.C(t);
        }
        return t;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        for (n nVar : (dw2) this) {
            h hVar = nVar.b;
            if (hVar != null) {
                hVar.C(nVar);
            }
        }
        super.clear();
    }

    public T d(int i, T t) {
        yb9.e(t);
        T t2 = (T) super.set(i, t);
        t2.getClass();
        h hVar = t2.b;
        if (hVar == null) {
            hVar = t.b;
            t2.b = hVar;
        }
        yb9.e(hVar);
        h hVar2 = t2.b;
        hVar2.getClass();
        yb9.b(t2.b == hVar2);
        if (t2 == t) {
            return t2;
        }
        h hVar3 = t.b;
        if (hVar3 != null) {
            hVar3.C(t);
        }
        int iD = t2.D();
        ((ArrayList) hVar2.p()).set(iD, t);
        t.b = hVar2;
        t.c = iD;
        t2.b = null;
        hVar2.f.i();
        return t2;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = super.indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        b(iIndexOf);
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.ArrayList, java.util.Collection
    public final boolean removeIf(Predicate<? super T> predicate) {
        Iterator<T> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.ArrayList, java.util.List
    public final void replaceAll(UnaryOperator<T> unaryOperator) {
        for (int i = 0; i < size(); i++) {
            d(i, (n) unaryOperator.apply(get(i)));
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<?> collection) {
        Iterator<T> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        Stream<R> map = stream().map(new s45(1));
        String[] strArr = ja8.a;
        final String str = "\n";
        return (String) map.collect(Collector.of(new Supplier() { // from class: ga8
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ja8.a(str);
            }
        }, new ha8(), new ia8(), new b45(1), new Collector.Characteristics[0]));
    }
}
