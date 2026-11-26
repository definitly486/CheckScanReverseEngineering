package com.google.android.gms.internal.auth;

import defpackage.cjb;
import defpackage.h7b;
import defpackage.ljb;
import defpackage.tlb;
import defpackage.yab;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements cjb {
    public final zzfx a;
    public final tlb b;
    public final yab c;

    public d(tlb tlbVar, yab yabVar, zzfx zzfxVar) {
        this.b = tlbVar;
        this.c = yabVar;
        this.a = zzfxVar;
    }

    @Override // defpackage.cjb
    public final int a(zzev zzevVar) {
        return this.b.b(zzevVar).hashCode();
    }

    @Override // defpackage.cjb
    public final boolean b(zzev zzevVar, zzev zzevVar2) {
        tlb tlbVar = this.b;
        return tlbVar.b(zzevVar).equals(tlbVar.b(zzevVar2));
    }

    @Override // defpackage.cjb
    public final void c(Object obj, Object obj2) {
        Class cls = ljb.a;
        tlb tlbVar = this.b;
        tlbVar.f(obj, tlbVar.c(tlbVar.b(obj), tlbVar.b(obj2)));
    }

    @Override // defpackage.cjb
    public final boolean d(Object obj) {
        this.c.a(obj);
        throw null;
    }

    @Override // defpackage.cjb
    public final void e(Object obj, byte[] bArr, int i, int i2, h7b h7bVar) {
        zzev zzevVar = (zzev) obj;
        if (zzevVar.zzc == zzha.zza()) {
            zzevVar.zzc = zzha.a();
        }
        throw null;
    }

    @Override // defpackage.cjb
    public final Object zzd() {
        zzfx zzfxVar = this.a;
        return zzfxVar instanceof zzev ? ((zzev) zzfxVar).b() : ((zzet) ((zzev) zzfxVar).h(5)).zzd();
    }

    @Override // defpackage.cjb
    public final void zze(Object obj) {
        this.b.e(obj);
        this.c.b(obj);
        throw null;
    }
}
