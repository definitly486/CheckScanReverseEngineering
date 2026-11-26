package com.google.android.gms.internal.play_billing;

import defpackage.ccc;
import defpackage.ohb;
import defpackage.pdc;
import defpackage.zdc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp {
    public Object a;
    public zdc b;
    public zzv c = zzv.zze();
    public boolean d;

    public final void finalize() {
        zzv zzvVar;
        zdc zdcVar = this.b;
        if (zdcVar != null) {
            pdc pdcVar = zdcVar.c;
            if (!pdcVar.isDone()) {
                if (zzo.g.S(pdcVar, null, new ohb(new ccc("The completer object was garbage collected - this future would otherwise never complete. The tag was: ".concat(String.valueOf(this.a)))))) {
                    zzo.b(pdcVar);
                }
            }
        }
        if (this.d || (zzvVar = this.c) == null) {
            return;
        }
        zzvVar.zzd(null);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001e  */
    public final boolean zzb(Object obj) {
        boolean z = true;
        this.d = true;
        zdc zdcVar = this.b;
        if (zdcVar != null) {
            pdc pdcVar = zdcVar.c;
            pdcVar.getClass();
            if (obj == null) {
                obj = zzo.h;
            }
            if (zzo.g.S(pdcVar, null, obj)) {
                zzo.b(pdcVar);
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (z) {
            this.a = null;
            this.b = null;
            this.c = null;
        }
        return z;
    }
}
