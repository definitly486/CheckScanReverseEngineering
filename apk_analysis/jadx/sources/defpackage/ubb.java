package defpackage;

import com.google.android.gms.internal.location.zzeo;
import com.google.android.gms.internal.location.zzeu;
import com.google.android.gms.internal.location.zzex;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class ubb extends zzex {
    public final int b;
    public int c;
    public final zzeu d;

    public ubb(zzeu zzeuVar, int i) {
        int size = zzeuVar.size();
        zzeo.zzc(i, size, FirebaseAnalytics.Param.INDEX);
        this.b = size;
        this.c = i;
        this.d = zzeuVar;
    }

    public final Object a(int i) {
        return this.d.get(i);
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.c < this.b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.c > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            qz0.e();
            return null;
        }
        int i = this.c;
        this.c = i + 1;
        return a(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.c;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            qz0.e();
            return null;
        }
        int i = this.c - 1;
        this.c = i;
        return a(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.c - 1;
    }
}
