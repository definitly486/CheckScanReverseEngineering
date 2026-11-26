package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes.dex */
public final class rx implements Configurator {
    public static final rx a = new rx();

    public static final class a implements ObjectEncoder<hh> {
        public static final a a = new a();
        public static final FieldDescriptor b = FieldDescriptor.of(RemoteConfigConstants.RequestFieldKey.SDK_VERSION);
        public static final FieldDescriptor c = FieldDescriptor.of(CommonUrlParts.MODEL);
        public static final FieldDescriptor d = FieldDescriptor.of("hardware");
        public static final FieldDescriptor e = FieldDescriptor.of("device");
        public static final FieldDescriptor f = FieldDescriptor.of("product");
        public static final FieldDescriptor g = FieldDescriptor.of("osBuild");
        public static final FieldDescriptor h = FieldDescriptor.of(CommonUrlParts.MANUFACTURER);
        public static final FieldDescriptor i = FieldDescriptor.of("fingerprint");
        public static final FieldDescriptor j = FieldDescriptor.of(CommonUrlParts.LOCALE);
        public static final FieldDescriptor k = FieldDescriptor.of("country");
        public static final FieldDescriptor l = FieldDescriptor.of("mccMnc");
        public static final FieldDescriptor m = FieldDescriptor.of("applicationBuild");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            hh hhVar = (hh) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, hhVar.l());
            objectEncoderContext2.add(c, hhVar.i());
            objectEncoderContext2.add(d, hhVar.e());
            objectEncoderContext2.add(e, hhVar.c());
            objectEncoderContext2.add(f, hhVar.k());
            objectEncoderContext2.add(g, hhVar.j());
            objectEncoderContext2.add(h, hhVar.g());
            objectEncoderContext2.add(i, hhVar.d());
            objectEncoderContext2.add(j, hhVar.f());
            objectEncoderContext2.add(k, hhVar.b());
            objectEncoderContext2.add(l, hhVar.h());
            objectEncoderContext2.add(m, hhVar.a());
        }
    }

    public static final class b implements ObjectEncoder<fi0> {
        public static final b a = new b();
        public static final FieldDescriptor b = FieldDescriptor.of("logRequest");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(b, ((fi0) obj).a());
        }
    }

    public static final class c implements ObjectEncoder<wl1> {
        public static final c a = new c();
        public static final FieldDescriptor b = FieldDescriptor.of("clientType");
        public static final FieldDescriptor c = FieldDescriptor.of("androidClientInfo");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            wl1 wl1Var = (wl1) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, wl1Var.b());
            objectEncoderContext2.add(c, wl1Var.a());
        }
    }

    public static final class d implements ObjectEncoder<gr1> {
        public static final d a = new d();
        public static final FieldDescriptor b = FieldDescriptor.of("privacyContext");
        public static final FieldDescriptor c = FieldDescriptor.of("productIdOrigin");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            gr1 gr1Var = (gr1) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, gr1Var.a());
            objectEncoderContext2.add(c, gr1Var.b());
        }
    }

    public static final class e implements ObjectEncoder<p33> {
        public static final e a = new e();
        public static final FieldDescriptor b = FieldDescriptor.of("clearBlob");
        public static final FieldDescriptor c = FieldDescriptor.of("encryptedBlob");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            p33 p33Var = (p33) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, p33Var.a());
            objectEncoderContext2.add(c, p33Var.b());
        }
    }

    public static final class f implements ObjectEncoder<y43> {
        public static final f a = new f();
        public static final FieldDescriptor b = FieldDescriptor.of("originAssociatedProductId");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(b, ((y43) obj).a());
        }
    }

    public static final class g implements ObjectEncoder<z43> {
        public static final g a = new g();
        public static final FieldDescriptor b = FieldDescriptor.of("prequest");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(b, ((z43) obj).a());
        }
    }

    public static final class h implements ObjectEncoder<tu4> {
        public static final h a = new h();
        public static final FieldDescriptor b = FieldDescriptor.of("eventTimeMs");
        public static final FieldDescriptor c = FieldDescriptor.of("eventCode");
        public static final FieldDescriptor d = FieldDescriptor.of("complianceData");
        public static final FieldDescriptor e = FieldDescriptor.of("eventUptimeMs");
        public static final FieldDescriptor f = FieldDescriptor.of("sourceExtension");
        public static final FieldDescriptor g = FieldDescriptor.of("sourceExtensionJsonProto3");
        public static final FieldDescriptor h = FieldDescriptor.of("timezoneOffsetSeconds");
        public static final FieldDescriptor i = FieldDescriptor.of("networkConnectionInfo");
        public static final FieldDescriptor j = FieldDescriptor.of("experimentIds");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            tu4 tu4Var = (tu4) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, tu4Var.c());
            objectEncoderContext2.add(c, tu4Var.b());
            objectEncoderContext2.add(d, tu4Var.a());
            objectEncoderContext2.add(e, tu4Var.d());
            objectEncoderContext2.add(f, tu4Var.g());
            objectEncoderContext2.add(g, tu4Var.h());
            objectEncoderContext2.add(h, tu4Var.i());
            objectEncoderContext2.add(i, tu4Var.f());
            objectEncoderContext2.add(j, tu4Var.e());
        }
    }

    public static final class i implements ObjectEncoder<av4> {
        public static final i a = new i();
        public static final FieldDescriptor b = FieldDescriptor.of("requestTimeMs");
        public static final FieldDescriptor c = FieldDescriptor.of("requestUptimeMs");
        public static final FieldDescriptor d = FieldDescriptor.of("clientInfo");
        public static final FieldDescriptor e = FieldDescriptor.of("logSource");
        public static final FieldDescriptor f = FieldDescriptor.of("logSourceName");
        public static final FieldDescriptor g = FieldDescriptor.of("logEvent");
        public static final FieldDescriptor h = FieldDescriptor.of("qosTier");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            av4 av4Var = (av4) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, av4Var.f());
            objectEncoderContext2.add(c, av4Var.g());
            objectEncoderContext2.add(d, av4Var.a());
            objectEncoderContext2.add(e, av4Var.c());
            objectEncoderContext2.add(f, av4Var.d());
            objectEncoderContext2.add(g, av4Var.b());
            objectEncoderContext2.add(h, av4Var.e());
        }
    }

    public static final class j implements ObjectEncoder<hm5> {
        public static final j a = new j();
        public static final FieldDescriptor b = FieldDescriptor.of("networkType");
        public static final FieldDescriptor c = FieldDescriptor.of("mobileSubtype");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            hm5 hm5Var = (hm5) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, hm5Var.b());
            objectEncoderContext2.add(c, hm5Var.a());
        }
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public final void configure(EncoderConfig<?> encoderConfig) {
        b bVar = b.a;
        encoderConfig.registerEncoder(fi0.class, bVar);
        encoderConfig.registerEncoder(ny.class, bVar);
        i iVar = i.a;
        encoderConfig.registerEncoder(av4.class, iVar);
        encoderConfig.registerEncoder(zy.class, iVar);
        c cVar = c.a;
        encoderConfig.registerEncoder(wl1.class, cVar);
        encoderConfig.registerEncoder(oy.class, cVar);
        a aVar = a.a;
        encoderConfig.registerEncoder(hh.class, aVar);
        encoderConfig.registerEncoder(ky.class, aVar);
        h hVar = h.a;
        encoderConfig.registerEncoder(tu4.class, hVar);
        encoderConfig.registerEncoder(yy.class, hVar);
        d dVar = d.a;
        encoderConfig.registerEncoder(gr1.class, dVar);
        encoderConfig.registerEncoder(py.class, dVar);
        g gVar = g.a;
        encoderConfig.registerEncoder(z43.class, gVar);
        encoderConfig.registerEncoder(wy.class, gVar);
        f fVar = f.a;
        encoderConfig.registerEncoder(y43.class, fVar);
        encoderConfig.registerEncoder(vy.class, fVar);
        j jVar = j.a;
        encoderConfig.registerEncoder(hm5.class, jVar);
        encoderConfig.registerEncoder(bz.class, jVar);
        e eVar = e.a;
        encoderConfig.registerEncoder(p33.class, eVar);
        encoderConfig.registerEncoder(uy.class, eVar);
    }
}
