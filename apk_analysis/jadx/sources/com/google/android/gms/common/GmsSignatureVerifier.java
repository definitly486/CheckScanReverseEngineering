package com.google.android.gms.common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzah;
import defpackage.ah;
import defpackage.amb;
import defpackage.idb;
import defpackage.u8c;
import defpackage.xpb;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class GmsSignatureVerifier {
    static {
        zzah.zzj();
        zzah.zzj();
        xpb xpbVar = u8c.f;
        zzah zzahVarZzm = zzah.zzm(xpbVar.g(), u8c.d.g(), u8c.b.g());
        Preconditions.checkNotNull(zzahVarZzm);
        zzah zzahVarZzp = zzah.zzp(zzahVarZzm);
        amb ambVar = u8c.e;
        byte[] bArrG = ambVar.g();
        idb idbVar = u8c.c;
        zzah zzahVarZzm2 = zzah.zzm(bArrG, idbVar.g(), u8c.a.g());
        Preconditions.checkNotNull(zzahVarZzm2);
        zzah zzahVarZzp2 = zzah.zzp(zzahVarZzm2);
        if (zzahVarZzp.isEmpty() && zzahVarZzp2.isEmpty()) {
            ah.f("Either orderedTestCerts or orderedProdCerts must have at least one cert");
            return;
        }
        zzah.zzj();
        zzah.zzj();
        zzah zzahVarZzk = zzah.zzk(xpbVar.g());
        Preconditions.checkNotNull(zzahVarZzk);
        zzah zzahVarZzp3 = zzah.zzp(zzahVarZzk);
        zzah zzahVarZzl = zzah.zzl(ambVar.g(), idbVar.g());
        Preconditions.checkNotNull(zzahVarZzl);
        zzah zzahVarZzp4 = zzah.zzp(zzahVarZzl);
        if (zzahVarZzp3.isEmpty() && zzahVarZzp4.isEmpty()) {
            ah.f("Either orderedTestCerts or orderedProdCerts must have at least one cert");
        } else {
            new HashMap();
        }
    }
}
