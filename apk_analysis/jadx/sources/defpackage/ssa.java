package defpackage;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class ssa extends AbstractMap {
    public Object[] b;
    public int c;
    public Map d;
    public boolean e;
    public volatile rsa f;
    public Map g;

    public void a() {
        if (this.e) {
            return;
        }
        this.d = this.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.d);
        this.g = this.g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.g);
        this.e = true;
    }

    public final psa b(int i) {
        if (i < this.c) {
            return (psa) this.b[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public final Set c() {
        return this.d.isEmpty() ? Collections.EMPTY_SET : this.d.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        h();
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
        return g(comparable) >= 0 || this.d.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        h();
        int iG = g(comparable);
        if (iG >= 0) {
            return ((psa) this.b[iG]).setValue(obj);
        }
        h();
        Object[] objArr = this.b;
        if (objArr == null) {
            objArr = new Object[16];
            this.b = objArr;
        }
        int i = -(iG + 1);
        if (i >= 16) {
            return j().put(comparable, obj);
        }
        if (this.c == 16) {
            psa psaVar = (psa) objArr[15];
            this.c = 15;
            j().put(psaVar.b, psaVar.c);
        }
        Object[] objArr2 = this.b;
        int length = objArr2.length;
        System.arraycopy(objArr2, i, objArr2, i + 1, 15 - i);
        this.b[i] = new psa(this, comparable, obj);
        this.c++;
        return null;
    }

    public final Object e(int i) {
        h();
        Object[] objArr = this.b;
        Object obj = ((psa) objArr[i]).c;
        System.arraycopy(objArr, i + 1, objArr, i, (this.c - i) - 1);
        this.c--;
        if (!this.d.isEmpty()) {
            Iterator it = j().entrySet().iterator();
            Object[] objArr2 = this.b;
            int i2 = this.c;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i2] = new psa(this, (Comparable) entry.getKey(), entry.getValue());
            this.c++;
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f == null) {
            this.f = new rsa(this);
        }
        return this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ssa)) {
            return super.equals(obj);
        }
        ssa ssaVar = (ssa) obj;
        int size = size();
        if (size == ssaVar.size()) {
            int i = this.c;
            if (i != ssaVar.c) {
                return entrySet().equals(ssaVar.entrySet());
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (b(i2).equals(ssaVar.b(i2))) {
                }
            }
            if (i != size) {
                return this.d.equals(ssaVar.d);
            }
            return true;
        }
        return false;
    }

    public final int g(Comparable comparable) {
        int i = this.c;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int iCompareTo = comparable.compareTo(((psa) this.b[i2]).b);
            if (iCompareTo > 0) {
                return -(i + 1);
            }
            if (iCompareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int iCompareTo2 = comparable.compareTo(((psa) this.b[i4]).b);
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
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iG = g(comparable);
        return iG >= 0 ? ((psa) this.b[iG]).c : this.d.get(comparable);
    }

    public final void h() {
        if (this.e) {
            ud.d();
        }
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

    public final SortedMap j() {
        h();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        h();
        Comparable comparable = (Comparable) obj;
        int iG = g(comparable);
        if (iG >= 0) {
            return e(iG);
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
