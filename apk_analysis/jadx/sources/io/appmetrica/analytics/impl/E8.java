package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class E8 extends MessageNano {
    public static volatile E8[] b;
    public B8 a;

    public E8() {
        a();
    }

    public static E8[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new E8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final E8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                B8 b8 = this.a;
                if (b8 == null) {
                    b8 = new B8();
                    this.a = b8;
                }
                codedInputByteBufferNano.readMessage(b8);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        B8 b8 = this.a;
        return b8 != null ? CodedOutputByteBufferNano.computeMessageSize(1, b8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        B8 b8 = this.a;
        if (b8 != null) {
            codedOutputByteBufferNano.writeMessage(1, b8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static E8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new E8().mergeFrom(codedInputByteBufferNano);
    }

    public final E8 a() {
        this.a = null;
        this.cachedSize = -1;
        return this;
    }

    public static E8 a(byte[] bArr) {
        return (E8) MessageNano.mergeFrom(new E8(), bArr);
    }
}
