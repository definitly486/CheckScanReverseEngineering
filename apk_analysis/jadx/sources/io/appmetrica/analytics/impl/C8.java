package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class C8 extends MessageNano {
    public static volatile C8[] c;
    public C1402y8 a;
    public B8 b;

    public C8() {
        a();
    }

    public static C8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C8[0];
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
    public final C8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
                B8 b8 = this.b;
                if (b8 == null) {
                    b8 = new B8();
                    this.b = b8;
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
        C1402y8 c1402y8 = this.a;
        if (c1402y8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1402y8);
        }
        B8 b8 = this.b;
        return b8 != null ? CodedOutputByteBufferNano.computeMessageSize(2, b8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1402y8 c1402y8 = this.a;
        if (c1402y8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1402y8);
        }
        B8 b8 = this.b;
        if (b8 != null) {
            codedOutputByteBufferNano.writeMessage(2, b8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C8().mergeFrom(codedInputByteBufferNano);
    }

    public final C8 a() {
        this.a = null;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    public static C8 a(byte[] bArr) {
        return (C8) MessageNano.mergeFrom(new C8(), bArr);
    }
}
