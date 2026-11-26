package defpackage;

import androidx.tracing.Trace;
import androidx.work.WorkInfo;
import com.google.android.gms.internal.mlkit_common.zzba;
import com.google.android.gms.internal.mlkit_common.zzbc;
import com.google.android.gms.internal.mlkit_common.zzbd;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.tapjoy.TJKeyValueStorageKt;
import defpackage.uwa;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class uwa implements ObjectEncoderContext {
    public static final Charset f = Charset.forName("UTF-8");
    public static final FieldDescriptor g = zg.e(1, FieldDescriptor.builder(TJKeyValueStorageKt.KEY));
    public static final FieldDescriptor h = zg.e(2, FieldDescriptor.builder("value"));
    public static final zzbd i = new ObjectEncoder() { // from class: com.google.android.gms.internal.mlkit_common.zzbd
        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            Map.Entry entry = (Map.Entry) obj;
            ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
            objectEncoderContext2.add(uwa.g, entry.getKey());
            objectEncoderContext2.add(uwa.h, entry.getValue());
        }
    };
    public OutputStream a;
    public final HashMap b;
    public final HashMap c;
    public final ObjectEncoder d;
    public final exa e = new exa(this);

    public uwa(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, ObjectEncoder objectEncoder) {
        this.a = byteArrayOutputStream;
        this.b = map;
        this.c = map2;
        this.d = objectEncoder;
    }

    public static int g(FieldDescriptor fieldDescriptor) {
        zzbc zzbcVar = (zzbc) fieldDescriptor.getProperty(zzbc.class);
        if (zzbcVar != null) {
            return zzbcVar.zza();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    public final void a(FieldDescriptor fieldDescriptor, double d, boolean z) throws IOException {
        if (z && d == 0.0d) {
            return;
        }
        i((g(fieldDescriptor) << 3) | 1);
        this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(d).array());
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, double d) throws IOException {
        a(FieldDescriptor.of(str), d, true);
        return this;
    }

    public final void b(FieldDescriptor fieldDescriptor, float f2, boolean z) throws IOException {
        if (z && f2 == 0.0f) {
            return;
        }
        i((g(fieldDescriptor) << 3) | 5);
        this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(f2).array());
    }

    public final void c(FieldDescriptor fieldDescriptor, Object obj, boolean z) throws IOException {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return;
            }
            i((g(fieldDescriptor) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            i(bytes.length);
            this.a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                c(fieldDescriptor, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                h(i, fieldDescriptor, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            a(fieldDescriptor, ((Double) obj).doubleValue(), z);
            return;
        }
        if (obj instanceof Float) {
            b(fieldDescriptor, ((Float) obj).floatValue(), z);
            return;
        }
        if (obj instanceof Number) {
            e(fieldDescriptor, ((Number) obj).longValue(), z);
            return;
        }
        if (obj instanceof Boolean) {
            d(fieldDescriptor, ((Boolean) obj).booleanValue() ? 1 : 0, z);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return;
            }
            i((g(fieldDescriptor) << 3) | 2);
            i(bArr.length);
            this.a.write(bArr);
            return;
        }
        ObjectEncoder objectEncoder = (ObjectEncoder) this.b.get(obj.getClass());
        if (objectEncoder != null) {
            h(objectEncoder, fieldDescriptor, obj, z);
            return;
        }
        ValueEncoder valueEncoder = (ValueEncoder) this.c.get(obj.getClass());
        if (valueEncoder != null) {
            exa exaVar = this.e;
            exaVar.a = false;
            exaVar.c = fieldDescriptor;
            exaVar.b = z;
            valueEncoder.encode(obj, exaVar);
            return;
        }
        if (obj instanceof zzba) {
            d(fieldDescriptor, ((zzba) obj).zza(), true);
        } else if (obj instanceof Enum) {
            d(fieldDescriptor, ((Enum) obj).ordinal(), true);
        } else {
            h(this.d, fieldDescriptor, obj, z);
        }
    }

    public final void d(FieldDescriptor fieldDescriptor, int i2, boolean z) throws IOException {
        if (z && i2 == 0) {
            return;
        }
        zzbc zzbcVar = (zzbc) fieldDescriptor.getProperty(zzbc.class);
        if (zzbcVar == null) {
            throw new EncodingException("Field has no @Protobuf config");
        }
        int iOrdinal = zzbcVar.zzb().ordinal();
        if (iOrdinal == 0) {
            i(zzbcVar.zza() << 3);
            i(i2);
        } else if (iOrdinal == 1) {
            i(zzbcVar.zza() << 3);
            i((i2 + i2) ^ (i2 >> 31));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            i((zzbcVar.zza() << 3) | 5);
            this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i2).array());
        }
    }

    public final void e(FieldDescriptor fieldDescriptor, long j, boolean z) throws IOException {
        if (z && j == 0) {
            return;
        }
        zzbc zzbcVar = (zzbc) fieldDescriptor.getProperty(zzbc.class);
        if (zzbcVar == null) {
            throw new EncodingException("Field has no @Protobuf config");
        }
        int iOrdinal = zzbcVar.zzb().ordinal();
        if (iOrdinal == 0) {
            i(zzbcVar.zza() << 3);
            j(j);
        } else if (iOrdinal == 1) {
            i(zzbcVar.zza() << 3);
            j((j >> 63) ^ (j + j));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            i((zzbcVar.zza() << 3) | 1);
            this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
        }
    }

    public final void f(Object obj) {
        if (obj == null) {
            return;
        }
        ObjectEncoder objectEncoder = (ObjectEncoder) this.b.get(obj.getClass());
        if (objectEncoder == null) {
            throw new EncodingException("No encoder for ".concat(String.valueOf(obj.getClass())));
        }
        objectEncoder.encode(obj, this);
    }

    public final void h(ObjectEncoder objectEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) throws IOException {
        sva svaVar = new sva();
        svaVar.b = 0L;
        try {
            OutputStream outputStream = this.a;
            this.a = svaVar;
            try {
                objectEncoder.encode(obj, this);
                this.a = outputStream;
                long j = svaVar.b;
                svaVar.close();
                if (z && j == 0) {
                    return;
                }
                i((g(fieldDescriptor) << 3) | 2);
                j(j);
                objectEncoder.encode(obj, this);
            } catch (Throwable th) {
                this.a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                svaVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void i(int i2) throws IOException {
        while (true) {
            long j = i2 & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            int i3 = i2 & Trace.MAX_TRACE_LABEL_LENGTH;
            OutputStream outputStream = this.a;
            if (j == 0) {
                outputStream.write(i3);
                return;
            } else {
                outputStream.write(i3 | 128);
                i2 >>>= 7;
            }
        }
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext inline(Object obj) {
        f(obj);
        return this;
    }

    public final void j(long j) throws IOException {
        while (true) {
            long j2 = (-128) & j;
            int i2 = ((int) j) & Trace.MAX_TRACE_LABEL_LENGTH;
            OutputStream outputStream = this.a;
            if (j2 == 0) {
                outputStream.write(i2);
                return;
            } else {
                outputStream.write(i2 | 128);
                j >>>= 7;
            }
        }
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext nested(String str) {
        nested(FieldDescriptor.of(str));
        throw null;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, float f2) throws IOException {
        b(fieldDescriptor, f2, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext nested(FieldDescriptor fieldDescriptor) {
        throw new EncodingException("nested() is not implemented for protobuf encoding.");
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, int i2) throws IOException {
        d(fieldDescriptor, i2, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, long j) throws IOException {
        e(fieldDescriptor, j, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj) throws IOException {
        c(fieldDescriptor, obj, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, boolean z) throws IOException {
        d(fieldDescriptor, z ? 1 : 0, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, double d) throws IOException {
        a(fieldDescriptor, d, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, int i2) throws IOException {
        d(FieldDescriptor.of(str), i2, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, long j) throws IOException {
        e(FieldDescriptor.of(str), j, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, Object obj) throws IOException {
        c(FieldDescriptor.of(str), obj, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, boolean z) throws IOException {
        d(FieldDescriptor.of(str), z ? 1 : 0, true);
        return this;
    }
}
