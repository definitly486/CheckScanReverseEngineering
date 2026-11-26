package defpackage;

import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.stats.CodePackage;
import com.google.gson.Gson;
import com.warefly.checkscan.auth.data.network.deserializer.AuthResponseDeserializer;
import com.warefly.checkscan.data.db.CheckscanDatabase;
import com.warefly.checkscan.data.network.deserializers.OnboardingSlideDeserializer;
import com.warefly.checkscan.data.network.deserializers.PromoSelectCardDeserializer;
import com.warefly.checkscan.data.network.deserializers.TransferShowcaseDeserializer;
import com.warefly.checkscan.personalform.data.network.deserializer.ProfileDataFormQuestionsDeserializer;
import com.warefly.checkscan.products.data.network.deserializer.ProductOfferDeserializer;
import com.warefly.checkscan.products.data.network.deserializer.ProductsSelectionBlockDeserializer;
import com.warefly.checkscan.products.data.network.deserializer.SelectionDetailsBlockDeserializer;
import java.time.Clock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class wc5 {
    public static final tc5 a = h.c(a.f);
    public static final tc5 b = h.c(b.f);

    public static final class a extends gh4 implements nl3<tc5, j59> {
        public static final a f = new a(1);

        /* JADX INFO: renamed from: wc5$a$a, reason: collision with other inner class name */
        public final class C0348a extends gh4 implements bm3<ze7, i36, jv6> {
            public static final C0348a f = new C0348a(2);

            @Override // defpackage.bm3
            public final jv6 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new ts5((tu6) ze7Var2.e(x07.a(tu6.class), null, null), (ns5) ze7Var2.e(x07.a(ns5.class), null, null));
            }
        }

        public final class a0 extends gh4 implements bm3<ze7, i36, cc7> {
            public static final a0 f = new a0(2);

            @Override // defpackage.bm3
            public final cc7 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new cc7((xp8) ze7Var2.e(x07.a(xp8.class), null, null));
            }
        }

        public final class a1 extends gh4 implements bm3<ze7, i36, xy8> {
            public static final a1 f = new a1(2);

            @Override // defpackage.bm3
            public final xy8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (xy8) zc5.b(ze7Var2, i36Var, ze7Var2, xy8.class);
            }
        }

        public final class a2 extends gh4 implements bm3<ze7, i36, iq4> {
            public static final a2 f = new a2(2);

            @Override // defpackage.bm3
            public final iq4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (iq4) zc5.b(ze7Var2, i36Var, ze7Var2, iq4.class);
            }
        }

        public final class a3 extends gh4 implements bm3<ze7, i36, la3> {
            public static final a3 f = new a3(2);

            @Override // defpackage.bm3
            public final la3 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new ma3();
            }
        }

        public final class a4 extends gh4 implements bm3<ze7, i36, fu1> {
            public static final a4 f = new a4(2);

            @Override // defpackage.bm3
            public final fu1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new fu1();
            }
        }

        public final class a5 extends gh4 implements bm3<ze7, i36, ca0> {
            public static final a5 f = new a5(2);

            @Override // defpackage.bm3
            public final ca0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new ca0((pb0) ze7Var2.e(x07.a(pb0.class), null, null), (defpackage.j5) ze7Var2.e(x07.a(defpackage.j5.class), null, null), (s47) ze7Var2.e(x07.a(s47.class), null, null));
            }
        }

        public final class a6 extends gh4 implements bm3<ze7, i36, u51> {
            public static final a6 f = new a6(2);

            @Override // defpackage.bm3
            public final u51 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new d61((o51) ze7Var2.e(x07.a(o51.class), null, null), (zt6) ze7Var2.e(x07.a(zt6.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class b extends gh4 implements bm3<ze7, i36, o17> {
            public static final b f = new b(2);

            @Override // defpackage.bm3
            public final o17 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new p17((n17) ze7Var2.e(x07.a(n17.class), null, null));
            }
        }

        public final class b0 extends gh4 implements bm3<ze7, i36, bc7> {
            public static final b0 f = new b0(2);

            @Override // defpackage.bm3
            public final bc7 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new bc7((xp8) ze7Var2.e(x07.a(xp8.class), null, null));
            }
        }

        public final class b1 extends gh4 implements bm3<ze7, i36, z9> {
            public static final b1 f = new b1(2);

            @Override // defpackage.bm3
            public final z9 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (z9) zc5.b(ze7Var2, i36Var, ze7Var2, z9.class);
            }
        }

        public final class b2 extends gh4 implements bm3<ze7, i36, cf5> {
            public static final b2 f = new b2(2);

            @Override // defpackage.bm3
            public final cf5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (cf5) zc5.b(ze7Var2, i36Var, ze7Var2, cf5.class);
            }
        }

        public final class b3 extends gh4 implements bm3<ze7, i36, av6> {
            public static final b3 f = new b3(2);

            @Override // defpackage.bm3
            public final av6 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new pb5((la3) ze7Var2.e(x07.a(la3.class), null, null));
            }
        }

        public final class b4 extends gh4 implements nl3<fu1, j59> {
            public static final b4 f = new b4(1);

            @Override // defpackage.nl3
            public final j59 invoke(fu1 fu1Var) {
                fu1 fu1Var2 = fu1Var;
                if (fu1Var2 != null) {
                    fu1Var2.dispose();
                }
                return j59.a;
            }
        }

        /* JADX INFO: loaded from: classes.dex */
        public final class b5 extends gh4 implements bm3<ze7, i36, hy1> {
            public static final b5 f = new b5(2);

            @Override // defpackage.bm3
            public final hy1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                ContentResolver contentResolver = gr3.b(ze7Var2).getContentResolver();
                contentResolver.getClass();
                return new iy1(contentResolver);
            }
        }

        public final class b6 extends gh4 implements bm3<ze7, i36, cf1> {
            public static final b6 f = new b6(2);

            @Override // defpackage.bm3
            public final cf1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new kf1((mh1) ze7Var2.e(x07.a(mh1.class), null, null), (CheckscanDatabase) ze7Var2.e(x07.a(CheckscanDatabase.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (defpackage.e3) ze7Var2.e(x07.a(defpackage.e3.class), null, null));
            }
        }

        public final class c extends gh4 implements bm3<ze7, i36, wk7> {
            public static final c f = new c(2);

            @Override // defpackage.bm3
            public final wk7 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new xk7((k61) ze7Var2.e(x07.a(k61.class), null, null));
            }
        }

        public final class c0 extends gh4 implements bm3<ze7, i36, qp3> {
            public static final c0 f = new c0(2);

            @Override // defpackage.bm3
            public final qp3 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new qp3((xp8) ze7Var2.e(x07.a(xp8.class), null, null));
            }
        }

        public final class c1 extends gh4 implements bm3<ze7, i36, r22> {
            public static final c1 f = new c1(2);

            @Override // defpackage.bm3
            public final r22 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                oi2 oi2Var = qo2.a;
                return sh2.c;
            }
        }

        public final class c2 extends gh4 implements bm3<ze7, i36, vc9> {
            public static final c2 f = new c2(2);

            @Override // defpackage.bm3
            public final vc9 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                tc5 tc5Var = wc5.a;
                return (vc9) ((n67) ze7Var2.e(x07.a(n67.class), null, p72.f)).b(vc9.class);
            }
        }

        public final class c3 extends gh4 implements bm3<ze7, i36, CheckscanDatabase> {
            public static final c3 f = new c3(2);

            @Override // defpackage.bm3
            public final CheckscanDatabase invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return (CheckscanDatabase) CheckscanDatabase.a.getValue();
            }
        }

        public final class c4 extends gh4 implements bm3<ze7, i36, wj1> {
            public static final c4 f = new c4(2);

            @Override // defpackage.bm3
            public final wj1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new xj1(gr3.b(ze7Var2));
            }
        }

        public final class c5 extends gh4 implements bm3<ze7, i36, bm0> {
            public static final c5 f = new c5(2);

            @Override // defpackage.bm3
            public final bm0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new bm0((rp0) ze7Var2.e(x07.a(rp0.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (aa) ze7Var2.e(x07.a(aa.class), null, null), (t42) ze7Var2.e(x07.a(t42.class), null, null), (n53) ze7Var2.e(x07.a(n53.class), null, null));
            }
        }

        public final class c6 extends gh4 implements bm3<ze7, i36, zg1> {
            public static final c6 f = new c6(2);

            @Override // defpackage.bm3
            public final zg1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new ih1((CheckscanDatabase) ze7Var2.e(x07.a(CheckscanDatabase.class), null, null), (af1) ze7Var2.e(x07.a(af1.class), null, null));
            }
        }

        public final class d extends gh4 implements bm3<ze7, i36, b88> {
            public static final d f = new d(2);

            @Override // defpackage.bm3
            public final b88 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new e88((l78) ze7Var2.e(x07.a(l78.class), null, null));
            }
        }

        public final class d0 extends gh4 implements bm3<ze7, i36, e8> {
            public static final d0 f = new d0(2);

            @Override // defpackage.bm3
            public final e8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new e8();
            }
        }

        public final class d1 extends gh4 implements bm3<ze7, i36, ko0> {
            public static final d1 f = new d1(2);

            @Override // defpackage.bm3
            public final ko0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (ko0) zc5.b(ze7Var2, i36Var, ze7Var2, ko0.class);
            }
        }

        public final class d2 extends gh4 implements bm3<ze7, i36, oh4> {
            public static final d2 f = new d2(2);

            @Override // defpackage.bm3
            public final oh4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (oh4) zc5.b(ze7Var2, i36Var, ze7Var2, oh4.class);
            }
        }

        public final class d3 extends gh4 implements bm3<ze7, i36, r71> {
            public static final d3 f = new d3(2);

            @Override // defpackage.bm3
            public final r71 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return ((CheckscanDatabase) ze7Var2.e(x07.a(CheckscanDatabase.class), null, null)).e();
            }
        }

        public final class d4 extends gh4 implements bm3<ze7, i36, u07> {
            public static final d4 f = new d4(2);

            @Override // defpackage.bm3
            public final u07 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new v07();
            }
        }

        public final class d5 extends gh4 implements bm3<ze7, i36, lp0> {
            public static final d5 f = new d5(2);

            @Override // defpackage.bm3
            public final lp0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new lp0((t42) ze7Var2.e(x07.a(t42.class), null, null), (rp0) ze7Var2.e(x07.a(rp0.class), null, null), (aa) ze7Var2.e(x07.a(aa.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class d6 extends gh4 implements bm3<ze7, i36, t42> {
            public static final d6 f = new d6(2);

            @Override // defpackage.bm3
            public final t42 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new v42((h42) ze7Var2.e(x07.a(h42.class), null, null), (z32) ze7Var2.e(x07.a(z32.class), null, null));
            }
        }

        public final class e extends gh4 implements bm3<ze7, i36, xv2> {
            public static final e f = new e(2);

            @Override // defpackage.bm3
            public final xv2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new aw2((ov2) ze7Var2.e(x07.a(ov2.class), null, null));
            }
        }

        public final class e0 extends gh4 implements bm3<ze7, i36, a8> {
            public static final e0 f = new e0(2);

            @Override // defpackage.bm3
            public final a8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new a8();
            }
        }

        public final class e1 extends gh4 implements bm3<ze7, i36, o51> {
            public static final e1 f = new e1(2);

            @Override // defpackage.bm3
            public final o51 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (o51) zc5.b(ze7Var2, i36Var, ze7Var2, o51.class);
            }
        }

        public final class e2 extends gh4 implements bm3<ze7, i36, db> {
            public static final e2 f = new e2(2);

            @Override // defpackage.bm3
            public final db invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (db) zc5.b(ze7Var2, i36Var, ze7Var2, db.class);
            }
        }

        public final class e3 extends gh4 implements bm3<ze7, i36, wf1> {
            public static final e3 f = new e3(2);

            @Override // defpackage.bm3
            public final wf1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return ((CheckscanDatabase) ze7Var2.e(x07.a(CheckscanDatabase.class), null, null)).f();
            }
        }

        public final class e4 extends gh4 implements bm3<ze7, i36, defpackage.c4> {
            public static final e4 f = new e4(2);

            @Override // defpackage.bm3
            public final defpackage.c4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new defpackage.c4((jf6) ze7Var2.e(x07.a(jf6.class), null, null), (defpackage.j5) ze7Var2.e(x07.a(defpackage.j5.class), null, null), (zg1) ze7Var2.e(x07.a(zg1.class), null, null), (s67) ze7Var2.e(x07.a(s67.class), null, null), (qe) ze7Var2.e(x07.a(qe.class), null, null), (hm2) ze7Var2.e(x07.a(hm2.class), null, null), (hu4) ze7Var2.e(x07.a(hu4.class), null, null), (u51) ze7Var2.e(x07.a(u51.class), null, null), (fu1) ze7Var2.e(x07.a(fu1.class), null, p72.g), (vp) ze7Var2.e(x07.a(vp.class), null, null), (n60) ze7Var2.e(x07.a(n60.class), null, null), (b16) ze7Var2.e(x07.a(b16.class), null, null), (d82) ze7Var2.e(x07.a(d82.class), null, null), (defpackage.k5) ze7Var2.e(x07.a(defpackage.k5.class), null, null), (dc7) ze7Var2.e(x07.a(dc7.class), null, null));
            }
        }

        public final class e5 extends gh4 implements bm3<ze7, i36, aj4> {
            public static final e5 f = new e5(2);

            @Override // defpackage.bm3
            public final aj4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new aj4((nj4) ze7Var2.e(x07.a(nj4.class), null, null), (defpackage.i3) ze7Var2.e(x07.a(defpackage.i3.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (xb4) ze7Var2.e(x07.a(xb4.class), null, null));
            }
        }

        public final class e6 extends gh4 implements bm3<ze7, i36, on2> {
            public static final e6 f = new e6(2);

            @Override // defpackage.bm3
            public final on2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new pn2((nn2) ze7Var2.e(x07.a(nn2.class), null, null));
            }
        }

        public final class f extends gh4 implements bm3<ze7, i36, oh9> {
            public static final f f = new f(2);

            @Override // defpackage.bm3
            public final oh9 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new pib(4);
            }
        }

        public final class f0 extends gh4 implements bm3<ze7, i36, y73> {
            public static final f0 f = new f0(2);

            @Override // defpackage.bm3
            public final y73 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new y73((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class f1 extends gh4 implements bm3<ze7, i36, k61> {
            public static final f1 f = new f1(2);

            @Override // defpackage.bm3
            public final k61 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (k61) zc5.b(ze7Var2, i36Var, ze7Var2, k61.class);
            }
        }

        public final class f2 extends gh4 implements bm3<ze7, i36, a10> {
            public static final f2 f = new f2(2);

            @Override // defpackage.bm3
            public final a10 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (a10) zc5.b(ze7Var2, i36Var, ze7Var2, a10.class);
            }
        }

        public final class f3 extends gh4 implements bm3<ze7, i36, ip5> {
            public static final f3 f = new f3(2);

            @Override // defpackage.bm3
            public final ip5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return ((CheckscanDatabase) ze7Var2.e(x07.a(CheckscanDatabase.class), null, null)).g();
            }
        }

        public final class f4 extends gh4 implements bm3<ze7, i36, n15> {
            public static final f4 f = new f4(2);

            @Override // defpackage.bm3
            public final n15 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new o15();
            }
        }

        public final class f5 extends gh4 implements bm3<ze7, i36, uw5> {
            public static final f5 f = new f5(2);

            @Override // defpackage.bm3
            public final uw5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new uw5((ow5) ze7Var2.e(x07.a(ow5.class), null, null));
            }
        }

        public final class f6 extends gh4 implements bm3<ze7, i36, rp5> {
            public static final f6 f = new f6(2);

            @Override // defpackage.bm3
            public final rp5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new tp5((dp5) ze7Var2.e(x07.a(dp5.class), null, null));
            }
        }

        public final class g extends gh4 implements bm3<ze7, i36, pb0> {
            public static final g f = new g(2);

            @Override // defpackage.bm3
            public final pb0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new ub0((x80) ze7Var2.e(x07.a(x80.class), null, null));
            }
        }

        public final class g0 extends gh4 implements bm3<ze7, i36, xb4> {
            public static final g0 f = new g0(2);

            @Override // defpackage.bm3
            public final xb4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return bd4.a(xc5.f);
            }
        }

        public final class g1 extends gh4 implements bm3<ze7, i36, af1> {
            public static final g1 f = new g1(2);

            @Override // defpackage.bm3
            public final af1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (af1) zc5.b(ze7Var2, i36Var, ze7Var2, af1.class);
            }
        }

        public final class g2 extends gh4 implements bm3<ze7, i36, uo1> {
            public static final g2 f = new g2(2);

            @Override // defpackage.bm3
            public final uo1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (uo1) zc5.b(ze7Var2, i36Var, ze7Var2, uo1.class);
            }
        }

        public final class g3 extends gh4 implements bm3<ze7, i36, zt6> {
            public static final g3 f = new g3(2);

            @Override // defpackage.bm3
            public final zt6 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return ((CheckscanDatabase) ze7Var2.e(x07.a(CheckscanDatabase.class), null, null)).h();
            }
        }

        public final class g4 extends gh4 implements bm3<ze7, i36, x9> {
            public static final g4 f = new g4(2);

            @Override // defpackage.bm3
            public final x9 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new x9((aa) ze7Var2.e(x07.a(aa.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (bm0) ze7Var2.e(x07.a(bm0.class), null, null));
            }
        }

        public final class g5 extends gh4 implements bm3<ze7, i36, b40> {
            public static final g5 f = new g5(2);

            @Override // defpackage.bm3
            public final b40 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new b40((n60) ze7Var2.e(x07.a(n60.class), null, null), (s47) ze7Var2.e(x07.a(s47.class), null, null), (zl2) ze7Var2.e(x07.a(zl2.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (r22) ze7Var2.e(x07.a(r22.class), null, p72.h));
            }
        }

        public final class g6 extends gh4 implements bm3<ze7, i36, oz5> {
            public static final g6 f = new g6(2);

            @Override // defpackage.bm3
            public final oz5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new pz5((iz5) ze7Var2.e(x07.a(iz5.class), null, null));
            }
        }

        public final class h extends gh4 implements bm3<ze7, i36, rp0> {
            public static final h f = new h(2);

            @Override // defpackage.bm3
            public final rp0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new pq0((np0) ze7Var2.e(x07.a(np0.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class h0 extends gh4 implements bm3<ze7, i36, w73> {
            public static final h0 f = new h0(2);

            @Override // defpackage.bm3
            public final w73 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new w73((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class h1 extends gh4 implements bm3<ze7, i36, h42> {
            public static final h1 f = new h1(2);

            @Override // defpackage.bm3
            public final h42 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (h42) zc5.b(ze7Var2, i36Var, ze7Var2, h42.class);
            }
        }

        public final class h2 extends gh4 implements bm3<ze7, i36, ya> {
            public static final h2 f = new h2(2);

            @Override // defpackage.bm3
            public final ya invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (ya) zc5.b(ze7Var2, i36Var, ze7Var2, ya.class);
            }
        }

        public final class h3 extends gh4 implements bm3<ze7, i36, hm2> {
            public static final h3 f = new h3(2);

            @Override // defpackage.bm3
            public final hm2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new gi(gr3.b(ze7Var2), (ee) ze7Var2.e(x07.a(ee.class), null, null));
            }
        }

        public final class h4 extends gh4 implements bm3<ze7, i36, nz8> {
            public static final h4 f = new h4(2);

            @Override // defpackage.bm3
            public final nz8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new nz8((b09) ze7Var2.e(x07.a(b09.class), null, null), (u51) ze7Var2.e(x07.a(u51.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class h5 extends gh4 implements bm3<ze7, i36, u73> {
            public static final h5 f = new h5(2);

            @Override // defpackage.bm3
            public final u73 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new u73((n60) ze7Var2.e(x07.a(n60.class), null, null));
            }
        }

        public final class h6 extends gh4 implements bm3<ze7, i36, h46> {
            public static final h6 f = new h6(2);

            @Override // defpackage.bm3
            public final h46 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new i46((f46) ze7Var2.e(x07.a(f46.class), null, null), (m9) ze7Var2.e(x07.a(m9.class), null, null), (z9) ze7Var2.e(x07.a(z9.class), null, null));
            }
        }

        public final class i extends gh4 implements bm3<ze7, i36, vv2> {
            public static final i f = new i(2);

            @Override // defpackage.bm3
            public final vv2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new wv2((s47) ze7Var2.e(x07.a(s47.class), null, null));
            }
        }

        public final class i0 extends gh4 implements bm3<ze7, i36, jk1> {
            public static final i0 f = new i0(2);

            @Override // defpackage.bm3
            public final jk1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new jk1((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class i1 extends gh4 implements bm3<ze7, i36, kr6> {
            public static final i1 f = new i1(2);

            @Override // defpackage.bm3
            public final kr6 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (kr6) zc5.b(ze7Var2, i36Var, ze7Var2, kr6.class);
            }
        }

        public final class i2 extends gh4 implements bm3<ze7, i36, cc8> {
            public static final i2 f = new i2(2);

            @Override // defpackage.bm3
            public final cc8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (cc8) zc5.b(ze7Var2, i36Var, ze7Var2, cc8.class);
            }
        }

        public final class i3 extends gh4 implements bm3<ze7, i36, uw> {
            public static final i3 f = new i3(2);

            @Override // defpackage.bm3
            public final uw invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new cx((bv) ze7Var2.e(x07.a(bv.class), null, null));
            }
        }

        public final class i4 extends gh4 implements bm3<ze7, i36, d83> {
            public static final i4 f = new i4(2);

            @Override // defpackage.bm3
            public final d83 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new d83((b09) ze7Var2.e(x07.a(b09.class), null, null));
            }
        }

        public final class i5 extends gh4 implements bm3<ze7, i36, ks5> {
            public static final i5 f = new i5(2);

            @Override // defpackage.bm3
            public final ks5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new ks5((ka7) ze7Var2.e(x07.a(ka7.class), null, null));
            }
        }

        public final class i6 extends gh4 implements bm3<ze7, i36, zb0> {
            public static final i6 f = new i6(2);

            @Override // defpackage.bm3
            public final zb0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new bc0();
            }
        }

        public final class j extends gh4 implements bm3<ze7, i36, nj4> {
            public static final j f = new j(2);

            @Override // defpackage.bm3
            public final nj4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new pj4((oh4) ze7Var2.e(x07.a(oh4.class), null, null));
            }
        }

        public final class j0 extends gh4 implements bm3<ze7, i36, g73> {
            public static final j0 f = new j0(2);

            @Override // defpackage.bm3
            public final g73 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new g73((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class j1 extends gh4 implements bm3<ze7, i36, z32> {
            public static final j1 f = new j1(2);

            @Override // defpackage.bm3
            public final z32 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (z32) zc5.b(ze7Var2, i36Var, ze7Var2, z32.class);
            }
        }

        public final class j2 extends gh4 implements bm3<ze7, i36, qm5> {
            public static final j2 f = new j2(2);

            @Override // defpackage.bm3
            public final qm5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new zw1(gr3.b(ze7Var2), (r22) ze7Var2.e(x07.a(r22.class), null, p72.h));
            }
        }

        public final class j3 extends gh4 implements bm3<ze7, i36, s47> {
            public static final j3 f = new j3(2);

            @Override // defpackage.bm3
            public final s47 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new t47(gr3.b(ze7Var2));
            }
        }

        public final class j4 extends gh4 implements bm3<ze7, i36, vo7> {
            public static final j4 f = new j4(2);

            @Override // defpackage.bm3
            public final vo7 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new vo7((b09) ze7Var2.e(x07.a(b09.class), null, null));
            }
        }

        public final class j5 extends gh4 implements bm3<ze7, i36, wl0> {
            public static final j5 f = new j5(2);

            @Override // defpackage.bm3
            public final wl0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new wl0((tn0) ze7Var2.e(x07.a(tn0.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (n53) ze7Var2.e(x07.a(n53.class), null, null), (bo0) ze7Var2.e(x07.a(bo0.class), null, null));
            }
        }

        public final class k extends gh4 implements bm3<ze7, i36, vp> {
            public static final k f = new k(2);

            @Override // defpackage.bm3
            public final vp invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new wp();
            }
        }

        public final class k0 extends gh4 implements bm3<ze7, i36, d73> {
            public static final k0 f = new k0(2);

            @Override // defpackage.bm3
            public final d73 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new d73((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class k1 extends gh4 implements bm3<ze7, i36, nn2> {
            public static final k1 f = new k1(2);

            @Override // defpackage.bm3
            public final nn2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (nn2) zc5.b(ze7Var2, i36Var, ze7Var2, nn2.class);
            }
        }

        public final class k2 extends gh4 implements bm3<ze7, i36, vo8> {
            public static final k2 f = new k2(2);

            @Override // defpackage.bm3
            public final vo8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (vo8) zc5.b(ze7Var2, i36Var, ze7Var2, vo8.class);
            }
        }

        public final class k3 extends gh4 implements bm3<ze7, i36, hu4> {
            public static final k3 f = new k3(2);

            @Override // defpackage.bm3
            public final hu4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new ju4((jf6) ze7Var2.e(x07.a(jf6.class), null, null), (eu4) ze7Var2.e(x07.a(eu4.class), null, null), gr3.b(ze7Var2));
            }
        }

        public final class k4 extends gh4 implements bm3<ze7, i36, io0> {
            public static final k4 f = new k4(2);

            @Override // defpackage.bm3
            public final io0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new io0((lo0) ze7Var2.e(x07.a(lo0.class), null, null), p51.h);
            }
        }

        public final class k5 extends gh4 implements bm3<ze7, i36, i73> {
            public static final k5 f = new k5(2);

            @Override // defpackage.bm3
            public final i73 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new i73((tn0) ze7Var2.e(x07.a(tn0.class), null, null));
            }
        }

        public final class l extends gh4 implements bm3<ze7, i36, ow5> {
            public static final l f = new l(2);

            @Override // defpackage.bm3
            public final ow5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new rw5((a10) ze7Var2.e(x07.a(a10.class), null, null));
            }
        }

        public final class l0 extends gh4 implements bm3<ze7, i36, v63> {
            public static final l0 f = new l0(2);

            @Override // defpackage.bm3
            public final v63 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new v63((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class l1 extends gh4 implements bm3<ze7, i36, dp5> {
            public static final l1 f = new l1(2);

            @Override // defpackage.bm3
            public final dp5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (dp5) zc5.b(ze7Var2, i36Var, ze7Var2, dp5.class);
            }
        }

        public final class l2 extends gh4 implements bm3<ze7, i36, eq3> {
            public static final l2 f = new l2(2);

            @Override // defpackage.bm3
            public final eq3 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (eq3) zc5.b(ze7Var2, i36Var, ze7Var2, eq3.class);
            }
        }

        public final class l3 extends gh4 implements bm3<ze7, i36, rm5> {
            public static final l3 f = new l3(2);

            @Override // defpackage.bm3
            public final rm5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new sm5((jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class l4 extends gh4 implements bm3<ze7, i36, p51> {
            public static final l4 f = new l4(2);

            @Override // defpackage.bm3
            public final p51 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new p51((u51) ze7Var2.e(x07.a(u51.class), null, null), (defpackage.j5) ze7Var2.e(x07.a(defpackage.j5.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class l5 extends gh4 implements bm3<ze7, i36, zl2> {
            public static final l5 f = new l5(2);

            @Override // defpackage.bm3
            public final zl2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new zl2();
            }
        }

        /* JADX INFO: loaded from: classes.dex */
        public final class m extends gh4 implements bm3<ze7, i36, tn0> {
            public static final m f = new m(2);

            @Override // defpackage.bm3
            public final tn0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                el0 el0Var = (el0) ze7Var2.e(x07.a(el0.class), null, null);
                jf6 jf6Var = (jf6) ze7Var2.e(x07.a(jf6.class), null, null);
                uo1 uo1Var = (uo1) ze7Var2.e(x07.a(uo1.class), null, null);
                return new ao0(el0Var, (cc8) ze7Var2.e(x07.a(cc8.class), null, null), (ya) ze7Var2.e(x07.a(ya.class), null, null), uo1Var, jf6Var);
            }
        }

        public final class m0 extends gh4 implements bm3<ze7, i36, b73> {
            public static final m0 f = new m0(2);

            @Override // defpackage.bm3
            public final b73 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new b73((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class m1 extends gh4 implements bm3<ze7, i36, iz5> {
            public static final m1 f = new m1(2);

            @Override // defpackage.bm3
            public final iz5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (iz5) zc5.b(ze7Var2, i36Var, ze7Var2, iz5.class);
            }
        }

        public final class m2 extends gh4 implements bm3<ze7, i36, v64> {
            public static final m2 f = new m2(2);

            @Override // defpackage.bm3
            public final v64 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (v64) zc5.b(ze7Var2, i36Var, ze7Var2, v64.class);
            }
        }

        public final class m3 extends gh4 implements bm3<ze7, i36, jf6> {
            public static final m3 f = new m3(2);

            @Override // defpackage.bm3
            public final jf6 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                qr7.o0.getClass();
                return (qr7) qr7.q0.getValue();
            }
        }

        public final class m4 extends gh4 implements bm3<ze7, i36, p61> {
            public static final m4 f = new m4(2);

            @Override // defpackage.bm3
            public final p61 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new p61((o17) ze7Var2.e(x07.a(o17.class), null, null), (wk7) ze7Var2.e(x07.a(wk7.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (hu4) ze7Var2.e(x07.a(hu4.class), null, null), (on2) ze7Var2.e(x07.a(on2.class), null, null), (qe) ze7Var2.e(x07.a(qe.class), null, null), (cf1) ze7Var2.e(x07.a(cf1.class), null, null));
            }
        }

        public final class m5 extends gh4 implements bm3<ze7, i36, b16> {
            public static final m5 f = new m5(2);

            @Override // defpackage.bm3
            public final b16 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                PackageManager packageManager = gr3.b(ze7Var2).getPackageManager();
                packageManager.getClass();
                return new c16(packageManager);
            }
        }

        public final class n extends gh4 implements bm3<ze7, i36, tc8> {
            public static final n f = new n(2);

            @Override // defpackage.bm3
            public final tc8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new vc8((cc8) ze7Var2.e(x07.a(cc8.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class n0 extends gh4 implements bm3<ze7, i36, hk1> {
            public static final n0 f = new n0(2);

            @Override // defpackage.bm3
            public final hk1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new hk1((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class n1 extends gh4 implements bm3<ze7, i36, ip> {
            public static final n1 f = new n1(2);

            @Override // defpackage.bm3
            public final ip invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new ip();
            }
        }

        public final class n2 extends gh4 implements bm3<ze7, i36, qt0> {
            public static final n2 f = new n2(2);

            @Override // defpackage.bm3
            public final qt0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (qt0) zc5.b(ze7Var2, i36Var, ze7Var2, qt0.class);
            }
        }

        public final class n3 extends gh4 implements bm3<ze7, i36, za> {
            public static final n3 f = new n3(2);

            @Override // defpackage.bm3
            public final za invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new cb((db) ze7Var2.e(x07.a(db.class), null, null));
            }
        }

        public final class n4 extends gh4 implements bm3<ze7, i36, py4> {
            public static final n4 f = new n4(2);

            @Override // defpackage.bm3
            public final py4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new py4((jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class n5 extends gh4 implements bm3<ze7, i36, bo0> {
            public static final n5 f = new n5(2);

            @Override // defpackage.bm3
            public final bo0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new bo0();
            }
        }

        public final class o extends gh4 implements bm3<ze7, i36, ap8> {
            public static final o f = new o(2);

            @Override // defpackage.bm3
            public final ap8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new tp8((vo8) ze7Var2.e(x07.a(vo8.class), null, null), (kr6) ze7Var2.e(x07.a(kr6.class), null, null));
            }
        }

        public final class o0 extends gh4 implements bm3<ze7, i36, fk1> {
            public static final o0 f = new o0(2);

            @Override // defpackage.bm3
            public final fk1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new fk1((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class o1 extends gh4 implements bm3<ze7, i36, f46> {
            public static final o1 f = new o1(2);

            @Override // defpackage.bm3
            public final f46 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (f46) zc5.b(ze7Var2, i36Var, ze7Var2, f46.class);
            }
        }

        public final class o2 extends gh4 implements bm3<ze7, i36, dd> {
            public static final o2 f = new o2(2);

            @Override // defpackage.bm3
            public final dd invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (dd) zc5.b(ze7Var2, i36Var, ze7Var2, dd.class);
            }
        }

        public final class o3 extends gh4 implements bm3<ze7, i36, n60> {
            public static final o3 f = new o3(2);

            @Override // defpackage.bm3
            public final n60 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new x60((a10) ze7Var2.e(x07.a(a10.class), null, null), (el0) ze7Var2.e(x07.a(el0.class), null, null));
            }
        }

        public final class o4 extends gh4 implements bm3<ze7, i36, xd1> {
            public static final o4 f = new o4(2);

            @Override // defpackage.bm3
            public final xd1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new xd1((cf1) ze7Var2.e(x07.a(cf1.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class o5 extends gh4 implements bm3<ze7, i36, vw5> {
            public static final o5 f = new o5(2);

            @Override // defpackage.bm3
            public final vw5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new vw5();
            }
        }

        public final class p extends gh4 implements bm3<ze7, i36, xp8> {
            public static final p f = new p(2);

            @Override // defpackage.bm3
            public final xp8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new yp8();
            }
        }

        public final class p0 extends gh4 implements bm3<ze7, i36, x63> {
            public static final p0 f = new p0(2);

            @Override // defpackage.bm3
            public final x63 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new x63((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class p1 extends gh4 implements bm3<ze7, i36, da0> {
            public static final p1 f = new p1(2);

            @Override // defpackage.bm3
            public final da0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (da0) zc5.b(ze7Var2, i36Var, ze7Var2, da0.class);
            }
        }

        public final class p2 extends gh4 implements bm3<ze7, i36, yb0> {
            public static final p2 f = new p2(2);

            @Override // defpackage.bm3
            public final yb0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (yb0) zc5.b(ze7Var2, i36Var, ze7Var2, yb0.class);
            }
        }

        public final class p3 extends gh4 implements bm3<ze7, i36, kv> {
            public static final p3 f = new p3(2);

            @Override // defpackage.bm3
            public final kv invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new kv((uw) ze7Var2.e(x07.a(uw.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (defpackage.c4) ze7Var2.e(x07.a(defpackage.c4.class), null, null), (b68) ze7Var2.e(x07.a(b68.class), null, null), (fu1) ze7Var2.e(x07.a(fu1.class), null, p72.g));
            }
        }

        public final class p4 extends gh4 implements bm3<ze7, i36, yg1> {
            public static final p4 f = new p4(2);

            @Override // defpackage.bm3
            public final yg1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new yg1((zg1) ze7Var2.e(x07.a(zg1.class), null, null), (jv6) ze7Var2.e(x07.a(jv6.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (fu1) ze7Var2.e(x07.a(fu1.class), null, p72.g), (j67) ze7Var2.e(x07.a(j67.class), null, null), (xd1) ze7Var2.e(x07.a(xd1.class), null, null));
            }
        }

        public final class p5 extends gh4 implements bm3<ze7, i36, nh9> {
            public static final p5 f = new p5(2);

            @Override // defpackage.bm3
            public final nh9 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new nh9((rp0) ze7Var2.e(x07.a(rp0.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class q extends gh4 implements bm3<ze7, i36, up8> {
            public static final q f = new q(2);

            @Override // defpackage.bm3
            public final up8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new vp8((jc1) ze7Var2.e(x07.a(jc1.class), null, null), (qp3) ze7Var2.e(x07.a(qp3.class), null, null));
            }
        }

        public final class q0 extends gh4 implements bm3<ze7, i36, z63> {
            public static final q0 f = new q0(2);

            @Override // defpackage.bm3
            public final z63 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new z63((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class q1 extends gh4 implements bm3<ze7, i36, tu6> {
            public static final q1 f = new q1(2);

            @Override // defpackage.bm3
            public final tu6 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (tu6) zc5.b(ze7Var2, i36Var, ze7Var2, tu6.class);
            }
        }

        public final class q2 extends gh4 implements bm3<ze7, i36, cv> {
            public static final q2 f = new q2(2);

            @Override // defpackage.bm3
            public final cv invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (cv) zc5.b(ze7Var2, i36Var, ze7Var2, cv.class);
            }
        }

        public final class q3 extends gh4 implements bm3<ze7, i36, defpackage.i3> {
            public static final q3 f = new q3(2);

            @Override // defpackage.bm3
            public final defpackage.i3 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new defpackage.i3();
            }
        }

        public final class q4 extends gh4 implements bm3<ze7, i36, lb5> {
            public static final q4 f = new q4(2);

            @Override // defpackage.bm3
            public final lb5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new mb5();
            }
        }

        public final class q5 extends gh4 implements bm3<ze7, i36, ic8> {
            public static final q5 f = new q5(2);

            @Override // defpackage.bm3
            public final ic8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new ic8((tc8) ze7Var2.e(x07.a(tc8.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class r extends gh4 implements bm3<ze7, i36, lq3> {
            public static final r f = new r(2);

            @Override // defpackage.bm3
            public final lq3 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new nq3((eq3) ze7Var2.e(x07.a(eq3.class), null, null));
            }
        }

        public final class r0 extends gh4 implements bm3<ze7, i36, Clock> {
            public static final r0 f = new r0(2);

            @Override // defpackage.bm3
            public final Clock invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                Clock clockSystemDefaultZone = Clock.systemDefaultZone();
                clockSystemDefaultZone.getClass();
                return clockSystemDefaultZone;
            }
        }

        public final class r1 extends gh4 implements bm3<ze7, i36, n17> {
            public static final r1 f = new r1(2);

            @Override // defpackage.bm3
            public final n17 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (n17) zc5.b(ze7Var2, i36Var, ze7Var2, n17.class);
            }
        }

        public final class r2 extends gh4 implements bm3<ze7, i36, f94> {
            public static final r2 f = new r2(2);

            @Override // defpackage.bm3
            public final f94 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new z97(ad5.f);
            }
        }

        public final class r3 extends gh4 implements bm3<ze7, i36, q76> {
            public static final r3 f = new r3(2);

            @Override // defpackage.bm3
            public final q76 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new q76();
            }
        }

        public final class r4 extends gh4 implements bm3<ze7, i36, q42> {
            public static final r4 f = new r4(2);

            @Override // defpackage.bm3
            public final q42 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new q42((t42) ze7Var2.e(x07.a(t42.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class r5 extends gh4 implements bm3<ze7, i36, d82> {
            public static final r5 f = new r5(2);

            @Override // defpackage.bm3
            public final d82 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new d82((ap8) ze7Var2.e(x07.a(ap8.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class s extends gh4 implements bm3<ze7, i36, t79> {
            public static final s f = new s(2);

            @Override // defpackage.bm3
            public final t79 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new w79();
            }
        }

        public final class s0 extends gh4 implements bm3<ze7, i36, n67> {
            public static final s0 f = new s0(2);

            @Override // defpackage.bm3
            public final n67 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                defpackage.s0.c("KOIN: authorized retrofit created");
                on onVar = on.b;
                String str = (String) ze7Var2.c("server_host");
                n67.b bVar = new n67.b();
                bVar.b(str.concat("/"));
                bVar.a = new OkHttpClient(onVar.c(true, true));
                bVar.a((i02.a) ay3.a.getValue());
                ws3 ws3Var = new ws3();
                TransferShowcaseDeserializer transferShowcaseDeserializer = new TransferShowcaseDeserializer();
                HashMap map = transferShowcaseDeserializer.b;
                map.put("REGISTER", k70.k.class);
                map.put("PHONE", k70.j.class);
                map.put("SBP_PHONE", k70.l.class);
                map.put("COMMON_CELL", k70.d.class);
                map.put("COMMON_BANNER", k70.c.class);
                map.put("MINI_LOGO_BANNER", k70.h.class);
                map.put("HEADER_LOGO_BANNERS", k70.f.class);
                map.put("TITLE", k70.m.class);
                ws3Var.c(k70.b.class, transferShowcaseDeserializer);
                PromoSelectCardDeserializer promoSelectCardDeserializer = new PromoSelectCardDeserializer();
                HashMap map2 = promoSelectCardDeserializer.b;
                map2.put("TITLE", wp6.j.class);
                map2.put(CodePackage.COMMON, wp6.i.class);
                map2.put("COMMON_RICH_PREVIEW", wp6.a.class);
                map2.put("MFO_RICH_PREVIEW", wp6.c.class);
                map2.put("MINI_LOGO_BANNER", wp6.d.class);
                map2.put("MINI_LOGO_TRANSFER_BANNER", wp6.e.class);
                map2.put("INFO", wp6.k.class);
                ws3Var.c(wp6.h.class, promoSelectCardDeserializer);
                OnboardingSlideDeserializer onboardingSlideDeserializer = new OnboardingSlideDeserializer();
                HashMap map3 = onboardingSlideDeserializer.b;
                map3.put("MULTI", jf5.class);
                map3.put("DEFAULT", ei2.class);
                ws3Var.c(fx5.class, onboardingSlideDeserializer);
                ProductsSelectionBlockDeserializer productsSelectionBlockDeserializer = new ProductsSelectionBlockDeserializer(0);
                HashMap map4 = productsSelectionBlockDeserializer.c;
                map4.put("MixedOffersSelection", gj6.class);
                map4.put("MerchantOffersSelection", fj6.class);
                ws3Var.c(ik6.class, productsSelectionBlockDeserializer);
                ProductOfferDeserializer productOfferDeserializer = new ProductOfferDeserializer(0);
                HashMap map5 = productOfferDeserializer.c;
                map5.put("LoyaltyProgram", dy4.class);
                map5.put("Cashback", j61.class);
                map5.put("OfferConditionsList", rt5.class);
                map5.put("MerchantsList", z95.class);
                map5.put("TextBlock", eq8.class);
                map5.put("OfferHeader", st5.class);
                map5.put("FullTerms", ch6.class);
                ws3Var.c(zh6.class, productOfferDeserializer);
                SelectionDetailsBlockDeserializer selectionDetailsBlockDeserializer = new SelectionDetailsBlockDeserializer(0);
                HashMap map6 = selectionDetailsBlockDeserializer.c;
                map6.put("SelectionHeader", in7.class);
                map6.put("OffersListTitle", yn7.class);
                map6.put("LoyaltyProgram", jn7.class);
                map6.put("CashbackRules", um7.class);
                map6.put("Merchant", un7.class);
                map6.put("Offer", vn7.class);
                ws3Var.c(fn7.class, selectionDetailsBlockDeserializer);
                ws3Var.c(ex.class, new AuthResponseDeserializer());
                ProfileDataFormQuestionsDeserializer profileDataFormQuestionsDeserializer = new ProfileDataFormQuestionsDeserializer();
                HashMap map7 = profileDataFormQuestionsDeserializer.b;
                map7.put("TEXT", yk6.a.i.class);
                map7.put("DATE", yk6.a.b.class);
                map7.put("SINGLE_CHOICE", yk6.a.h.class);
                map7.put("AREA", yk6.a.C0362a.class);
                map7.put("PHONE_EDIT", yk6.a.f.class);
                map7.put("SINGLE_CHOICE_DROPDOWN", yk6.a.c.class);
                ws3Var.c(yk6.a.g.class, profileDataFormQuestionsDeserializer);
                bVar.a(new xs3(new Gson(ws3Var)));
                bVar.d.add(new c97());
                return bVar.c();
            }
        }

        public final class s1 extends gh4 implements bm3<ze7, i36, mh1> {
            public static final s1 f = new s1(2);

            @Override // defpackage.bm3
            public final mh1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (mh1) zc5.b(ze7Var2, i36Var, ze7Var2, mh1.class);
            }
        }

        public final class s2 extends gh4 implements bm3<ze7, i36, l02> {
            public static final s2 f = new s2(2);

            @Override // defpackage.bm3
            public final l02 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return (l02) ze7Var2.e(x07.a(qx.class), null, null);
            }
        }

        public final class s3 extends gh4 implements bm3<ze7, i36, iw2> {
            public static final s3 f = new s3(2);

            @Override // defpackage.bm3
            public final iw2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new iw2();
            }
        }

        public final class s4 extends gh4 implements bm3<ze7, i36, d54> {
            public static final s4 f = new s4(2);

            @Override // defpackage.bm3
            public final d54 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new d54((cf1) ze7Var2.e(x07.a(cf1.class), null, null));
            }
        }

        public final class s5 extends gh4 implements bm3<ze7, i36, vn8> {
            public static final s5 f = new s5(2);

            @Override // defpackage.bm3
            public final vn8 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new vn8((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class t extends gh4 implements bm3<ze7, i36, PackageManager> {
            public static final t f = new t(2);

            @Override // defpackage.bm3
            public final PackageManager invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                PackageManager packageManager = gr3.b(ze7Var2).getPackageManager();
                packageManager.getClass();
                return packageManager;
            }
        }

        public final class t0 extends gh4 implements bm3<ze7, i36, n67> {
            public static final t0 f = new t0(2);

            @Override // defpackage.bm3
            public final n67 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                defpackage.s0.c("KOIN: bonuses retrofit created");
                on onVar = on.b;
                String str = (String) ze7Var2.c("server_host");
                n67.b bVar = new n67.b();
                bVar.b(str.concat("/"));
                bVar.a = new OkHttpClient(onVar.c(false, true));
                bVar.a((i02.a) ay3.a.getValue());
                bVar.a(new xs3(new Gson()));
                bVar.d.add(new c97());
                return bVar.c();
            }
        }

        public final class t1 extends gh4 implements bm3<ze7, i36, l78> {
            public static final t1 f = new t1(2);

            @Override // defpackage.bm3
            public final l78 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (l78) zc5.b(ze7Var2, i36Var, ze7Var2, l78.class);
            }
        }

        public final class t2 extends gh4 implements bm3<ze7, i36, tt5> {
            public static final t2 f = new t2(2);

            @Override // defpackage.bm3
            public final tt5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (tt5) zc5.b(ze7Var2, i36Var, ze7Var2, tt5.class);
            }
        }

        public final class t3 extends gh4 implements bm3<ze7, i36, da7> {
            public static final t3 f = new t3(2);

            @Override // defpackage.bm3
            public final da7 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new da7((ka7) ze7Var2.e(x07.a(ka7.class), null, null), (bo0) ze7Var2.e(x07.a(bo0.class), null, null), (b40) ze7Var2.e(x07.a(b40.class), null, null), (zl2) ze7Var2.e(x07.a(zl2.class), null, null), (ic8) ze7Var2.e(x07.a(ic8.class), null, null), (r22) ze7Var2.e(x07.a(r22.class), null, p72.h));
            }
        }

        public final class t4 extends gh4 implements bm3<ze7, i36, pp5> {
            public static final t4 f = new t4(2);

            @Override // defpackage.bm3
            public final pp5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new pp5((rp5) ze7Var2.e(x07.a(rp5.class), null, null));
            }
        }

        public final class t5 extends gh4 implements bm3<ze7, i36, bx5> {
            public static final t5 f = new t5(2);

            @Override // defpackage.bm3
            public final bx5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new bx5((za) ze7Var2.e(x07.a(za.class), null, null));
            }
        }

        public final class u extends gh4 implements bm3<ze7, i36, p63> {
            public static final u f = new u(2);

            @Override // defpackage.bm3
            public final p63 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new p63((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class u0 extends gh4 implements bm3<ze7, i36, n67> {
            public static final u0 f = new u0(2);

            @Override // defpackage.bm3
            public final n67 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                defpackage.s0.c("KOIN: plain retrofit created");
                on onVar = on.b;
                return on.a((String) ze7Var2.c("server_host"), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, p72.c));
            }
        }

        public final class u1 extends gh4 implements bm3<ze7, i36, ov2> {
            public static final u1 f = new u1(2);

            @Override // defpackage.bm3
            public final ov2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (ov2) zc5.b(ze7Var2, i36Var, ze7Var2, ov2.class);
            }
        }

        public final class u2 extends gh4 implements bm3<ze7, i36, OkHttpClient> {
            public static final u2 f = new u2(2);

            @Override // defpackage.bm3
            public final OkHttpClient invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new OkHttpClient(on.b.c(false, false));
            }
        }

        public final class u3 extends gh4 implements bm3<ze7, i36, df5> {
            public static final u3 f = new u3(2);

            @Override // defpackage.bm3
            public final df5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new df5();
            }
        }

        public final class u4 extends gh4 implements bm3<ze7, i36, kz5> {
            public static final u4 f = new u4(2);

            @Override // defpackage.bm3
            public final kz5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new kz5((oz5) ze7Var2.e(x07.a(oz5.class), null, null));
            }
        }

        public final class u5 extends gh4 implements bm3<ze7, i36, jq3> {
            public static final u5 f = new u5(2);

            @Override // defpackage.bm3
            public final jq3 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new jq3((lq3) ze7Var2.e(x07.a(lq3.class), null, null));
            }
        }

        public final class v extends gh4 implements bm3<ze7, i36, pr0> {
            public static final v f = new v(2);

            @Override // defpackage.bm3
            public final pr0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new qr0();
            }
        }

        public final class v0 extends gh4 implements bm3<ze7, i36, ev3> {
            public static final v0 f = new v0(2);

            @Override // defpackage.bm3
            public final ev3 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new ev3();
            }
        }

        public final class v1 extends gh4 implements bm3<ze7, i36, sr6> {
            public static final v1 f = new v1(2);

            @Override // defpackage.bm3
            public final sr6 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (sr6) zc5.b(ze7Var2, i36Var, ze7Var2, sr6.class);
            }
        }

        public final class v2 extends gh4 implements bm3<ze7, i36, fu5> {
            public static final v2 f = new v2(2);

            @Override // defpackage.bm3
            public final fu5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new gu5((tt5) ze7Var2.e(x07.a(tt5.class), null, null));
            }
        }

        public final class v3 extends gh4 implements bm3<ze7, i36, com.warefly.checkscan.presentation.a> {
            public static final v3 f = new v3(2);

            @Override // defpackage.bm3
            public final com.warefly.checkscan.presentation.a invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new com.warefly.checkscan.presentation.a((kv) ze7Var2.e(x07.a(kv.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null), (qe) ze7Var2.e(x07.a(qe.class), null, null), (o87) ze7Var2.e(x07.a(o87.class), null, oe0.b), (mu6) ze7Var2.e(x07.a(mu6.class), null, null), (gr7) ze7Var2.e(x07.a(gr7.class), null, null), (je6) ze7Var2.e(x07.a(je6.class), null, null), (my5) ze7Var2.e(x07.a(my5.class), null, null), (y22) ze7Var2.e(x07.a(y22.class), null, oe0.e));
            }
        }

        public final class v4 extends gh4 implements bm3<ze7, i36, g46> {
            public static final v4 f = new v4(2);

            @Override // defpackage.bm3
            public final g46 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new g46((h46) ze7Var2.e(x07.a(h46.class), null, null));
            }
        }

        public final class v5 extends gh4 implements bm3<ze7, i36, aa> {
            public static final v5 f = new v5(2);

            @Override // defpackage.bm3
            public final aa invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new ia((m9) ze7Var2.e(x07.a(m9.class), null, null), (iq4) ze7Var2.e(x07.a(iq4.class), null, null));
            }
        }

        public final class w extends gh4 implements bm3<ze7, i36, o83> {
            public static final w f = new w(2);

            @Override // defpackage.bm3
            public final o83 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new o83((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class w0 extends gh4 implements bm3<ze7, i36, a59> {
            public static final w0 f = new w0(2);

            @Override // defpackage.bm3
            public final a59 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new a59((ix8) ze7Var2.e(x07.a(jf6.class), null, null), new yc5(ze7Var2));
            }
        }

        public final class w1 extends gh4 implements bm3<ze7, i36, x80> {
            public static final w1 f = new w1(2);

            @Override // defpackage.bm3
            public final x80 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (x80) zc5.b(ze7Var2, i36Var, ze7Var2, x80.class);
            }
        }

        public final class w2 extends gh4 implements bm3<ze7, i36, cu5> {
            public static final w2 f = new w2(2);

            @Override // defpackage.bm3
            public final cu5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new cu5((fu5) ze7Var2.e(x07.a(fu5.class), null, null));
            }
        }

        public final class w3 extends gh4 implements bm3<ze7, i36, jq4> {
            public static final w3 f = new w3(2);

            @Override // defpackage.bm3
            public final jq4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new jq4((PackageManager) ze7Var2.e(x07.a(PackageManager.class), null, null));
            }
        }

        public final class w4 extends gh4 implements bm3<ze7, i36, j67> {
            public static final w4 f = new w4(2);

            @Override // defpackage.bm3
            public final j67 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new j67((jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class w5 extends gh4 implements bm3<ze7, i36, defpackage.j5> {
            public static final w5 f = new w5(2);

            @Override // defpackage.bm3
            public final defpackage.j5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new defpackage.e6((defpackage.e3) ze7Var2.e(x07.a(defpackage.e3.class), null, null), (vc9) ze7Var2.e(x07.a(vc9.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class x extends gh4 implements bm3<ze7, i36, q83> {
            public static final x f = new x(2);

            @Override // defpackage.bm3
            public final q83 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new q83((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class x0 extends gh4 implements bm3<ze7, i36, qx> {
            public static final x0 f = new x0(2);

            @Override // defpackage.bm3
            public final qx invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new qx((ix8) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class x1 extends gh4 implements bm3<ze7, i36, np0> {
            public static final x1 f = new x1(2);

            @Override // defpackage.bm3
            public final np0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                tc5 tc5Var = wc5.a;
                return (np0) ((n67) ze7Var2.e(x07.a(n67.class), null, p72.e)).b(np0.class);
            }
        }

        public final class x2 extends gh4 implements bm3<ze7, i36, eu4> {
            public static final x2 f = new x2(2);

            @Override // defpackage.bm3
            public final eu4 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                jg4 jg4Var = on.b;
                String str = (String) ze7Var2.c("location_by_ip_base_url");
                OkHttpClient.a aVar = new OkHttpClient.a();
                bz3 bz3Var = on.c;
                bz3Var.getClass();
                ArrayList arrayList = aVar.c;
                arrayList.add(bz3Var);
                ba8 ba8Var = p72.i;
                for (f94 f94Var : (Iterable) (jg4Var instanceof og4 ? defpackage.n2.c(List.class, ((og4) jg4Var).getScope(), ba8Var, null) : jg4Var.b().c.d.e(x07.a(List.class), null, ba8Var))) {
                    f94Var.getClass();
                    arrayList.add(f94Var);
                }
                Object objB = on.a(str, new OkHttpClient(aVar)).b(eu4.class);
                objB.getClass();
                return (eu4) objB;
            }
        }

        public final class x3 extends gh4 implements bm3<ze7, i36, my5> {
            public static final x3 f = new x3(2);

            @Override // defpackage.bm3
            public final my5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new my5((jq4) ze7Var2.e(x07.a(jq4.class), null, null));
            }
        }

        public final class x4 extends gh4 implements bm3<ze7, i36, b68> {
            public static final x4 f = new x4(2);

            @Override // defpackage.bm3
            public final b68 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new b68((jf6) ze7Var2.e(x07.a(jf6.class), null, null), (rp0) ze7Var2.e(x07.a(rp0.class), null, null), gr3.a(ze7Var2));
            }
        }

        public final class x5 extends gh4 implements bm3<ze7, i36, s05> {
            public static final x5 f = new x5(2);

            @Override // defpackage.bm3
            public final s05 invoke(ze7 ze7Var, i36 i36Var) {
                ze7Var.getClass();
                i36Var.getClass();
                return new t05();
            }
        }

        public final class y extends gh4 implements bm3<ze7, i36, c47> {
            public static final y f = new y(2);

            @Override // defpackage.bm3
            public final c47 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new c47((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class y0 extends gh4 implements bm3<ze7, i36, defpackage.e3> {
            public static final y0 f = new y0(2);

            @Override // defpackage.bm3
            public final defpackage.e3 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (defpackage.e3) zc5.b(ze7Var2, i36Var, ze7Var2, defpackage.e3.class);
            }
        }

        public final class y1 extends gh4 implements bm3<ze7, i36, y22> {
            public static final y1 f = new y1(2);

            @Override // defpackage.bm3
            public final y22 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return ((ip) ze7Var2.e(x07.a(ip.class), null, null)).a;
            }
        }

        public final class y2 extends gh4 implements bm3<ze7, i36, v05> {
            public static final y2 f = new y2(2);

            @Override // defpackage.bm3
            public final v05 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                w05 w05Var = new w05(gr3.b(ze7Var2));
                d12 d12Var = new d12();
                ArrayList arrayList = w05Var.b;
                arrayList.add(d12Var);
                Pattern pattern = z05.k;
                z05.b bVar = new z05.b();
                bVar.c = true;
                bVar.a.addAll(Arrays.asList(new jz(), new o00(), new p00(), new w80(), new jm1(), new d03(), new vx3(), new dn5(), new gy5()));
                bVar.b.addAll(Arrays.asList(new is(), new f59()));
                arrayList.add(new a15(bVar));
                return w05Var.a();
            }
        }

        public final class y3 extends gh4 implements bm3<ze7, i36, r59> {
            public static final y3 f = new y3(2);

            @Override // defpackage.bm3
            public final r59 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new r59((jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class y4 extends gh4 implements bm3<ze7, i36, q78> {
            public static final y4 f = new y4(2);

            @Override // defpackage.bm3
            public final q78 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new q78((b88) ze7Var2.e(x07.a(b88.class), null, null));
            }
        }

        public final class y5 extends gh4 implements bm3<ze7, i36, b09> {
            public static final y5 f = new y5(2);

            @Override // defpackage.bm3
            public final b09 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new d09((xy8) ze7Var2.e(x07.a(xy8.class), null, null));
            }
        }

        public final class z extends gh4 implements bm3<ze7, i36, mk1> {
            public static final z f = new z(2);

            @Override // defpackage.bm3
            public final mk1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new mk1((ap8) ze7Var2.e(x07.a(ap8.class), null, null));
            }
        }

        public final class z0 extends gh4 implements bm3<ze7, i36, m9> {
            public static final z0 f = new z0(2);

            @Override // defpackage.bm3
            public final m9 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (m9) zc5.b(ze7Var2, i36Var, ze7Var2, m9.class);
            }
        }

        public final class z1 extends gh4 implements bm3<ze7, i36, el0> {
            public static final z1 f = new z1(2);

            @Override // defpackage.bm3
            public final el0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                tc5 tc5Var = wc5.a;
                return (el0) ((n67) ze7Var2.e(x07.a(n67.class), null, p72.e)).b(el0.class);
            }
        }

        public final class z2 extends gh4 implements bm3<ze7, i36, ns5> {
            public static final z2 f = new z2(2);

            @Override // defpackage.bm3
            public final ns5 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                on onVar = on.b;
                Object objB = on.a((String) ze7Var2.c("ofd_base_url"), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, p72.c)).b(ns5.class);
                objB.getClass();
                return (ns5) objB;
            }
        }

        public final class z3 extends gh4 implements bm3<ze7, i36, q59> {
            public static final z3 f = new z3(2);

            @Override // defpackage.bm3
            public final q59 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                Context contextB = gr3.b(ze7Var2);
                hd3<Boolean> hd3VarA = ((qm5) ze7Var2.e(x07.a(qm5.class), null, null)).a();
                Application applicationA = gr3.a(ze7Var2);
                cy8 cy8Var = new cy8();
                applicationA.registerActivityLifecycleCallbacks(new by8(cy8Var));
                l69 l69Var = (l69) ze7Var2.e(x07.a(r59.class), null, null);
                hd3VarA.getClass();
                Context applicationContext = contextB.getApplicationContext();
                applicationContext.getClass();
                return new s59(new sk8(applicationContext), hd3VarA, cy8Var, l69Var);
            }
        }

        public final class z4 extends gh4 implements bm3<ze7, i36, uv2> {
            public static final z4 f = new z4(2);

            @Override // defpackage.bm3
            public final uv2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new uv2((xv2) ze7Var2.e(x07.a(xv2.class), null, null), (qe) ze7Var2.e(x07.a(qe.class), null, null), (jf6) ze7Var2.e(x07.a(jf6.class), null, null));
            }
        }

        public final class z5 extends gh4 implements bm3<ze7, i36, lo0> {
            public static final z5 f = new z5(2);

            @Override // defpackage.bm3
            public final lo0 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                ze7Var2.getClass();
                i36Var.getClass();
                return new mo0((ko0) ze7Var2.e(x07.a(ko0.class), null, null));
            }
        }

        @Override // defpackage.nl3
        public final j59 invoke(tc5 tc5Var) {
            tc5 tc5Var2 = tc5Var;
            tc5Var2.getClass();
            cg4 cg4Var = cg4.Singleton;
            zk1 zk1VarA = x07.a(v05.class);
            ba8 ba8Var = bf7.e;
            i01.c(new gi0(ba8Var, zk1VarA, null, y2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(s47.class), null, j3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(df5.class), null, u3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(n15.class), null, f4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(lb5.class), null, q4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(hy1.class), null, b5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(b16.class), null, m5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(s05.class), null, x5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(zb0.class), null, i6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(vp.class), null, k.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(pr0.class), null, v.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(xb4.class), null, g0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(Clock.class), null, r0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(r22.class), p72.h, c1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ip.class), null, n1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(y22.class), oe0.e, y1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(qm5.class), null, j2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(OkHttpClient.class), p72.c, u2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(eu4.class), null, x2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ns5.class), null, z2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(la3.class), null, a3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(av6.class), null, b3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(CheckscanDatabase.class), null, c3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(r71.class), null, d3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(wf1.class), null, e3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ip5.class), null, f3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(zt6.class), null, g3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(hm2.class), null, h3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(uw.class), null, i3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(hu4.class), null, k3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(rm5.class), null, l3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(jf6.class), null, m3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(za.class), null, n3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(n60.class), null, o3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(kv.class), null, p3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(defpackage.i3.class), null, q3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(q76.class), null, r3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(iw2.class), null, s3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(da7.class), null, t3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(com.warefly.checkscan.presentation.a.class), null, v3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(jq4.class), null, w3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(my5.class), null, x3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(r59.class), null, y3.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(q59.class), null, z3.f, cg4Var), tc5Var2);
            gi0 gi0Var = new gi0(ba8Var, x07.a(fu1.class), p72.g, a4.f, cg4Var);
            i01.c(gi0Var, tc5Var2);
            b4 b4Var = b4.f;
            b4Var.getClass();
            gi0Var.g = new xy0<>(b4Var);
            i01.c(new gi0(ba8Var, x07.a(wj1.class), null, c4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(u07.class), null, d4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(defpackage.c4.class), null, e4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(x9.class), null, g4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(nz8.class), null, h4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(d83.class), null, i4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(vo7.class), null, j4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(io0.class), null, k4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(p51.class), null, l4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(p61.class), null, m4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(py4.class), null, n4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(xd1.class), null, o4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(yg1.class), null, p4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(q42.class), null, r4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(d54.class), null, s4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(pp5.class), null, t4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(kz5.class), null, u4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(g46.class), null, v4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(j67.class), null, w4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(b68.class), null, x4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(q78.class), null, y4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(uv2.class), null, z4.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ca0.class), null, a5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(bm0.class), null, c5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(lp0.class), null, d5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(aj4.class), null, e5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(uw5.class), null, f5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(b40.class), null, g5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(u73.class), null, h5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ks5.class), null, i5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(wl0.class), null, j5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(i73.class), null, k5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(zl2.class), null, l5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(bo0.class), null, n5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(vw5.class), null, o5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(nh9.class), null, p5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ic8.class), null, q5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(d82.class), null, r5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(vn8.class), null, s5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(bx5.class), null, t5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(jq3.class), null, u5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(aa.class), null, v5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(defpackage.j5.class), null, w5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(b09.class), null, y5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(lo0.class), null, z5.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(u51.class), null, a6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(cf1.class), null, b6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(zg1.class), null, c6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(t42.class), null, d6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(on2.class), null, e6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(rp5.class), null, f6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(oz5.class), null, g6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(h46.class), null, h6.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(jv6.class), null, C0348a.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(o17.class), null, b.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(wk7.class), null, c.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(b88.class), null, d.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(xv2.class), null, e.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(oh9.class), null, f.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(pb0.class), null, g.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(rp0.class), null, h.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(vv2.class), null, i.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(nj4.class), null, j.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ow5.class), null, l.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(tn0.class), null, m.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(tc8.class), null, n.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ap8.class), null, o.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(xp8.class), null, p.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(up8.class), null, q.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(lq3.class), null, r.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(t79.class), null, s.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(PackageManager.class), null, t.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(p63.class), null, u.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(o83.class), null, w.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(q83.class), null, x.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(c47.class), null, y.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(mk1.class), null, z.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(cc7.class), null, a0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(bc7.class), null, b0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(qp3.class), null, c0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(e8.class), null, d0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(a8.class), null, e0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(y73.class), null, f0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(w73.class), null, h0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(jk1.class), null, i0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(g73.class), null, j0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(d73.class), null, k0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(v63.class), null, l0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(b73.class), null, m0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(hk1.class), null, n0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(fk1.class), null, o0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(x63.class), null, p0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(z63.class), null, q0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(n67.class), p72.d, s0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(n67.class), p72.e, t0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(n67.class), p72.f, u0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ev3.class), null, v0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(a59.class), null, w0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(qx.class), null, x0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(defpackage.e3.class), null, y0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(m9.class), null, z0.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(xy8.class), null, a1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(z9.class), null, b1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ko0.class), null, d1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(o51.class), null, e1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(k61.class), null, f1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(af1.class), null, g1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(h42.class), null, h1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(kr6.class), null, i1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(z32.class), null, j1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(nn2.class), null, k1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(dp5.class), null, l1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(iz5.class), null, m1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(f46.class), null, o1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(da0.class), null, p1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(tu6.class), null, q1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(n17.class), null, r1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(mh1.class), null, s1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(l78.class), null, t1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ov2.class), null, u1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(sr6.class), null, v1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(x80.class), null, w1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(np0.class), null, x1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(el0.class), null, z1.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(iq4.class), null, a2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(cf5.class), null, b2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(vc9.class), null, c2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(oh4.class), null, d2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(db.class), null, e2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(a10.class), null, f2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(uo1.class), null, g2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(ya.class), null, h2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(cc8.class), null, i2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(vo8.class), null, k2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(eq3.class), null, l2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(v64.class), null, m2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(qt0.class), null, n2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(dd.class), null, o2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(yb0.class), null, p2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(cv.class), null, q2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(f94.class), x97.e, r2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(l02.class), x97.f, s2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(tt5.class), null, t2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(fu5.class), null, v2.f, cg4Var), tc5Var2);
            i01.c(new gi0(ba8Var, x07.a(cu5.class), null, w2.f, cg4Var), tc5Var2);
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<tc5, j59> {
        public static final b f = new b(1);

        @Override // defpackage.nl3
        public final j59 invoke(tc5 tc5Var) {
            tc5 tc5Var2 = tc5Var;
            tc5Var2.getClass();
            cg4 cg4Var = cg4.Singleton;
            zk1 zk1VarA = x07.a(x58.class);
            ba8 ba8Var = bf7.e;
            u4.d(new gi0(ba8Var, zk1VarA, null, bd5.f, cg4Var), tc5Var2);
            u4.d(new gi0(ba8Var, x07.a(o8.class), null, cd5.f, cg4Var), tc5Var2);
            return j59.a;
        }
    }

    public static final n67 a(ze7 ze7Var) {
        return (n67) n2.c(n67.class, ze7Var, p72.d, null);
    }
}
