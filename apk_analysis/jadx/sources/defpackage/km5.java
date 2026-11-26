package defpackage;

import android.content.Context;
import android.webkit.MimeTypeMap;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.webkit.ProxyConfig;
import androidx.webkit.internal.AssetHelper;
import coil3.network.HttpException;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class km5 implements u83 {
    public final String a;
    public final zz5 b;
    public final cl4<gm5> c;
    public final fh8 d;
    public final cl4<tx0> e;
    public final h54 f;
    public final cl4<ev1> g;

    public static final class a implements u83.a<b99> {
        public final fh8 a;
        public final fh8 b;
        public final x08<Context, ww1> c;
        public final fh8 d;

        public a(fr2 fr2Var) {
            qo qoVar = new qo(3);
            jm5 jm5Var = jm5.c;
            xn1 xn1Var = new xn1(1);
            this.a = new fh8(fr2Var);
            this.b = nm4.b(qoVar);
            x08<Context, ww1> x08Var = new x08<>();
            x08Var.a = jm5Var;
            x08Var.b = u49.a;
            this.c = x08Var;
            this.d = nm4.b(xn1Var);
        }

        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            b99 b99Var = (b99) obj;
            if (!aa4.e(b99Var.c, ProxyConfig.MATCH_HTTP) && !aa4.e(b99Var.c, ProxyConfig.MATCH_HTTPS)) {
                return null;
            }
            String str = b99Var.a;
            fh8 fh8Var = this.a;
            fh8 fh8Var2 = new fh8(new im5(sy6Var, 0));
            fh8 fh8Var3 = this.b;
            x08<Context, ww1> x08Var = this.c;
            Context context = zz5Var.a;
            Object obj2 = x08Var.b;
            u49 u49Var = u49.a;
            if (obj2 == u49Var) {
                synchronized (x08Var) {
                    obj2 = x08Var.b;
                    if (obj2 == u49Var) {
                        nl3<? super Context, ? extends ww1> nl3Var = x08Var.a;
                        nl3Var.getClass();
                        ww1 ww1VarInvoke = nl3Var.invoke(context);
                        x08Var.b = ww1VarInvoke;
                        x08Var.a = null;
                        obj2 = ww1VarInvoke;
                    }
                }
            }
            return new km5(str, zz5Var, fh8Var, fh8Var2, fh8Var3, new h54(obj2), this.d);
        }
    }

    @bd2(c = "coil3.network.NetworkFetcher", f = "NetworkFetcher.kt", l = {86, 105, 136}, m = "doFetch", v = 1)
    public static final class b extends f02 {
        public r07 l;
        public r07 m;
        public /* synthetic */ Object n;
        public int p;

        public b(e02<? super b> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.n = obj;
            this.p |= Integer.MIN_VALUE;
            return km5.this.b(this);
        }
    }

    @bd2(c = "coil3.network.NetworkFetcher$doFetch$2", f = "NetworkFetcher.kt", l = {TsExtractor.TS_STREAM_TYPE_DTS}, m = "invokeSuspend", v = 1)
    public static final class c extends pg8 implements bm3<vm5, e02<? super x48>, Object> {
        public int l;
        public /* synthetic */ Object m;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = km5.this.new c(e02Var);
            cVar.m = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(vm5 vm5Var, e02<? super x48> e02Var) {
            return ((c) create(vm5Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            vm5 vm5Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            km5 km5Var = km5.this;
            if (i == 0) {
                r57.b(obj);
                vm5 vm5Var2 = (vm5) this.m;
                b58 b58Var = vm5Var2.e;
                if (b58Var == null) {
                    ah.f("body == null");
                    return null;
                }
                this.m = vm5Var2;
                this.l = 1;
                Object objH = km5Var.h(b58Var, this);
                if (objH == a32Var) {
                    return a32Var;
                }
                obj = objH;
                vm5Var = vm5Var2;
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                vm5Var = (vm5) this.m;
                r57.b(obj);
            }
            return new x48((h24) obj, km5.d(km5Var.a, vm5Var.d.a()), z82.NETWORK);
        }
    }

    @bd2(c = "coil3.network.NetworkFetcher$doFetch$fetchResult$1", f = "NetworkFetcher.kt", l = {107, 121}, m = "invokeSuspend", v = 1)
    public static final class d extends pg8 implements bm3<vm5, e02<? super x48>, Object> {
        public r07 l;
        public int m;
        public /* synthetic */ Object n;
        public final /* synthetic */ r07<qn2.c> o;
        public final /* synthetic */ km5 p;
        public final /* synthetic */ r07<vm5> q;
        public final /* synthetic */ tm5 r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(r07<qn2.c> r07Var, km5 km5Var, r07<vm5> r07Var2, tm5 tm5Var, e02<? super d> e02Var) {
            super(2, e02Var);
            this.o = r07Var;
            this.p = km5Var;
            this.q = r07Var2;
            this.r = tm5Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = new d(this.o, this.p, this.q, this.r, e02Var);
            dVar.n = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(vm5 vm5Var, e02<? super x48> e02Var) {
            return ((d) create(vm5Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x009d, code lost:
        
            if (r15 == r0) goto L27;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v4, types: [T, vm5] */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Exception {
            /*
                Method dump skipped, instruction units count: 206
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: km5.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public km5(String str, zz5 zz5Var, fh8 fh8Var, fh8 fh8Var2, fh8 fh8Var3, h54 h54Var, fh8 fh8Var4) {
        this.a = str;
        this.b = zz5Var;
        this.c = fh8Var;
        this.d = fh8Var2;
        this.e = fh8Var3;
        this.f = h54Var;
        this.g = fh8Var4;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0012  */
    public static String d(String str, String str2) {
        String mimeTypeFromExtension;
        if (str2 == null || ra8.C(str2, AssetHelper.DEFAULT_MIME_TYPE, false)) {
            if (ta8.M(str)) {
                mimeTypeFromExtension = null;
            } else {
                String strD0 = ta8.d0(ta8.d0(str, '#'), '?');
                String strB0 = ta8.b0('.', ta8.b0('/', strD0, strD0), "");
                if (ta8.M(strB0)) {
                    mimeTypeFromExtension = null;
                } else {
                    String lowerCase = strB0.toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                    mimeTypeFromExtension = (String) eb5.a.get(lowerCase);
                    if (mimeTypeFromExtension == null) {
                        mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
                    }
                }
            }
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        if (str2 != null) {
            return ta8.c0(str2, ';');
        }
        return null;
    }

    public static void f(vm5 vm5Var) {
        int i = vm5Var.a;
        if ((200 > i || i >= 300) && i != 304) {
            throw new HttpException(jh.b(i, "HTTP "));
        }
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        ev1 value = this.g.getValue();
        String str = this.b.e;
        return value.a(new lm5(1, this, km5.class, "doFetch", "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0), pz2Var);
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0152  */
    /* JADX WARN: Code duplicated, block: B:70:0x0153 A[Catch: Exception -> 0x003d, PHI: r0 r1
      0x0153: PHI (r0v30 java.lang.Object) = (r0v20 java.lang.Object), (r0v1 java.lang.Object) binds: [B:68:0x0150, B:22:0x0048] A[DONT_GENERATE, DONT_INLINE]
      0x0153: PHI (r1v10 r07) = (r1v8 r07), (r1v14 r07) binds: [B:68:0x0150, B:22:0x0048] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {Exception -> 0x003d, blocks: (B:15:0x0038, B:75:0x0171, B:22:0x0048, B:70:0x0153, B:72:0x0157, B:54:0x00f3, B:56:0x00f9, B:60:0x0118, B:62:0x0120, B:65:0x012f, B:66:0x0134, B:67:0x0135, B:39:0x0086, B:41:0x008f, B:48:0x00c2, B:50:0x00ce, B:44:0x00a4, B:46:0x00ae), top: B:85:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0157 A[Catch: Exception -> 0x003d, TryCatch #1 {Exception -> 0x003d, blocks: (B:15:0x0038, B:75:0x0171, B:22:0x0048, B:70:0x0153, B:72:0x0157, B:54:0x00f3, B:56:0x00f9, B:60:0x0118, B:62:0x0120, B:65:0x012f, B:66:0x0134, B:67:0x0135, B:39:0x0086, B:41:0x008f, B:48:0x00c2, B:50:0x00ce, B:44:0x00a4, B:46:0x00ae), top: B:85:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Code duplicated, block: B:90:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x016e, code lost:
    
        if (r0 == r7) goto L74;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v8, types: [T, vm5] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.e02<? super defpackage.b83> r18) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.km5.b(e02):java.lang.Object");
    }

    public final w93 c() {
        w93 fileSystem;
        qn2 qn2Var = (qn2) this.d.getValue();
        return (qn2Var == null || (fileSystem = qn2Var.getFileSystem()) == null) ? this.b.f : fileSystem;
    }

    public final tm5 e() {
        b53.b<pm5> bVar = c24.b;
        zz5 zz5Var = this.b;
        pm5 pm5Var = (pm5) c53.b(zz5Var, bVar);
        pm5Var.getClass();
        pm5.a aVar = new pm5.a(pm5Var);
        sx0 sx0Var = zz5Var.h;
        boolean zA = sx0Var.a();
        boolean z = zz5Var.i.a() && ((ww1) this.f.b).a();
        if (!z && zA) {
            aVar.b("only-if-cached, max-stale=2147483647");
        } else if (!z || zA) {
            if (!z && !zA) {
                aVar.b("no-cache, only-if-cached");
            }
        } else if (sx0Var.d()) {
            aVar.b("no-cache");
        } else {
            aVar.b("no-cache, no-store");
        }
        return new tm5(this.a, (String) c53.b(zz5Var, c24.a), new pm5(n05.l(aVar.a)), (um5) c53.b(zz5Var, c24.c), zz5Var.j);
    }

    public final n93 g(qn2.c cVar) {
        j46 data = cVar.getData();
        w93 w93VarC = c();
        String str = this.b.e;
        if (str == null) {
            str = this.a;
        }
        return i24.a(data, w93VarC, str, cVar, 16);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(b58 b58Var, f02 f02Var) {
        mm5 mm5Var;
        bu0 bu0Var;
        if (f02Var instanceof mm5) {
            mm5Var = (mm5) f02Var;
            int i = mm5Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                mm5Var.o = i - Integer.MIN_VALUE;
            } else {
                mm5Var = new mm5(this, f02Var);
            }
        } else {
            mm5Var = new mm5(this, f02Var);
        }
        Object obj = mm5Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = mm5Var.o;
        if (i2 == 0) {
            r57.b(obj);
            bu0 bu0Var2 = new bu0();
            mm5Var.l = bu0Var2;
            mm5Var.o = 1;
            if (b58Var.a(bu0Var2) == a32Var) {
                return a32Var;
            }
            bu0Var = bu0Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            bu0Var = mm5Var.l;
            r57.b(obj);
        }
        return new a58(bu0Var, c(), null);
    }

    public final vm5 i(qn2.c cVar) throws Throwable {
        Throwable th;
        vm5 vm5VarA;
        try {
            iy6 iy6VarF = c84.f(c().Q(cVar.getMetadata()));
            try {
                vm5VarA = rx0.a(iy6VarF);
                try {
                    iy6VarF.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    iy6VarF.close();
                } catch (Throwable th4) {
                    sj0.c(th3, th4);
                }
                th = th3;
                vm5VarA = null;
            }
            if (th == null) {
                return vm5VarA;
            }
            throw th;
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x010a, code lost:
    
        if (defpackage.j59.a == r0) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(qn2.c r7, defpackage.vm5 r8, defpackage.tm5 r9, defpackage.vm5 r10, defpackage.f02 r11) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.km5.j(qn2$c, vm5, tm5, vm5, f02):java.lang.Object");
    }
}
