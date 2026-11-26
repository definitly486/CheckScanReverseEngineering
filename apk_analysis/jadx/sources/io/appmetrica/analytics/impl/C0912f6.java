package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.f6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0912f6 extends MessageNano {
    public static volatile C0912f6[] c;
    public byte[] a;
    public C1015j6 b;

    public C0912f6() {
        a();
    }

    public static C0912f6[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C0912f6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0912f6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 18) {
                C1015j6 c1015j6 = this.b;
                if (c1015j6 == null) {
                    c1015j6 = new C1015j6();
                    this.b = c1015j6;
                }
                codedInputByteBufferNano.readMessage(c1015j6);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.a, WireFormatNano.EMPTY_BYTES)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.a);
        }
        C1015j6 c1015j6 = this.b;
        return c1015j6 != null ? CodedOutputByteBufferNano.computeMessageSize(2, c1015j6) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        C1015j6 c1015j6 = this.b;
        if (c1015j6 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1015j6);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C0912f6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C0912f6().mergeFrom(codedInputByteBufferNano);
    }

    public final C0912f6 a() {
        this.a = WireFormatNano.EMPTY_BYTES;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    public static C0912f6 a(byte[] bArr) {
        return (C0912f6) MessageNano.mergeFrom(new C0912f6(), bArr);
    }
}
