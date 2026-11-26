package defpackage;

import android.text.TextUtils;
import androidx.collection.SieveCacheKt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzic;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class fmb {
    public Long A;
    public long B;
    public String C;
    public int D;
    public int E;
    public long F;
    public String G;
    public byte[] H;
    public int I;
    public long J;
    public long K;
    public long L;
    public long M;
    public long N;
    public long O;
    public long P;
    public String Q;
    public boolean R;
    public long S;
    public long T;
    public final zzic a;
    public final String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public long g;
    public long h;
    public long i;
    public String j;
    public long k;
    public String l;
    public long m;
    public long n;
    public boolean o;
    public boolean p;
    public Boolean q;
    public long r;
    public ArrayList s;
    public String t;
    public boolean u;
    public long v;
    public long w;
    public int x;
    public boolean y;
    public Long z;

    public fmb(zzic zzicVar, String str) {
        Preconditions.checkNotNull(zzicVar);
        Preconditions.checkNotEmpty(str);
        this.a = zzicVar;
        this.b = str;
        zzicVar.zzaX().zzg();
    }

    public final void A(String str) {
        this.a.zzaX().zzg();
        this.R |= !Objects.equals(this.l, str);
        this.l = str;
    }

    public final void B(long j) {
        this.a.zzaX().zzg();
        this.R |= this.m != j;
        this.m = j;
    }

    public final void a(long j) {
        this.a.zzaX().zzg();
        this.R |= this.n != j;
        this.n = j;
    }

    public final void b(long j) {
        this.a.zzaX().zzg();
        this.R |= this.r != j;
        this.r = j;
    }

    public final void c(boolean z) {
        this.a.zzaX().zzg();
        this.R |= this.o != z;
        this.o = z;
    }

    public final void d(long j) {
        Preconditions.checkArgument(j >= 0);
        this.a.zzaX().zzg();
        this.R |= this.g != j;
        this.g = j;
    }

    public final void e(long j) {
        this.a.zzaX().zzg();
        this.R |= this.S != j;
        this.S = j;
    }

    public final void f(long j) {
        zzic zzicVar = this.a;
        zzicVar.zzaX().zzg();
        long j2 = this.g + j;
        String str = this.b;
        if (j2 > SieveCacheKt.NodeLinkMask) {
            zzicVar.zzaW().zze().zzb("Bundle index overflow. appId", zzgu.d(str));
            j2 = (-1) + j;
        }
        long j3 = this.F + 1;
        if (j3 > SieveCacheKt.NodeLinkMask) {
            zzicVar.zzaW().zze().zzb("Delivery index overflow. appId", zzgu.d(str));
            j3 = 0;
        }
        this.R = true;
        this.g = j2;
        this.F = j3;
    }

    public final void g(int i) {
        this.a.zzaX().zzg();
        this.R |= this.E != i;
        this.E = i;
    }

    public final int h() {
        this.a.zzaX().zzg();
        return this.I;
    }

    public final String i() {
        this.a.zzaX().zzg();
        String str = this.Q;
        j(null);
        return str;
    }

    public final void j(String str) {
        this.a.zzaX().zzg();
        this.R |= !Objects.equals(this.Q, str);
        this.Q = str;
    }

    public final void k(List list) {
        this.a.zzaX().zzg();
        if (Objects.equals(this.s, list)) {
            return;
        }
        this.R = true;
        this.s = list != null ? new ArrayList(list) : null;
    }

    public final String l() {
        this.a.zzaX().zzg();
        return this.C;
    }

    public final String m() {
        this.a.zzaX().zzg();
        return this.b;
    }

    public final String n() {
        this.a.zzaX().zzg();
        return this.c;
    }

    public final void o(String str) {
        this.a.zzaX().zzg();
        this.R |= !Objects.equals(this.c, str);
        this.c = str;
    }

    public final String p() {
        this.a.zzaX().zzg();
        return this.d;
    }

    public final void q(String str) {
        this.a.zzaX().zzg();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.R |= true ^ Objects.equals(this.d, str);
        this.d = str;
    }

    public final void r(String str) {
        this.a.zzaX().zzg();
        this.R |= !Objects.equals(this.e, str);
        this.e = str;
    }

    public final String s() {
        this.a.zzaX().zzg();
        return this.f;
    }

    public final void t(String str) {
        this.a.zzaX().zzg();
        this.R |= !Objects.equals(this.f, str);
        this.f = str;
    }

    public final void u(long j) {
        this.a.zzaX().zzg();
        this.R |= this.h != j;
        this.h = j;
    }

    public final void v(long j) {
        this.a.zzaX().zzg();
        this.R |= this.i != j;
        this.i = j;
    }

    public final String w() {
        this.a.zzaX().zzg();
        return this.j;
    }

    public final void x(String str) {
        this.a.zzaX().zzg();
        this.R |= !Objects.equals(this.j, str);
        this.j = str;
    }

    public final long y() {
        this.a.zzaX().zzg();
        return this.k;
    }

    public final void z(long j) {
        this.a.zzaX().zzg();
        this.R |= this.k != j;
        this.k = j;
    }
}
