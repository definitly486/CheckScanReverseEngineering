package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzaca;
import com.google.android.gms.internal.measurement.zzacb;
import defpackage.dh;
import defpackage.jsa;
import defpackage.lsa;
import defpackage.o2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaca<MessageType extends zzacb<MessageType, BuilderType>, BuilderType extends zzaca<MessageType, BuilderType>> implements zzafb {
    public static void b(int i, List list) {
        int size = list.size() - i;
        StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 26);
        sb.append("Element at index ");
        sb.append(size);
        sb.append(" is null.");
        String string = sb.toString();
        int size2 = list.size();
        while (true) {
            size2--;
            if (size2 < i) {
                throw new NullPointerException(string);
            }
            list.remove(size2);
        }
    }

    public static void c(Iterable iterable, List list) {
        iterable.getClass();
        if (iterable instanceof zzaen) {
            List listZza = ((zzaen) iterable).zza();
            zzaen zzaenVar = (zzaen) list;
            int size = list.size();
            for (Object obj : listZza) {
                if (obj == null) {
                    int size2 = zzaenVar.size() - size;
                    StringBuilder sb = new StringBuilder(String.valueOf(size2).length() + 26);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    int size3 = zzaenVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            o2.d(string);
                            return;
                        }
                        zzaenVar.remove(size3);
                    }
                } else if (obj instanceof zzacr) {
                    zzaenVar.zzb();
                } else if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    zzacr.zzj(bArr, 0, bArr.length);
                    zzaenVar.zzb();
                } else {
                    zzaenVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof jsa) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size4 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size4);
            } else if (list instanceof lsa) {
                lsa lsaVar = (lsa) list;
                int i = lsaVar.d + size4;
                int length = lsaVar.c.length;
                if (i > length) {
                    if (length != 0) {
                        while (length < i) {
                            length = dh.c(length, 3, 2, 1, 10);
                        }
                        lsaVar.c = Arrays.copyOf(lsaVar.c, length);
                    } else {
                        lsaVar.c = new Object[Math.max(i, 10)];
                    }
                }
            }
        }
        int size5 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    b(size5, list);
                    throw null;
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size6 = list2.size();
        for (int i2 = 0; i2 < size6; i2++) {
            Object obj3 = list2.get(i2);
            if (obj3 == null) {
                b(size5, list);
                throw null;
            }
            list.add(obj3);
        }
    }

    @Override // 
    public abstract zzaca zzaS();

    public zzaca zzaT(byte[] bArr, int i, int i2) {
        throw null;
    }

    public zzaca zzaU(byte[] bArr, int i, int i2, zzadf zzadfVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzafb
    public final /* synthetic */ zzafb zzaW(byte[] bArr, zzadf zzadfVar) {
        return zzaU(bArr, 0, bArr.length, zzadfVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzafb
    public final /* synthetic */ zzafb zzaX(byte[] bArr) {
        return zzaT(bArr, 0, bArr.length);
    }
}
