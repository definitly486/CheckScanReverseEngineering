package defpackage;

import androidx.tracing.Trace;
import androidx.work.WorkInfo;
import com.google.android.gms.internal.mlkit_vision_common.zzag;
import com.google.android.gms.internal.mlkit_vision_common.zzai;
import com.google.android.gms.internal.mlkit_vision_common.zzaj;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.tapjoy.TJKeyValueStorageKt;
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
public final class xta implements ObjectEncoderContext {
    public static final Charset f = Charset.forName("UTF-8");
    public static final FieldDescriptor g = w7.d(1, FieldDescriptor.builder(TJKeyValueStorageKt.KEY));
    public static final FieldDescriptor h = w7.d(2, FieldDescriptor.builder("value"));
    public static final zzaj i = zzaj.zza;
    public OutputStream a;
    public final HashMap b;
    public final HashMap c;
    public final ObjectEncoder d;
    public final lua e = new lua(this);

    public xta(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, ObjectEncoder objectEncoder) {
        this.a = byteArrayOutputStream;
        this.b = map;
        this.c = map2;
        this.d = objectEncoder;
    }

    public static int g(FieldDescriptor fieldDescriptor) {
        zzai zzaiVar = (zzai) fieldDescriptor.getProperty(zzai.class);
        if (zzaiVar != null) {
            return zzaiVar.zza();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    public final void a(FieldDescriptor fieldDescriptor, double d, boolean z) {
        if (z && d == 0.0d) {
            return;
        }
        i((g(fieldDescriptor) << 3) | 1);
        this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(d).array());
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, double d) {
        a(FieldDescriptor.of(str), d, true);
        return this;
    }

    public final void b(FieldDescriptor fieldDescriptor, float f2, boolean z) {
        if (z && f2 == 0.0f) {
            return;
        }
        i((g(fieldDescriptor) << 3) | 5);
        this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(f2).array());
    }

    public final void c(FieldDescriptor fieldDescriptor, Object obj, boolean z) {
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
            lua luaVar = this.e;
            luaVar.a = false;
            luaVar.c = fieldDescriptor;
            luaVar.b = z;
            valueEncoder.encode(obj, luaVar);
            return;
        }
        if (obj instanceof zzag) {
            d(fieldDescriptor, ((zzag) obj).zza(), true);
        } else if (obj instanceof Enum) {
            d(fieldDescriptor, ((Enum) obj).ordinal(), true);
        } else {
            h(this.d, fieldDescriptor, obj, z);
        }
    }

    public final void d(FieldDescriptor fieldDescriptor, int i2, boolean z) {
        if (z && i2 == 0) {
            return;
        }
        zzai zzaiVar = (zzai) fieldDescriptor.getProperty(zzai.class);
        if (zzaiVar == null) {
            throw new EncodingException("Field has no @Protobuf config");
        }
        int iOrdinal = zzaiVar.zzb().ordinal();
        if (iOrdinal == 0) {
            i(zzaiVar.zza() << 3);
            i(i2);
        } else if (iOrdinal == 1) {
            i(zzaiVar.zza() << 3);
            i((i2 + i2) ^ (i2 >> 31));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            i((zzaiVar.zza() << 3) | 5);
            this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i2).array());
        }
    }

    public final void e(FieldDescriptor fieldDescriptor, long j, boolean z) {
        if (z && j == 0) {
            return;
        }
        zzai zzaiVar = (zzai) fieldDescriptor.getProperty(zzai.class);
        if (zzaiVar == null) {
            throw new EncodingException("Field has no @Protobuf config");
        }
        int iOrdinal = zzaiVar.zzb().ordinal();
        if (iOrdinal == 0) {
            i(zzaiVar.zza() << 3);
            j(j);
        } else if (iOrdinal == 1) {
            i(zzaiVar.zza() << 3);
            j((j >> 63) ^ (j + j));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            i((zzaiVar.zza() << 3) | 1);
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
        esa esaVar = new esa();
        esaVar.b = 0L;
        try {
            OutputStream outputStream = this.a;
            this.a = esaVar;
            try {
                objectEncoder.encode(obj, this);
                this.a = outputStream;
                long j = esaVar.b;
                esaVar.close();
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
                esaVar.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public final void i(int i2) throws IOException {
        while (true) {
            long j = i2 & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            OutputStream outputStream = this.a;
            if (j == 0) {
                outputStream.write(i2 & Trace.MAX_TRACE_LABEL_LENGTH);
                return;
            } else {
                outputStream.write((i2 & Trace.MAX_TRACE_LABEL_LENGTH) | 128);
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
            OutputStream outputStream = this.a;
            if (j2 == 0) {
                outputStream.write(((int) j) & Trace.MAX_TRACE_LABEL_LENGTH);
                return;
            } else {
                outputStream.write((((int) j) & Trace.MAX_TRACE_LABEL_LENGTH) | 128);
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
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, float f2) {
        b(fieldDescriptor, f2, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext nested(FieldDescriptor fieldDescriptor) {
        throw new EncodingException("nested() is not implemented for protobuf encoding.");
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, int i2) {
        d(fieldDescriptor, i2, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, long j) {
        e(fieldDescriptor, j, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj) {
        c(fieldDescriptor, obj, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final /* synthetic */ ObjectEncoderContext add(FieldDescriptor fieldDescriptor, boolean z) {
        d(fieldDescriptor, z ? 1 : 0, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(FieldDescriptor fieldDescriptor, double d) {
        a(fieldDescriptor, d, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, int i2) {
        d(FieldDescriptor.of(str), i2, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, long j) {
        e(FieldDescriptor.of(str), j, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, Object obj) {
        c(FieldDescriptor.of(str), obj, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext add(String str, boolean z) {
        d(FieldDescriptor.of(str), z ? 1 : 0, true);
        return this;
    }
}
