package com.google.android.gms.internal.measurement;

import android.net.Uri;
import defpackage.fdc;
import defpackage.gdc;
import defpackage.hdc;
import defpackage.ua4;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrs {
    public final zzsx a;
    public final com.google.common.collect.j b;
    public final ArrayList c;
    public final Uri d;
    public final Uri e;

    public zzrs(hdc hdcVar) {
        this.a = hdcVar.a;
        this.b = hdcVar.b;
        this.c = hdcVar.c;
        this.d = hdcVar.d;
        this.e = hdcVar.e;
    }

    public final zzsx zza() {
        return this.a;
    }

    public final Uri zzb() {
        return this.e;
    }

    public final List zzc(InputStream inputStream) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(inputStream);
        ArrayList arrayList2 = this.c;
        if (!arrayList2.isEmpty()) {
            int i = fdc.c;
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                zzsz zzszVarZza = ((zztb) it.next()).zza();
                if (zzszVarZza != null) {
                    arrayList3.add(zzszVarZza);
                }
            }
            fdc fdcVar = !arrayList3.isEmpty() ? new fdc(inputStream, arrayList3) : null;
            if (fdcVar != null) {
                arrayList.add(fdcVar);
            }
        }
        Iterator<E> it2 = this.b.iterator();
        while (it2.hasNext()) {
            arrayList.add(((zztc) it2.next()).zzb(this.d, (InputStream) ua4.a(arrayList)));
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    public final List zzd(OutputStream outputStream) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(outputStream);
        ArrayList arrayList2 = this.c;
        if (!arrayList2.isEmpty()) {
            int i = gdc.c;
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                zzta zztaVarZzb = ((zztb) it.next()).zzb();
                if (zztaVarZzb != null) {
                    arrayList3.add(zztaVarZzb);
                }
            }
            gdc gdcVar = !arrayList3.isEmpty() ? new gdc(outputStream, arrayList3) : null;
            if (gdcVar != null) {
                arrayList.add(gdcVar);
            }
        }
        Iterator<E> it2 = this.b.iterator();
        while (it2.hasNext()) {
            arrayList.add(((zztc) it2.next()).zzc(this.d, (OutputStream) ua4.a(arrayList)));
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    public final boolean zze() {
        return !this.b.isEmpty();
    }
}
