package com.google.android.gms.internal.measurement;

import defpackage.v9c;
import defpackage.x9c;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes4.dex */
public final class zzol implements zzoh {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final ConcurrentHashMap b;
    public final ConcurrentHashMap c;

    public zzol() {
        new ConcurrentHashMap();
        this.b = new ConcurrentHashMap();
        new ConcurrentHashMap();
        this.c = new ConcurrentHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:42:0x002d A[EDGE_INSN: B:42:0x002d->B:40:0x002d BREAK  A[LOOP:1: B:12:0x004d->B:45:?], SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzoh
    public final void zza(zzacr zzacrVar, Set set, String str) {
        x9c[] x9cVarArr;
        x9c[] x9cVarArr2;
        if (!set.isEmpty() && !this.a.getAndSet(true)) {
            zzbu.zza().zzb(new v9c());
        }
        final byte[] bArrZzm = zzacrVar.zzm();
        this.b.compute(str, new BiFunction() { // from class: s9c
            @Override // java.util.function.BiFunction
            public final /* synthetic */ Object apply(Object obj, Object obj2) {
                byte[] bArr = (byte[]) obj2;
                byte[] bArr2 = bArrZzm;
                return Arrays.equals(bArr, bArr2) ? bArr : bArr2;
            }
        });
        Iterator it = set.iterator();
        while (it.hasNext()) {
            AtomicReference atomicReference = (AtomicReference) this.c.putIfAbsent((String) it.next(), new AtomicReference(new x9c(str, bArrZzm)));
            if (atomicReference != null) {
                while (true) {
                    Object obj = atomicReference.get();
                    if (obj instanceof x9c) {
                        x9c x9cVar = (x9c) obj;
                        String str2 = x9cVar.b;
                        if (str.equals(str2)) {
                            x9cVar.a(bArrZzm);
                            break;
                        }
                        x9c x9cVar2 = new x9c(str, bArrZzm);
                        x9cVarArr2 = str.compareTo(str2) < 0 ? new x9c[]{x9cVar2, x9cVar} : new x9c[]{x9cVar, x9cVar2};
                        do {
                            if (atomicReference.compareAndSet(obj, x9cVarArr2)) {
                                break;
                            }
                        } while (atomicReference.get() == obj);
                    } else {
                        x9c[] x9cVarArr3 = (x9c[]) obj;
                        int iBinarySearch = Arrays.binarySearch(x9cVarArr3, str);
                        if (iBinarySearch >= 0) {
                            x9cVarArr3[iBinarySearch].a(bArrZzm);
                            break;
                        }
                        int i = ~iBinarySearch;
                        int length = x9cVarArr3.length;
                        int i2 = length + 1;
                        int i3 = length - i;
                        if (i3 == 0) {
                            x9cVarArr = (x9c[]) Arrays.copyOf(x9cVarArr3, i2);
                        } else {
                            x9c[] x9cVarArr4 = new x9c[i2];
                            System.arraycopy(x9cVarArr3, 0, x9cVarArr4, 0, i);
                            System.arraycopy(x9cVarArr3, i, x9cVarArr4, i + 1, i3);
                            x9cVarArr = x9cVarArr4;
                        }
                        x9cVarArr[i] = new x9c(str, bArrZzm);
                        x9cVarArr2 = x9cVarArr;
                        do {
                            if (atomicReference.compareAndSet(obj, x9cVarArr2)) {
                                break;
                                break;
                            }
                        } while (atomicReference.get() == obj);
                    }
                }
            }
        }
    }
}
