package defpackage;

import com.google.android.gms.internal.play_billing.zzgg;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class nrb extends AbstractMap {
    public static final /* synthetic */ int h = 0;
    public Object[] b;
    public int c;
    public Map d;
    public boolean e;
    public volatile frb f;
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
    public final Object put(zzgg zzggVar, Object obj) {
        j();
        int iE = e(zzggVar);
        if (iE >= 0) {
            return ((uqb) this.b[iE]).setValue(obj);
        }
        j();
        Object[] objArr = this.b;
        if (objArr == null) {
            objArr = new Object[16];
            this.b = objArr;
        }
        int i = -(iE + 1);
        if (i >= 16) {
            return h().put(zzggVar, obj);
        }
        if (this.c == 16) {
            uqb uqbVar = (uqb) objArr[15];
            this.c = 15;
            h().put(uqbVar.b, uqbVar.c);
        }
        Object[] objArr2 = this.b;
        int length = objArr2.length;
        System.arraycopy(objArr2, i, objArr2, i + 1, 15 - i);
        this.b[i] = new uqb(this, zzggVar, obj);
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
        zzgg zzggVar = (zzgg) obj;
        return e(zzggVar) >= 0 || this.d.containsKey(zzggVar);
    }

    public final uqb d(int i) {
        if (i < this.c) {
            return (uqb) this.b[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public final int e(zzgg zzggVar) {
        int i = this.c;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int iCompareTo = zzggVar.compareTo(((uqb) this.b[i2]).b);
            if (iCompareTo > 0) {
                return -(i + 1);
            }
            if (iCompareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int iCompareTo2 = zzggVar.compareTo(((uqb) this.b[i4]).b);
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
            this.f = new frb(this);
        }
        return this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nrb)) {
            return super.equals(obj);
        }
        nrb nrbVar = (nrb) obj;
        int size = size();
        if (size == nrbVar.size()) {
            int i = this.c;
            if (i != nrbVar.c) {
                return entrySet().equals(nrbVar.entrySet());
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (d(i2).equals(nrbVar.d(i2))) {
                }
            }
            if (i != size) {
                return this.d.equals(nrbVar.d);
            }
            return true;
        }
        return false;
    }

    public final Object g(int i) {
        j();
        Object[] objArr = this.b;
        Object obj = ((uqb) objArr[i]).c;
        System.arraycopy(objArr, i + 1, objArr, i, (this.c - i) - 1);
        this.c--;
        if (!this.d.isEmpty()) {
            Iterator it = h().entrySet().iterator();
            Object[] objArr2 = this.b;
            int i2 = this.c;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i2] = new uqb(this, (zzgg) entry.getKey(), entry.getValue());
            this.c++;
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        zzgg zzggVar = (zzgg) obj;
        int iE = e(zzggVar);
        return iE >= 0 ? ((uqb) this.b[iE]).c : this.d.get(zzggVar);
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
        zzgg zzggVar = (zzgg) obj;
        int iE = e(zzggVar);
        if (iE >= 0) {
            return g(iE);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(zzggVar);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.c;
    }
}
