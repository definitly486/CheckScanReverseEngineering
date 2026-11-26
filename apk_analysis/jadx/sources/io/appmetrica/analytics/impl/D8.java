package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class D8 extends MessageNano {
    public static volatile D8[] c;
    public C1402y8 a;
    public A8 b;

    public D8() {
        a();
    }

    public static D8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new D8[0];
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
    public final D8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                C1402y8 c1402y8 = this.a;
                if (c1402y8 == null) {
                    c1402y8 = new C1402y8();
                    this.a = c1402y8;
                }
                codedInputByteBufferNano.readMessage(c1402y8);
            } else if (tag == 18) {
                A8 a8 = this.b;
                if (a8 == null) {
                    a8 = new A8();
                    this.b = a8;
                }
                codedInputByteBufferNano.readMessage(a8);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1402y8 c1402y8 = this.a;
        if (c1402y8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1402y8);
        }
        A8 a8 = this.b;
        return a8 != null ? CodedOutputByteBufferNano.computeMessageSize(2, a8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1402y8 c1402y8 = this.a;
        if (c1402y8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1402y8);
        }
        A8 a8 = this.b;
        if (a8 != null) {
            codedOutputByteBufferNano.writeMessage(2, a8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static D8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new D8().mergeFrom(codedInputByteBufferNano);
    }

    public final D8 a() {
        this.a = null;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    public static D8 a(byte[] bArr) {
        return (D8) MessageNano.mergeFrom(new D8(), bArr);
    }
}
