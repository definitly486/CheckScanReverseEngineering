package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.u8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1302u8 extends MessageNano {
    public static volatile C1302u8[] b;
    public C1250s8 a;

    public C1302u8() {
        a();
    }

    public static C1302u8[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new C1302u8[0];
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
    public final C1302u8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                C1250s8 c1250s8 = this.a;
                if (c1250s8 == null) {
                    c1250s8 = new C1250s8();
                    this.a = c1250s8;
                }
                codedInputByteBufferNano.readMessage(c1250s8);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1250s8 c1250s8 = this.a;
        return c1250s8 != null ? CodedOutputByteBufferNano.computeMessageSize(1, c1250s8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1250s8 c1250s8 = this.a;
        if (c1250s8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1250s8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1302u8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1302u8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1302u8 a() {
        this.a = null;
        this.cachedSize = -1;
        return this;
    }

    public static C1302u8 a(byte[] bArr) {
        return (C1302u8) MessageNano.mergeFrom(new C1302u8(), bArr);
    }
}
