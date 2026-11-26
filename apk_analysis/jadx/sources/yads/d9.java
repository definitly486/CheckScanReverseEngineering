package yads;

import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class d9 {
    public final bw2 A;
    public final boolean B;
    public final boolean C;
    public final boolean D;
    public final boolean E;
    public final boolean F;
    public final String G;
    public final boolean H;
    public final int I;
    public final int J;
    public final boolean K;
    public final n70 a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final int f;
    public final int g;
    public final List h;
    public final c i;
    public final Long j;
    public final String k;
    public final String l;
    public final p60 m;
    public final rl5 n;
    public final String o;
    public final String p;
    public final o54 q;
    public final t95 r;
    public final Long s;
    public final Object t;
    public final Map u;
    public final String v;
    public final String w;
    public final boolean x;
    public final boolean y;
    public final boolean z;

    public d9(n70 n70Var, String str, String str2, String str3, String str4, int i, int i2, ArrayList arrayList, c cVar, Long l, String str5, String str6, p60 p60Var, rl5 rl5Var, String str7, String str8, o54 o54Var, t95 t95Var, Long l2, Object obj, Map map, String str9, String str10, boolean z, boolean z2, int i3, int i4, int i5, boolean z3, bw2 bw2Var, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, String str11, boolean z9, int i6, int i7) {
        n70 n70Var2 = (i6 & 1) != 0 ? null : n70Var;
        String str12 = (i6 & 2) != 0 ? null : str;
        String str13 = (i6 & 4) != 0 ? null : str2;
        String str14 = (i6 & 8) != 0 ? null : str3;
        String str15 = (i6 & 16) != 0 ? null : str4;
        int i8 = (i6 & 32) != 0 ? 0 : i;
        int i9 = (i6 & 64) != 0 ? 0 : i2;
        ArrayList arrayList2 = (i6 & 128) != 0 ? null : arrayList;
        c cVar2 = (i6 & 256) != 0 ? null : cVar;
        Long l3 = (i6 & 512) != 0 ? null : l;
        String str16 = (i6 & 1024) != 0 ? null : str5;
        String str17 = (i6 & 16384) != 0 ? null : str6;
        p60 p60Var2 = (i6 & 65536) != 0 ? null : p60Var;
        rl5 rl5Var2 = (i6 & 131072) != 0 ? null : rl5Var;
        String str18 = (i6 & 262144) != 0 ? null : str7;
        String str19 = (i6 & 524288) != 0 ? null : str8;
        o54 o54Var2 = (i6 & 1048576) != 0 ? null : o54Var;
        t95 t95Var2 = (i6 & 2097152) != 0 ? null : t95Var;
        Long l4 = (i6 & 4194304) != 0 ? null : l2;
        Map map2 = (i6 & 16777216) != 0 ? null : map;
        String str20 = (i6 & GroupFlagsKt.HasAuxSlotFlag) != 0 ? null : str9;
        String str21 = (i6 & 67108864) != 0 ? null : str10;
        boolean z10 = (i6 & 134217728) != 0 ? false : z;
        boolean z11 = (i6 & 268435456) != 0 ? false : z2;
        int i10 = (i7 & 1) != 0 ? 0 : i3;
        int i11 = (i7 & 2) != 0 ? 0 : i4;
        boolean z12 = (i7 & 8) != 0 ? false : z3;
        bw2 bw2Var2 = (i7 & 16) != 0 ? null : bw2Var;
        boolean z13 = (i7 & 32) != 0 ? true : z4;
        boolean z14 = (i7 & 64) != 0 ? false : z5;
        rl5 rl5Var3 = rl5Var2;
        boolean z15 = (i7 & 1024) != 0 ? true : z6;
        boolean z16 = (i7 & 2048) != 0 ? false : z7;
        boolean z17 = (i7 & 4096) != 0 ? false : z8;
        String str22 = (i7 & 8192) != 0 ? null : str11;
        boolean z18 = (i7 & 16384) != 0 ? false : z9;
        this.a = n70Var2;
        this.b = str12;
        this.c = str13;
        this.d = str14;
        this.e = str15;
        this.f = i8;
        this.g = i9;
        this.h = arrayList2;
        this.i = cVar2;
        this.j = l3;
        this.k = str16;
        this.l = str17;
        this.m = p60Var2;
        this.n = rl5Var3;
        this.o = str18;
        this.p = str19;
        this.q = o54Var2;
        this.r = t95Var2;
        this.s = l4;
        this.t = obj;
        this.u = map2;
        this.v = str20;
        this.w = str21;
        this.x = z10;
        this.y = z11;
        this.z = z12;
        this.A = bw2Var2;
        this.B = z13;
        this.C = z14;
        this.D = z15;
        this.E = z16;
        this.F = z17;
        this.G = str22;
        this.H = z18;
        int i12 = i10;
        this.I = i12 * 1000;
        this.J = i11 * 1000;
        this.K = i12 > 0;
    }

    public final c a() {
        return this.i;
    }

    public final String b() {
        return this.w;
    }

    public final wx2 c() {
        int i = this.f;
        int i2 = this.g;
        rl5 rl5Var = this.n;
        if (rl5Var == null) {
            rl5Var = rl5.FIXED;
        }
        return new wx2(i, i2, rl5Var, null, 24);
    }
}
