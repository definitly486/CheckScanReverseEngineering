package defpackage;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class yjb extends AbstractMap {
    public static final /* synthetic */ int h = 0;
    public Object[] b;
    public int c;
    public Map d;
    public boolean e;
    public volatile qjb f;
    public Map g;

    public void a() {
        if (this.e) {
            return;
        }
        this.d = this.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.d);
        this.g = this.g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.g);
        this.e = true;
    }

    public final Set b() {
        return this.d.isEmpty() ? Collections.EMPTY_SET : this.d.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        j();
        int iE = e(comparable);
        if (iE >= 0) {
            return ((ajb) this.b[iE]).setValue(obj);
        }
        j();
        Object[] objArr = this.b;
        if (objArr == null) {
            objArr = new Object[16];
            this.b = objArr;
        }
        int i = -(iE + 1);
        if (i >= 16) {
            return h().put(comparable, obj);
        }
        if (this.c == 16) {
            ajb ajbVar = (ajb) objArr[15];
            this.c = 15;
            h().put(ajbVar.b, ajbVar.c);
        }
        Object[] objArr2 = this.b;
        int length = objArr2.length;
        System.arraycopy(objArr2, i, objArr2, i + 1, 15 - i);
        this.b[i] = new ajb(this, comparable, obj);
        this.c++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        j();
        if (this.c != 0) {
            this.b = null;
            this.c = 0;
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return e(comparable) >= 0 || this.d.containsKey(comparable);
    }

    public final ajb d(int i) {
        if (i < this.c) {
            return (ajb) this.b[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public final int e(Comparable comparable) {
        int i = this.c;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int iCompareTo = comparable.compareTo(((ajb) this.b[i2]).b);
            if (iCompareTo > 0) {
                return -(i + 1);
            }
            if (iCompareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int iCompareTo2 = comparable.compareTo(((ajb) this.b[i4]).b);
            if (iCompareTo2 < 0) {
                i2 = i4 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i4;
                }
                i3 = i4 + 1;
            }
        }
        return -(i3 + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f == null) {
            this.f = new qjb(this);
        }
        return this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yjb)) {
            return super.equals(obj);
        }
        yjb yjbVar = (yjb) obj;
        int size = size();
        if (size == yjbVar.size()) {
            int i = this.c;
            if (i != yjbVar.c) {
                return entrySet().equals(yjbVar.entrySet());
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (d(i2).equals(yjbVar.d(i2))) {
                }
            }
            if (i != size) {
                return this.d.equals(yjbVar.d);
            }
            return true;
        }
        return false;
    }

    public final Object g(int i) {
        j();
        Object[] objArr = this.b;
        Object obj = ((ajb) objArr[i]).c;
        System.arraycopy(objArr, i + 1, objArr, i, (this.c - i) - 1);
        this.c--;
        if (!this.d.isEmpty()) {
            Iterator it = h().entrySet().iterator();
            Object[] objArr2 = this.b;
            int i2 = this.c;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i2] = new ajb(this, (Comparable) entry.getKey(), entry.getValue());
            this.c++;
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iE = e(comparable);
        return iE >= 0 ? ((ajb) this.b[iE]).c : this.d.get(comparable);
    }

    public final SortedMap h() {
        j();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = this.c;
        int iHashCode = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode += this.b[i2].hashCode();
        }
        return this.d.size() > 0 ? this.d.hashCode() + iHashCode : iHashCode;
    }

    public final void j() {
        if (this.e) {
            ud.d();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        j();
        Comparable comparable = (Comparable) obj;
        int iE = e(comparable);
        if (iE >= 0) {
            return g(iE);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.c;
    }
}
