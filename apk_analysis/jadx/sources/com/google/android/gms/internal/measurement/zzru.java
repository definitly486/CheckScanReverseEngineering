package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.collect.w;
import defpackage.bj;
import defpackage.dg;
import defpackage.fg;
import defpackage.hdc;
import defpackage.j68;
import defpackage.k68;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzru {
    public final HashMap a;
    public final HashMap b;
    public final ArrayList c;

    public zzru(List list) {
        List<zztc> list2 = Collections.EMPTY_LIST;
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzsx zzsxVar = (zzsx) it.next();
            if (TextUtils.isEmpty(zzsxVar.zzc())) {
                Log.w("MobStore.FileStorage", "Cannot register backend, name empty");
            } else {
                zzsx zzsxVar2 = (zzsx) this.a.put(zzsxVar.zzc(), zzsxVar);
                if (zzsxVar2 != null) {
                    String canonicalName = zzsxVar2.getClass().getCanonicalName();
                    String canonicalName2 = zzsxVar.getClass().getCanonicalName();
                    fg.c(dg.c(new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(canonicalName2).length()), "Cannot override Backend ", canonicalName, " with ", canonicalName2));
                    throw null;
                }
            }
        }
        for (zztc zztcVar : list2) {
            if (TextUtils.isEmpty(zztcVar.zza())) {
                Log.w("MobStore.FileStorage", "Cannot register transform, name empty");
            } else {
                zztc zztcVar2 = (zztc) this.b.put(zztcVar.zza(), zztcVar);
                if (zztcVar2 != null) {
                    String canonicalName3 = zztcVar2.getClass().getCanonicalName();
                    String canonicalName4 = zztcVar.getClass().getCanonicalName();
                    fg.c(dg.c(new StringBuilder(String.valueOf(canonicalName3).length() + 35 + String.valueOf(canonicalName4).length()), "Cannot to override Transform ", canonicalName3, " with ", canonicalName4));
                    throw null;
                }
            }
        }
        this.c.addAll(list2);
    }

    public final zzrs a(Uri uri) throws zzsk {
        List listN;
        com.google.common.collect.j.b bVar = com.google.common.collect.j.c;
        com.google.common.collect.j.a aVar = new com.google.common.collect.j.a();
        com.google.common.collect.j.a aVar2 = new com.google.common.collect.j.a();
        String encodedFragment = uri.getEncodedFragment();
        if (TextUtils.isEmpty(encodedFragment) || !encodedFragment.startsWith("transform=")) {
            listN = w.f;
        } else {
            String strSubstring = encodedFragment.substring(10);
            k68 k68VarA = k68.a("+".charAt(0));
            listN = com.google.common.collect.j.n(new j68(new k68(k68VarA.c, true, k68VarA.a, Integer.MAX_VALUE), strSubstring));
        }
        int size = listN.size();
        for (int i = 0; i < size; i++) {
            aVar2.c(zzsp.zza((String) listN.get(i)));
        }
        w wVarG = aVar2.g();
        int i2 = wVarG.e;
        for (int i3 = 0; i3 < i2; i3++) {
            String str = (String) wVarG.get(i3);
            zztc zztcVar = (zztc) this.b.get(str);
            if (zztcVar == null) {
                String strValueOf = String.valueOf(uri);
                throw new zzsk(dg.c(new StringBuilder(str.length() + 40 + strValueOf.length()), "Requested transform isn't registered: ", str, ": ", strValueOf));
            }
            aVar.c(zztcVar);
        }
        com.google.common.collect.j<E> jVarW = aVar.g().w();
        hdc hdcVar = new hdc();
        String scheme = uri.getScheme();
        zzsx zzsxVar = (zzsx) this.a.get(scheme);
        if (zzsxVar == null) {
            throw new zzsk(bj.c("Requested backend isn't registered: ", scheme));
        }
        hdcVar.a = zzsxVar;
        hdcVar.c = this.c;
        hdcVar.b = jVarW;
        hdcVar.d = uri;
        if (!jVarW.isEmpty()) {
            ArrayList arrayList = new ArrayList(uri.getPathSegments());
            if (!arrayList.isEmpty() && !uri.getPath().endsWith("/")) {
                String str2 = (String) arrayList.get(arrayList.size() - 1);
                ListIterator listIterator = jVarW.listIterator(jVarW.size());
                while (listIterator.hasPrevious()) {
                }
                arrayList.set(arrayList.size() - 1, str2);
                uri = uri.buildUpon().path(TextUtils.join("/", arrayList)).encodedFragment(null).build();
            }
        }
        hdcVar.e = uri;
        return new zzrs(hdcVar);
    }

    public final Object zza(Uri uri, zzrt zzrtVar) {
        return zzrtVar.zza(a(uri));
    }

    public final void zzb(Uri uri) {
        zzrs zzrsVarA = a(uri);
        zzrsVarA.zza().zzk(zzrsVarA.zzb());
    }

    public final boolean zzc(Uri uri) throws zzsk {
        zzrs zzrsVarA = a(uri);
        return zzrsVarA.zza().zze(zzrsVarA.zzb());
    }

    public final void zzd(Uri uri, Uri uri2) {
        zzrs zzrsVarA = a(uri);
        zzrs zzrsVarA2 = a(uri2);
        if (zzrsVarA.zza() != zzrsVarA2.zza()) {
            throw new zzsk("Cannot rename file across backends");
        }
        zzrsVarA.zza().zzl(zzrsVarA.zzb(), zzrsVarA2.zzb());
    }
}
