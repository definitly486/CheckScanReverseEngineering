package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.d;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class whb implements Iterator {
    public final ArrayDeque b;
    public u3b c;

    public whb(zzdf zzdfVar) {
        if (!(zzdfVar instanceof d)) {
            this.b = null;
            this.c = (u3b) zzdfVar;
            return;
        }
        d dVar = (d) zzdfVar;
        ArrayDeque arrayDeque = new ArrayDeque(dVar.g);
        this.b = arrayDeque;
        arrayDeque.push(dVar);
        zzdf zzdfVar2 = dVar.d;
        while (zzdfVar2 instanceof d) {
            d dVar2 = (d) zzdfVar2;
            this.b.push(dVar2);
            zzdfVar2 = dVar2.d;
        }
        this.c = (u3b) zzdfVar2;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final u3b next() {
        u3b u3bVar;
        u3b u3bVar2 = this.c;
        u3b u3bVar3 = null;
        if (u3bVar2 == null) {
            qz0.e();
            return null;
        }
        do {
            ArrayDeque arrayDeque = this.b;
            if (arrayDeque != null && !arrayDeque.isEmpty()) {
                zzdf zzdfVar = ((d) arrayDeque.pop()).e;
                while (zzdfVar instanceof d) {
                    d dVar = (d) zzdfVar;
                    arrayDeque.push(dVar);
                    zzdfVar = dVar.d;
                }
                u3bVar = (u3b) zzdfVar;
            }
            this.c = u3bVar3;
            return u3bVar2;
        } while (u3bVar.zzd() == 0);
        u3bVar3 = u3bVar;
        this.c = u3bVar3;
        return u3bVar2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
