package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.t8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1276t8 extends MessageNano {
    public static volatile C1276t8[] c;
    public int a;
    public C1173p8 b;

    public C1276t8() {
        a();
    }

    public static C1276t8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C1276t8[0];
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
    public final C1276t8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readUInt32();
            } else if (tag == 18) {
                C1173p8 c1173p8 = this.b;
                if (c1173p8 == null) {
                    c1173p8 = new C1173p8();
                    this.b = c1173p8;
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
        int i = this.a;
        if (i != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i);
        }
        C1173p8 c1173p8 = this.b;
        return c1173p8 != null ? CodedOutputByteBufferNano.computeMessageSize(2, c1173p8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i = this.a;
        if (i != 0) {
            codedOutputByteBufferNano.writeUInt32(1, i);
        }
        C1173p8 c1173p8 = this.b;
        if (c1173p8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1173p8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1276t8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1276t8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1276t8 a() {
        this.a = 0;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    public static C1276t8 a(byte[] bArr) {
        return (C1276t8) MessageNano.mergeFrom(new C1276t8(), bArr);
    }
}
