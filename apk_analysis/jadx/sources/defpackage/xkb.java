package defpackage;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class xkb extends AbstractMap {
    public static final /* synthetic */ int h = 0;
    public final int b;
    public List c = Collections.EMPTY_LIST;
    public Map d;
    public boolean e;
    public volatile rkb f;
    public Map g;

    public /* synthetic */ xkb(int i) {
        this.b = i;
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
    }

    public void a() {
        if (this.e) {
            return;
        }
        this.d = this.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.d);
        this.g = this.g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.g);
        this.e = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        g();
        int iC = c(comparable);
        if (iC >= 0) {
            return ((ekb) this.c.get(iC)).setValue(obj);
        }
        g();
        boolean zIsEmpty = this.c.isEmpty();
        int i = this.b;
        if (zIsEmpty && !(this.c instanceof ArrayList)) {
            this.c = new ArrayList(i);
        }
        int i2 = -(iC + 1);
        if (i2 >= i) {
            return e().put(comparable, obj);
        }
        if (this.c.size() == i) {
            ekb ekbVar = (ekb) this.c.remove(i - 1);
            e().put(ekbVar.b, ekbVar.c);
        }
        this.c.add(i2, new ekb(this, comparable, obj));
        return null;
    }

    public final int c(Comparable comparable) {
        int size = this.c.size();
        int i = size - 1;
        int i2 = 0;
        if (i >= 0) {
            int iCompareTo = comparable.compareTo(((ekb) this.c.get(i)).b);
            if (iCompareTo > 0) {
                return -(size + 1);
            }
            if (iCompareTo == 0) {
                return i;
            }
        }
        while (i2 <= i) {
            int i3 = (i2 + i) / 2;
            int iCompareTo2 = comparable.compareTo(((ekb) this.c.get(i3)).b);
            if (iCompareTo2 < 0) {
                i = i3 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i3;
                }
                i2 = i3 + 1;
            }
        }
        return -(i2 + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (!this.c.isEmpty()) {
            this.c.clear();
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return c(comparable) >= 0 || this.d.containsKey(comparable);
    }

    public final Object d(int i) {
        g();
        Object obj = ((ekb) this.c.remove(i)).c;
        if (!this.d.isEmpty()) {
            Iterator it = e().entrySet().iterator();
            List list = this.c;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new ekb(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    public final SortedMap e() {
        g();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f == null) {
            this.f = new rkb(this);
        }
        return this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xkb)) {
            return super.equals(obj);
        }
        xkb xkbVar = (xkb) obj;
        int size = size();
        if (size == xkbVar.size()) {
            int size2 = this.c.size();
            if (size2 != xkbVar.c.size()) {
                return entrySet().equals(xkbVar.entrySet());
            }
            for (int i = 0; i < size2; i++) {
                if (((Map.Entry) this.c.get(i)).equals((Map.Entry) xkbVar.c.get(i))) {
                }
            }
            if (size2 != size) {
                return this.d.equals(xkbVar.d);
            }
            return true;
        }
        return false;
    }

    public final void g() {
        if (this.e) {
            ud.d();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iC = c(comparable);
        return iC >= 0 ? ((ekb) this.c.get(iC)).c : this.d.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.c.size();
        int iHashCode = 0;
        for (int i = 0; i < size; i++) {
            iHashCode += ((ekb) this.c.get(i)).hashCode();
        }
        return this.d.size() > 0 ? this.d.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int iC = c(comparable);
        if (iC >= 0) {
            return d(iC);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.c.size();
    }
}
