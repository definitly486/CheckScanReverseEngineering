package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.ts.TsExtractor;
import java.util.Arrays;
import org.conscrypt.metrics.ConscryptStatsLog;
import org.jsoup.helper.ValidationException;
import org.jsoup.nodes.f;

/* JADX INFO: loaded from: classes5.dex */
public final class jx8 {
    public static final char[] u;
    public static final int[] v = {8364, TsExtractor.TS_STREAM_TYPE_AC3, 8218, TypedValues.CycleType.TYPE_VISIBILITY, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_RSA_WITH_AES_256_GCM_SHA384, 382, 376};
    public final ea1 a;
    public final p36 b;
    public final gx8.g h;
    public final gx8.f i;
    public gx8.h j;
    public final gx8.j n;
    public String o;
    public String p;
    public int q;
    public kx8 c = kx8.Data;
    public gx8 d = null;
    public boolean e = false;
    public final m54 f = new m54();
    public final gx8.b k = new gx8.b();
    public final gx8.d l = new gx8.d();
    public final gx8.c m = new gx8.c();
    public int r = 0;
    public final int[] s = new int[1];
    public final int[] t = new int[2];
    public final f.a.EnumC0312a g = f.a.EnumC0312a.html;

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        u = cArr;
        Arrays.sort(cArr);
    }

    public jx8(by3 by3Var) {
        gx8.g gVar = new gx8.g(by3Var);
        this.h = gVar;
        this.j = gVar;
        this.i = new gx8.f(by3Var);
        gx8.j jVar = new gx8.j(gx8.i.XmlDecl, by3Var);
        jVar.k = true;
        this.n = jVar;
        this.a = by3Var.b;
        this.b = by3Var.a.b;
    }

    public final void a(kx8 kx8Var) {
        o(kx8Var);
        this.a.m();
    }

    public final void b(String str, Object... objArr) {
        p36 p36Var = this.b;
        if (p36Var.i()) {
            p36Var.add(new n36(this.a, String.format("Invalid character reference: ".concat(str), objArr)));
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:103:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:104:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:106:0x01be  */
    /* JADX WARN: Code duplicated, block: B:112:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:115:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:116:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:118:0x0202  */
    /* JADX WARN: Code duplicated, block: B:119:0x0206  */
    /* JADX WARN: Code duplicated, block: B:121:0x0209  */
    /* JADX WARN: Code duplicated, block: B:123:0x020e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x0210 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:125:0x0211  */
    /* JADX WARN: Code duplicated, block: B:140:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:? A[LOOP:4: B:89:0x0184->B:141:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x0032  */
    /* JADX WARN: Code duplicated, block: B:16:0x003c  */
    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077  */
    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
    /* JADX WARN: Code duplicated, block: B:31:0x008d  */
    /* JADX WARN: Code duplicated, block: B:38:0x009e  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:62:0x0100  */
    /* JADX WARN: Code duplicated, block: B:64:0x0113  */
    /* JADX WARN: Code duplicated, block: B:85:0x0172  */
    /* JADX WARN: Code duplicated, block: B:88:0x017e  */
    /* JADX WARN: Code duplicated, block: B:91:0x018a  */
    /* JADX WARN: Code duplicated, block: B:97:0x019e  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a4  */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01c8, code lost:
    
        if (r0.r0('=', '-', '_') == false) goto L110;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] c(java.lang.Character r13, boolean r14) {
        /*
            Method dump skipped, instruction units count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jx8.c(java.lang.Character, boolean):int[]");
    }

    public final gx8.h d(boolean z) {
        gx8.h hVar;
        if (z) {
            hVar = this.h;
            hVar.f();
        } else {
            hVar = this.i;
            hVar.f();
        }
        this.j = hVar;
        return hVar;
    }

    public final void e() {
        this.f.d();
    }

    public final void f(char c) {
        gx8.b bVar = this.k;
        bVar.d.a(c);
        bVar.b = this.r;
        bVar.c = this.a.z0();
    }

    public final void g(gx8 gx8Var) {
        if (this.e) {
            throw new ValidationException("Must be false");
        }
        this.d = gx8Var;
        this.e = true;
        gx8Var.b = this.q;
        ea1 ea1Var = this.a;
        gx8Var.c = ea1Var.z0();
        this.r = ea1Var.z0();
        gx8.i iVar = gx8Var.a;
        if (iVar == gx8.i.StartTag) {
            this.o = ((gx8.g) gx8Var).d.e();
            this.p = null;
        } else if (iVar == gx8.i.EndTag) {
            gx8.f fVar = (gx8.f) gx8Var;
            if (fVar.g != null) {
                Object[] objArr = {fVar.l()};
                p36 p36Var = this.b;
                if (p36Var.i()) {
                    p36Var.add(new n36(ea1Var, "Attributes incorrectly present on end tag [/%s]", objArr));
                }
            }
        }
    }

    public final void h(String str) {
        gx8.b bVar = this.k;
        bVar.d.b(str);
        bVar.b = this.r;
        bVar.c = this.a.z0();
    }

    public final void i() {
        g(this.m);
    }

    public final void j() {
        g(this.l);
    }

    public final void k() {
        gx8.h hVar = this.j;
        if (hVar.h.c()) {
            hVar.k();
        }
        g(this.j);
    }

    public final void l(kx8 kx8Var) {
        p36 p36Var = this.b;
        if (p36Var.i()) {
            p36Var.add(new n36(this.a, "Unexpectedly reached end of file (EOF) in input state [%s]", new Object[]{kx8Var}));
        }
    }

    public final void m(kx8 kx8Var) {
        p36 p36Var = this.b;
        if (p36Var.i()) {
            ea1 ea1Var = this.a;
            p36Var.add(new n36(ea1Var, "Unexpected character '%s' in input state [%s]", new Object[]{Character.valueOf(ea1Var.X()), kx8Var}));
        }
    }

    public final boolean n() {
        return this.o != null && this.j.d.e().equalsIgnoreCase(this.o);
    }

    public final void o(kx8 kx8Var) {
        if (kx8Var == kx8.TagOpen) {
            this.q = this.a.z0();
        }
        this.c = kx8Var;
    }
}
