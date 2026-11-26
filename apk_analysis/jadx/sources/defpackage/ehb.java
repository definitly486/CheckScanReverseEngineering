package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.d;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import java.util.ArrayDeque;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class ehb {
    public final ArrayDeque a = new ArrayDeque();

    public final void a(zzdf zzdfVar) {
        if (!zzdfVar.g()) {
            if (!(zzdfVar instanceof d)) {
                fg.c("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzdfVar.getClass())));
                return;
            }
            d dVar = (d) zzdfVar;
            a(dVar.d);
            a(dVar.e);
            return;
        }
        int iBinarySearch = Arrays.binarySearch(d.h, zzdfVar.zzd());
        if (iBinarySearch < 0) {
            iBinarySearch = (-(iBinarySearch + 1)) - 1;
        }
        int iP = d.p(iBinarySearch + 1);
        ArrayDeque arrayDeque = this.a;
        if (arrayDeque.isEmpty() || ((zzdf) arrayDeque.peek()).zzd() >= iP) {
            arrayDeque.push(zzdfVar);
            return;
        }
        int iP2 = d.p(iBinarySearch);
        zzdf dVar2 = (zzdf) arrayDeque.pop();
        while (!arrayDeque.isEmpty() && ((zzdf) arrayDeque.peek()).zzd() < iP2) {
            dVar2 = new d((zzdf) arrayDeque.pop(), dVar2);
        }
        d dVar3 = new d(dVar2, zzdfVar);
        while (!arrayDeque.isEmpty()) {
            int iBinarySearch2 = Arrays.binarySearch(d.h, dVar3.c);
            if (iBinarySearch2 < 0) {
                iBinarySearch2 = (-(iBinarySearch2 + 1)) - 1;
            }
            if (((zzdf) arrayDeque.peek()).zzd() >= d.p(iBinarySearch2 + 1)) {
                break;
            } else {
                dVar3 = new d((zzdf) arrayDeque.pop(), dVar3);
            }
        }
        arrayDeque.push(dVar3);
    }
}
