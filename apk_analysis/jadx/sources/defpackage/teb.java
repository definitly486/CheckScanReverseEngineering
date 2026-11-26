package defpackage;

import com.google.android.gms.internal.auth.zzez;
import com.google.android.gms.internal.auth.zzfe;
import com.google.android.gms.internal.auth.zzff;
import com.google.android.gms.internal.auth.zzhe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class teb extends jfb {
    public static final Class c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    @Override // defpackage.jfb
    public final void a(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) pnb.c(obj, j);
        if (list instanceof zzff) {
            objUnmodifiableList = ((zzff) list).zze();
        } else {
            if (c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof mib) && (list instanceof zzez)) {
                zzez zzezVar = (zzez) list;
                if (zzezVar.zzc()) {
                    zzezVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        pnb.g(j, obj, objUnmodifiableList);
    }

    @Override // defpackage.jfb
    public final void b(long j, Object obj, Object obj2) {
        List list;
        List list2;
        List listZzd;
        List list3 = (List) pnb.c(obj2, j);
        int size = list3.size();
        List list4 = (List) pnb.c(obj, j);
        if (list4.isEmpty()) {
            if (list4 instanceof zzff) {
                listZzd = new zzfe(size);
            } else {
                listZzd = ((list4 instanceof mib) && (list4 instanceof zzez)) ? ((zzez) list4).zzd(size) : new ArrayList(size);
            }
            pnb.g(j, obj, listZzd);
            list2 = listZzd;
        } else {
            if (c.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                pnb.g(j, obj, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzhe) {
                zzfe zzfeVar = new zzfe(list4.size() + size);
                zzfeVar.addAll(zzfeVar.size(), (zzhe) list4);
                pnb.g(j, obj, zzfeVar);
                list = zzfeVar;
            } else if ((list4 instanceof mib) && (list4 instanceof zzez)) {
                zzez zzezVar = (zzez) list4;
                if (!zzezVar.zzc()) {
                    list2 = list4;
                    list2 = list4;
                    list2 = list4;
                    zzez zzezVarZzd = zzezVar.zzd(list4.size() + size);
                    pnb.g(j, obj, zzezVarZzd);
                    list2 = zzezVarZzd;
                }
            }
            list2 = list;
        }
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        pnb.g(j, obj, list3);
    }
}
