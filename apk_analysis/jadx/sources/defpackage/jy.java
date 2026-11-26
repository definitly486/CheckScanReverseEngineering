package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;

/* JADX INFO: loaded from: classes.dex */
public final class jy implements Configurator {
    public static final jy a = new jy();

    public static final class a implements ObjectEncoder<zl1> {
        public static final a a = new a();
        public static final FieldDescriptor b = j2.b(1, FieldDescriptor.builder("window"));
        public static final FieldDescriptor c = j2.b(2, FieldDescriptor.builder("logSourceMetrics"));
        public static final FieldDescriptor d = j2.b(3, FieldDescriptor.builder("globalMetrics"));
        public static final FieldDescriptor e = j2.b(4, FieldDescriptor.builder("appNamespace"));

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            zl1 zl1Var = (zl1) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, zl1Var.a);
            objectEncoderContext2.add(c, zl1Var.b);
            objectEncoderContext2.add(d, zl1Var.c);
            objectEncoderContext2.add(e, zl1Var.d);
        }
    }

    public static final class b implements ObjectEncoder<dr3> {
        public static final b a = new b();
        public static final FieldDescriptor b = j2.b(1, FieldDescriptor.builder("storageMetrics"));

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(b, ((dr3) obj).a);
        }
    }

    public static final class c implements ObjectEncoder<uu4> {
        public static final c a = new c();
        public static final FieldDescriptor b = j2.b(1, FieldDescriptor.builder("eventsDroppedCount"));
        public static final FieldDescriptor c = j2.b(3, FieldDescriptor.builder("reason"));

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            uu4 uu4Var = (uu4) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, uu4Var.a);
            objectEncoderContext2.add(c, uu4Var.b);
        }
    }

    public static final class d implements ObjectEncoder<bv4> {
        public static final d a = new d();
        public static final FieldDescriptor b = j2.b(1, FieldDescriptor.builder("logSource"));
        public static final FieldDescriptor c = j2.b(2, FieldDescriptor.builder("logEventDropped"));

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            bv4 bv4Var = (bv4) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, bv4Var.a);
            objectEncoderContext2.add(c, bv4Var.b);
        }
    }

    public static final class e implements ObjectEncoder<ls6> {
        public static final e a = new e();
        public static final FieldDescriptor b = FieldDescriptor.of("clientMetrics");

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(b, ((ls6) obj).a());
        }
    }

    public static final class f implements ObjectEncoder<b98> {
        public static final f a = new f();
        public static final FieldDescriptor b = j2.b(1, FieldDescriptor.builder("currentCacheSizeBytes"));
        public static final FieldDescriptor c = j2.b(2, FieldDescriptor.builder("maxCacheSizeBytes"));

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            b98 b98Var = (b98) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, b98Var.a);
            objectEncoderContext2.add(c, b98Var.b);
        }
    }

    public static final class g implements ObjectEncoder<rv8> {
        public static final g a = new g();
        public static final FieldDescriptor b = j2.b(1, FieldDescriptor.builder("startMs"));
        public static final FieldDescriptor c = j2.b(2, FieldDescriptor.builder("endMs"));

        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            rv8 rv8Var = (rv8) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(b, rv8Var.a);
            objectEncoderContext2.add(c, rv8Var.b);
        }
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public final void configure(EncoderConfig<?> encoderConfig) {
        encoderConfig.registerEncoder(ls6.class, e.a);
        encoderConfig.registerEncoder(zl1.class, a.a);
        encoderConfig.registerEncoder(rv8.class, g.a);
        encoderConfig.registerEncoder(bv4.class, d.a);
        encoderConfig.registerEncoder(uu4.class, c.a);
        encoderConfig.registerEncoder(dr3.class, b.a);
        encoderConfig.registerEncoder(b98.class, f.a);
    }
}
