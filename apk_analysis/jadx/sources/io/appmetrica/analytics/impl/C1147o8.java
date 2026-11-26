package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.o8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1147o8 extends MessageNano {
    public static volatile C1147o8[] b;
    public C1173p8 a;

    public C1147o8() {
        a();
    }

    public static C1147o8[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new C1147o8[0];
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
    public final C1147o8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                C1173p8 c1173p8 = this.a;
                if (c1173p8 == null) {
                    c1173p8 = new C1173p8();
                    this.a = c1173p8;
                }
                codedInputByteBufferNano.readMessage(c1173p8);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1173p8 c1173p8 = this.a;
        return c1173p8 != null ? CodedOutputByteBufferNano.computeMessageSize(1, c1173p8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1173p8 c1173p8 = this.a;
        if (c1173p8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1173p8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1147o8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1147o8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1147o8 a() {
        this.a = null;
        this.cachedSize = -1;
        return this;
    }

    public static C1147o8 a(byte[] bArr) {
        return (C1147o8) MessageNano.mergeFrom(new C1147o8(), bArr);
    }
}
