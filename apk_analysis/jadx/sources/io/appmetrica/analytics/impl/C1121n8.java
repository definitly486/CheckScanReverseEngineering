package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1121n8 extends MessageNano {
    public static volatile C1121n8[] c;
    public byte[] a;
    public C1224r8 b;

    public C1121n8() {
        a();
    }

    public static C1121n8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C1121n8[0];
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
    public final C1121n8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 18) {
                C1224r8 c1224r8 = this.b;
                if (c1224r8 == null) {
                    c1224r8 = new C1224r8();
                    this.b = c1224r8;
                }
                codedInputByteBufferNano.readMessage(c1224r8);
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
        C1224r8 c1224r8 = this.b;
        return c1224r8 != null ? CodedOutputByteBufferNano.computeMessageSize(2, c1224r8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        C1224r8 c1224r8 = this.b;
        if (c1224r8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1224r8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1121n8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1121n8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1121n8 a() {
        this.a = WireFormatNano.EMPTY_BYTES;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    public static C1121n8 a(byte[] bArr) {
        return (C1121n8) MessageNano.mergeFrom(new C1121n8(), bArr);
    }
}
