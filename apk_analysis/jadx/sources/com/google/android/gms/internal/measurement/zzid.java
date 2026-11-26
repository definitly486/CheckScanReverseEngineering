package com.google.android.gms.internal.measurement;

import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import defpackage.kra;
import defpackage.lsa;
import defpackage.msa;
import defpackage.xg;
import defpackage.ykb;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzid extends zzadu implements zzafd {
    private static final zzid zzaw;
    private static volatile zzafj zzax;
    private long zzA;
    private int zzB;
    private String zzC;
    private String zzD;
    private boolean zzE;
    private zzaef zzF;
    private String zzG;
    private int zzH;
    private int zzI;
    private int zzJ;
    private String zzK;
    private long zzL;
    private long zzM;
    private String zzN;
    private String zzO;
    private int zzP;
    private String zzQ;
    private zzig zzR;
    private zzaeb zzS;
    private long zzT;
    private long zzU;
    private String zzV;
    private String zzW;
    private int zzX;
    private boolean zzY;
    private String zzZ;
    private boolean zzaa;
    private zzhy zzab;
    private String zzac;
    private zzaef zzad;
    private String zzae;
    private long zzaf;
    private boolean zzag;
    private String zzah;
    private boolean zzai;
    private String zzaj;
    private int zzak;
    private String zzal;
    private zzhe zzam;
    private int zzan;
    private zzha zzao;
    private String zzap;
    private zzis zzaq;
    private long zzar;
    private String zzas;
    private zzho zzat;
    private String zzau;
    private zzaef zzav;
    private int zzb;
    private int zze;
    private int zzf;
    private zzaef zzg;
    private zzaef zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private String zzn;
    private String zzo;
    private String zzp;
    private String zzq;
    private int zzr;
    private String zzs;
    private String zzt;
    private String zzu;
    private long zzv;
    private long zzw;
    private String zzx;
    private boolean zzy;
    private String zzz;

    static {
        zzid zzidVar = new zzid();
        zzaw = zzidVar;
        zzadu.i(zzid.class, zzidVar);
    }

    public zzid() {
        lsa lsaVar = lsa.f;
        this.zzg = lsaVar;
        this.zzh = lsaVar;
        this.zzn = "";
        this.zzo = "";
        this.zzp = "";
        this.zzq = "";
        this.zzs = "";
        this.zzt = "";
        this.zzu = "";
        this.zzx = "";
        this.zzz = "";
        this.zzC = "";
        this.zzD = "";
        this.zzF = lsaVar;
        this.zzG = "";
        this.zzK = "";
        this.zzN = "";
        this.zzO = "";
        this.zzQ = "";
        this.zzS = kra.f;
        this.zzV = "";
        this.zzW = "";
        this.zzZ = "";
        this.zzac = "";
        this.zzad = lsaVar;
        this.zzae = "";
        this.zzah = "";
        this.zzaj = "";
        this.zzal = "";
        this.zzap = "";
        this.zzas = "";
        this.zzau = "";
        this.zzav = lsaVar;
    }

    public static zzic zzaE() {
        return (zzic) zzaw.f();
    }

    public static zzic zzaF(zzid zzidVar) {
        zzadp zzadpVarF = zzaw.f();
        zzadpVarF.zzbe(zzidVar);
        return (zzic) zzadpVarF;
    }

    public final /* synthetic */ void A(long j) {
        this.zzb |= 8;
        this.zzk = j;
    }

    public final /* synthetic */ void A0(String str) {
        str.getClass();
        this.zzb |= 4194304;
        this.zzD = str;
    }

    public final /* synthetic */ void B(long j) {
        this.zzb |= 16;
        this.zzl = j;
    }

    public final /* synthetic */ void B0(boolean z) {
        this.zzb |= 8388608;
        this.zzE = z;
    }

    public final /* synthetic */ void C() {
        this.zzb &= -17;
        this.zzl = 0L;
    }

    public final void C0(Iterable iterable) {
        zzaef zzaefVar = this.zzF;
        if (!zzaefVar.zza()) {
            this.zzF = xg.c(zzaefVar);
        }
        zzaca.c(iterable, this.zzF);
    }

    public final /* synthetic */ void D(long j) {
        this.zzb |= 32;
        this.zzm = j;
    }

    public final void D0() {
        this.zzF = lsa.f;
    }

    public final /* synthetic */ void E() {
        this.zzb &= -33;
        this.zzm = 0L;
    }

    public final /* synthetic */ void E0(String str) {
        str.getClass();
        this.zzb |= 16777216;
        this.zzG = str;
    }

    public final /* synthetic */ void F() {
        this.zzb |= 64;
        this.zzn = "android";
    }

    public final /* synthetic */ void F0(int i) {
        this.zzb |= GroupFlagsKt.HasAuxSlotFlag;
        this.zzH = i;
    }

    public final /* synthetic */ void G(String str) {
        str.getClass();
        this.zzb |= 128;
        this.zzo = str;
    }

    public final /* synthetic */ void G0() {
        this.zzb &= -268435457;
        this.zzK = zzaw.zzK;
    }

    public final /* synthetic */ void H(long j) {
        this.zzb |= 536870912;
        this.zzL = j;
    }

    public final void H0() {
        zzaef zzaefVar = this.zzg;
        if (zzaefVar.zza()) {
            return;
        }
        this.zzg = xg.c(zzaefVar);
    }

    public final /* synthetic */ void I(String str) {
        str.getClass();
        this.zzb |= Integer.MIN_VALUE;
        this.zzN = str;
    }

    public final void I0() {
        zzaef zzaefVar = this.zzh;
        if (zzaefVar.zza()) {
            return;
        }
        this.zzh = xg.c(zzaefVar);
    }

    public final /* synthetic */ void J() {
        this.zzb &= Integer.MAX_VALUE;
        this.zzN = zzaw.zzN;
    }

    public final void J0(Iterable iterable) {
        zzaef zzaefVar = this.zzav;
        if (!zzaefVar.zza()) {
            this.zzav = xg.c(zzaefVar);
        }
        zzaca.c(iterable, this.zzav);
    }

    public final /* synthetic */ void K(int i) {
        this.zze |= 2;
        this.zzP = i;
    }

    public final /* synthetic */ void L(zzig zzigVar) {
        zzigVar.getClass();
        this.zzR = zzigVar;
        this.zze |= 8;
    }

    public final void M(Iterable iterable) {
        zzaeb zzaebVar = this.zzS;
        if (!zzaebVar.zza()) {
            int size = zzaebVar.size();
            this.zzS = zzaebVar.zzg(size + size);
        }
        zzaca.c(iterable, this.zzS);
    }

    public final /* synthetic */ void N(long j) {
        this.zze |= 16;
        this.zzT = j;
    }

    public final /* synthetic */ void O(long j) {
        this.zze |= 32;
        this.zzU = j;
    }

    public final /* synthetic */ void P(String str) {
        this.zze |= 128;
        this.zzW = str;
    }

    public final /* synthetic */ void Q(String str) {
        str.getClass();
        this.zze |= 8192;
        this.zzac = str;
    }

    public final /* synthetic */ void R() {
        this.zze &= -8193;
        this.zzac = zzaw.zzac;
    }

    public final void S(Iterable iterable) {
        zzaef zzaefVar = this.zzad;
        if (!zzaefVar.zza()) {
            this.zzad = xg.c(zzaefVar);
        }
        zzaca.c(iterable, this.zzad);
    }

    public final /* synthetic */ void T(String str) {
        str.getClass();
        this.zze |= 16384;
        this.zzae = str;
    }

    public final /* synthetic */ void U(long j) {
        this.zze |= 32768;
        this.zzaf = j;
    }

    public final /* synthetic */ void V(boolean z) {
        this.zze |= 65536;
        this.zzag = z;
    }

    public final /* synthetic */ void W(String str) {
        this.zze |= 131072;
        this.zzah = str;
    }

    public final /* synthetic */ void X(boolean z) {
        this.zze |= 262144;
        this.zzai = z;
    }

    public final /* synthetic */ void Y(String str) {
        str.getClass();
        this.zze |= 524288;
        this.zzaj = str;
    }

    public final /* synthetic */ void Z(int i) {
        this.zze |= 1048576;
        this.zzak = i;
    }

    public final /* synthetic */ void a0(zzhe zzheVar) {
        zzheVar.getClass();
        this.zzam = zzheVar;
        this.zze |= 4194304;
    }

    public final /* synthetic */ void b0(int i) {
        this.zze |= 8388608;
        this.zzan = i;
    }

    public final /* synthetic */ void c0(zzha zzhaVar) {
        zzhaVar.getClass();
        this.zzao = zzhaVar;
        this.zze |= 16777216;
    }

    public final /* synthetic */ void d0(zzis zzisVar) {
        this.zzaq = zzisVar;
        this.zze |= 67108864;
    }

    public final /* synthetic */ void e0(long j) {
        this.zze |= 134217728;
        this.zzar = j;
    }

    public final /* synthetic */ void f0(zzho zzhoVar) {
        zzhoVar.getClass();
        this.zzat = zzhoVar;
        this.zze |= 536870912;
    }

    public final /* synthetic */ void g0(String str) {
        str.getClass();
        this.zze |= 1073741824;
        this.zzau = str;
    }

    public final /* synthetic */ void h0(String str) {
        str.getClass();
        this.zzb |= 256;
        this.zzp = str;
    }

    public final /* synthetic */ void i0() {
        this.zzb &= -257;
        this.zzp = zzaw.zzp;
    }

    public final /* synthetic */ void j0(String str) {
        str.getClass();
        this.zzb |= 512;
        this.zzq = str;
    }

    public final /* synthetic */ void k0(int i) {
        this.zzb |= 1024;
        this.zzr = i;
    }

    public final /* synthetic */ void l0(String str) {
        str.getClass();
        this.zzb |= 2048;
        this.zzs = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object m(int i) {
        zzafj zzadqVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new msa(zzaw, "\u0004E\u0000\u0002\u0001YE\u0000\u0006\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5᠌(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.Cဂ/Dဇ0Gဈ1Hဇ2Iဈ3Jင4Kဈ5Lဉ6Mင7Oဉ8Pဈ9Qဉ:Rဂ;Sဈ<Vဉ=Xဈ>Y\u001b", new Object[]{"zzb", "zze", "zzf", "zzg", zzhs.class, "zzh", zziu.class, "zzi", "zzj", "zzk", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzl", "zzE", "zzF", zzhg.class, "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", ykb.a, "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau", "zzav", zzfb.class});
        }
        if (i2 == 3) {
            return new zzid();
        }
        if (i2 == 4) {
            return new zzic(zzaw);
        }
        if (i2 == 5) {
            return zzaw;
        }
        if (i2 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzax;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzid.class) {
            try {
                zzadqVar = zzax;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzaw);
                    zzax = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final /* synthetic */ void m0(String str) {
        str.getClass();
        this.zzb |= 4096;
        this.zzt = str;
    }

    public final /* synthetic */ void n() {
        this.zzb |= 1;
        this.zzf = 1;
    }

    public final /* synthetic */ void n0(String str) {
        str.getClass();
        this.zzb |= 8192;
        this.zzu = str;
    }

    public final /* synthetic */ void o(int i, zzhs zzhsVar) {
        zzhsVar.getClass();
        H0();
        this.zzg.set(i, zzhsVar);
    }

    public final /* synthetic */ void o0(long j) {
        this.zzb |= 16384;
        this.zzv = j;
    }

    public final /* synthetic */ void p(zzhs zzhsVar) {
        zzhsVar.getClass();
        H0();
        this.zzg.add(zzhsVar);
    }

    public final /* synthetic */ void p0() {
        this.zzb |= 32768;
        this.zzw = 161000L;
    }

    public final void q(Iterable iterable) {
        H0();
        zzaca.c(iterable, this.zzg);
    }

    public final /* synthetic */ void q0(String str) {
        str.getClass();
        this.zzb |= 65536;
        this.zzx = str;
    }

    public final void r() {
        this.zzg = lsa.f;
    }

    public final /* synthetic */ void r0() {
        this.zzb &= -65537;
        this.zzx = zzaw.zzx;
    }

    public final /* synthetic */ void s(int i) {
        H0();
        this.zzg.remove(i);
    }

    public final /* synthetic */ void s0(boolean z) {
        this.zzb |= 131072;
        this.zzy = z;
    }

    public final /* synthetic */ void t(int i, zziu zziuVar) {
        zziuVar.getClass();
        I0();
        this.zzh.set(i, zziuVar);
    }

    public final /* synthetic */ void t0() {
        this.zzb &= -131073;
        this.zzy = false;
    }

    public final /* synthetic */ void u(zziu zziuVar) {
        zziuVar.getClass();
        I0();
        this.zzh.add(zziuVar);
    }

    public final /* synthetic */ void u0(String str) {
        str.getClass();
        this.zzb |= 262144;
        this.zzz = str;
    }

    public final void v(Iterable iterable) {
        I0();
        zzaca.c(iterable, this.zzh);
    }

    public final /* synthetic */ void v0() {
        this.zzb &= -262145;
        this.zzz = zzaw.zzz;
    }

    public final /* synthetic */ void w(int i) {
        I0();
        this.zzh.remove(i);
    }

    public final /* synthetic */ void w0(long j) {
        this.zzb |= 524288;
        this.zzA = j;
    }

    public final /* synthetic */ void x(long j) {
        this.zzb |= 2;
        this.zzi = j;
    }

    public final /* synthetic */ void x0(int i) {
        this.zzb |= 1048576;
        this.zzB = i;
    }

    public final /* synthetic */ void y() {
        this.zzb &= -3;
        this.zzi = 0L;
    }

    public final /* synthetic */ void y0(String str) {
        this.zzb |= 2097152;
        this.zzC = str;
    }

    public final /* synthetic */ void z(long j) {
        this.zzb |= 4;
        this.zzj = j;
    }

    public final /* synthetic */ void z0() {
        this.zzb &= -2097153;
        this.zzC = zzaw.zzC;
    }

    public final String zzA() {
        return this.zzt;
    }

    public final String zzB() {
        return this.zzu;
    }

    public final boolean zzC() {
        return (this.zzb & 16384) != 0;
    }

    public final long zzD() {
        return this.zzv;
    }

    public final boolean zzE() {
        return (this.zzb & 32768) != 0;
    }

    public final long zzF() {
        return this.zzw;
    }

    public final String zzG() {
        return this.zzx;
    }

    public final boolean zzH() {
        return (this.zzb & 131072) != 0;
    }

    public final boolean zzI() {
        return this.zzy;
    }

    public final String zzJ() {
        return this.zzz;
    }

    public final boolean zzK() {
        return (this.zzb & 524288) != 0;
    }

    public final long zzL() {
        return this.zzA;
    }

    public final boolean zzM() {
        return (this.zzb & 1048576) != 0;
    }

    public final int zzN() {
        return this.zzB;
    }

    public final String zzO() {
        return this.zzC;
    }

    public final String zzP() {
        return this.zzD;
    }

    public final boolean zzQ() {
        return (this.zzb & 8388608) != 0;
    }

    public final boolean zzR() {
        return this.zzE;
    }

    public final List zzS() {
        return this.zzF;
    }

    public final String zzT() {
        return this.zzG;
    }

    public final boolean zzU() {
        return (this.zzb & GroupFlagsKt.HasAuxSlotFlag) != 0;
    }

    public final int zzV() {
        return this.zzH;
    }

    public final boolean zzW() {
        return (this.zzb & 536870912) != 0;
    }

    public final long zzX() {
        return this.zzL;
    }

    public final boolean zzY() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final String zzZ() {
        return this.zzN;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final boolean zzaA() {
        return (this.zze & 134217728) != 0;
    }

    public final long zzaB() {
        return this.zzar;
    }

    public final boolean zzaC() {
        return (this.zze & 536870912) != 0;
    }

    public final zzho zzaD() {
        zzho zzhoVar = this.zzat;
        return zzhoVar == null ? zzho.zzc() : zzhoVar;
    }

    public final boolean zzaa() {
        return (this.zze & 2) != 0;
    }

    public final int zzab() {
        return this.zzP;
    }

    public final boolean zzac() {
        return (this.zze & 16) != 0;
    }

    public final long zzad() {
        return this.zzT;
    }

    public final boolean zzae() {
        return (this.zze & 128) != 0;
    }

    public final String zzaf() {
        return this.zzW;
    }

    public final boolean zzag() {
        return (this.zze & 8192) != 0;
    }

    public final String zzah() {
        return this.zzac;
    }

    public final boolean zzai() {
        return (this.zze & 32768) != 0;
    }

    public final long zzaj() {
        return this.zzaf;
    }

    public final boolean zzak() {
        return this.zzag;
    }

    public final boolean zzal() {
        return (this.zze & 131072) != 0;
    }

    public final String zzam() {
        return this.zzah;
    }

    public final boolean zzan() {
        return (this.zze & 262144) != 0;
    }

    public final boolean zzao() {
        return this.zzai;
    }

    public final boolean zzap() {
        return (this.zze & 524288) != 0;
    }

    public final String zzaq() {
        return this.zzaj;
    }

    public final int zzar() {
        return this.zzak;
    }

    public final boolean zzas() {
        return (this.zze & 4194304) != 0;
    }

    public final zzhe zzat() {
        zzhe zzheVar = this.zzam;
        return zzheVar == null ? zzhe.zzj() : zzheVar;
    }

    public final boolean zzau() {
        return (this.zze & 8388608) != 0;
    }

    public final int zzav() {
        return this.zzan;
    }

    public final boolean zzaw() {
        return (this.zze & 16777216) != 0;
    }

    public final zzha zzax() {
        zzha zzhaVar = this.zzao;
        return zzhaVar == null ? zzha.zzu() : zzhaVar;
    }

    public final boolean zzay() {
        return (this.zze & 67108864) != 0;
    }

    public final zzis zzaz() {
        zzis zzisVar = this.zzaq;
        return zzisVar == null ? zzis.zzc() : zzisVar;
    }

    public final int zzb() {
        return this.zzf;
    }

    public final List zzc() {
        return this.zzg;
    }

    public final int zzd() {
        return this.zzg.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzhs zze(int i) {
        return (zzhs) this.zzg.get(i);
    }

    public final List zzf() {
        return this.zzh;
    }

    public final int zzh() {
        return this.zzh.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zziu zzi(int i) {
        return (zziu) this.zzh.get(i);
    }

    public final boolean zzj() {
        return (this.zzb & 2) != 0;
    }

    public final long zzk() {
        return this.zzi;
    }

    public final boolean zzl() {
        return (this.zzb & 4) != 0;
    }

    public final long zzm() {
        return this.zzj;
    }

    public final boolean zzn() {
        return (this.zzb & 8) != 0;
    }

    public final long zzo() {
        return this.zzk;
    }

    public final boolean zzp() {
        return (this.zzb & 16) != 0;
    }

    public final long zzq() {
        return this.zzl;
    }

    public final boolean zzr() {
        return (this.zzb & 32) != 0;
    }

    public final long zzs() {
        return this.zzm;
    }

    public final String zzt() {
        return this.zzn;
    }

    public final String zzu() {
        return this.zzo;
    }

    public final String zzv() {
        return this.zzp;
    }

    public final String zzw() {
        return this.zzq;
    }

    public final boolean zzx() {
        return (this.zzb & 1024) != 0;
    }

    public final int zzy() {
        return this.zzr;
    }

    public final String zzz() {
        return this.zzs;
    }
}
