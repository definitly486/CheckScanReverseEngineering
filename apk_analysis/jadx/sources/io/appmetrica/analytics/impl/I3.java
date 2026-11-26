package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class I3 extends MessageNano {
    public static volatile I3[] c;
    public K3 a;
    public int b;

    public I3() {
        a();
    }

    public static I3[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new I3[0];
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
    public final I3 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                K3 k3 = this.a;
                if (k3 == null) {
                    k3 = new K3();
                    this.a = k3;
                }
                codedInputByteBufferNano.readMessage(k3);
            } else if (tag == 16) {
                int int32 = codedInputByteBufferNano.readInt32();
                if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3) {
                    this.b = int32;
                }
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        K3 k3 = this.a;
        if (k3 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, k3);
        }
        int i = this.b;
        return i != 0 ? CodedOutputByteBufferNano.computeInt32Size(2, i) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        K3 k3 = this.a;
        if (k3 != null) {
            codedOutputByteBufferNano.writeMessage(1, k3);
        }
        int i = this.b;
        if (i != 0) {
            codedOutputByteBufferNano.writeInt32(2, i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static I3 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new I3().mergeFrom(codedInputByteBufferNano);
    }

    public final I3 a() {
        this.a = null;
        this.b = 0;
        this.cachedSize = -1;
        return this;
    }

    public static I3 a(byte[] bArr) {
        return (I3) MessageNano.mergeFrom(new I3(), bArr);
    }
}
