package yads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes6.dex */
public class v extends q implements SortedSet {
    public final /* synthetic */ z d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(z zVar, SortedMap sortedMap) {
        super(zVar, sortedMap);
        this.d = zVar;
    }

    public SortedMap a() {
        return (SortedMap) this.b;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return a().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return a().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new v(this.d, a().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return a().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new v(this.d, a().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new v(this.d, a().tailMap(obj));
    }
}
