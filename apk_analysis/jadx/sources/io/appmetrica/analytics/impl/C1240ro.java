package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ro, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1240ro extends MessageNano {
    public static final int e = 0;
    public static final int f = 1;
    public static final int g = 2;
    public static final int h = 3;
    public static volatile C1240ro[] i;
    public byte[] a;
    public int b;
    public C1266so c;
    public C1292to d;

    public C1240ro() {
        a();
    }

    public static C1240ro[] b() {
        if (i == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (i == null) {
                        i = new C1240ro[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return i;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1240ro mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 16) {
                int int32 = codedInputByteBufferNano.readInt32();
                if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3) {
                    this.b = int32;
                }
            } else if (tag == 26) {
                C1266so c1266so = this.c;
                if (c1266so == null) {
                    c1266so = new C1266so();
                    this.c = c1266so;
                }
                codedInputByteBufferNano.readMessage(c1266so);
            } else if (tag == 34) {
                C1292to c1292to = this.d;
                if (c1292to == null) {
                    c1292to = new C1292to();
                    this.d = c1292to;
                }
                codedInputByteBufferNano.readMessage(c1292to);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeInt32Size = CodedOutputByteBufferNano.computeInt32Size(2, this.b) + CodedOutputByteBufferNano.computeBytesSize(1, this.a) + super.computeSerializedSize();
        C1266so c1266so = this.c;
        if (c1266so != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(3, c1266so);
        }
        C1292to c1292to = this.d;
        return c1292to != null ? CodedOutputByteBufferNano.computeMessageSize(4, c1292to) + iComputeInt32Size : iComputeInt32Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        codedOutputByteBufferNano.writeBytes(1, this.a);
        codedOutputByteBufferNano.writeInt32(2, this.b);
        C1266so c1266so = this.c;
        if (c1266so != null) {
            codedOutputByteBufferNano.writeMessage(3, c1266so);
        }
        C1292to c1292to = this.d;
        if (c1292to != null) {
            codedOutputByteBufferNano.writeMessage(4, c1292to);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1240ro b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1240ro().mergeFrom(codedInputByteBufferNano);
    }

    public final C1240ro a() {
        this.a = WireFormatNano.EMPTY_BYTES;
        this.b = 0;
        this.c = null;
        this.d = null;
        this.cachedSize = -1;
        return this;
    }

    public static C1240ro a(byte[] bArr) {
        return (C1240ro) MessageNano.mergeFrom(new C1240ro(), bArr);
    }
}
