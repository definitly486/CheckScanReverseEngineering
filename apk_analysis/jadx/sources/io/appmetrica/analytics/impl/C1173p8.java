package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.p8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1173p8 extends MessageNano {
    public static volatile C1173p8[] e;
    public C1402y8 a;
    public A8 b;
    public C1224r8 c;
    public C1377x8 d;

    public C1173p8() {
        a();
    }

    public static C1173p8[] b() {
        if (e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (e == null) {
                        e = new C1173p8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1173p8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
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
            } else if (tag == 26) {
                C1224r8 c1224r8 = this.c;
                if (c1224r8 == null) {
                    c1224r8 = new C1224r8();
                    this.c = c1224r8;
                }
                codedInputByteBufferNano.readMessage(c1224r8);
            } else if (tag == 34) {
                C1377x8 c1377x8 = this.d;
                if (c1377x8 == null) {
                    c1377x8 = new C1377x8();
                    this.d = c1377x8;
                }
                codedInputByteBufferNano.readMessage(c1377x8);
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
        if (a8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, a8);
        }
        C1224r8 c1224r8 = this.c;
        if (c1224r8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1224r8);
        }
        C1377x8 c1377x8 = this.d;
        return c1377x8 != null ? CodedOutputByteBufferNano.computeMessageSize(4, c1377x8) + iComputeSerializedSize : iComputeSerializedSize;
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
        C1224r8 c1224r8 = this.c;
        if (c1224r8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c1224r8);
        }
        C1377x8 c1377x8 = this.d;
        if (c1377x8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1377x8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1173p8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1173p8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1173p8 a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.cachedSize = -1;
        return this;
    }

    public static C1173p8 a(byte[] bArr) {
        return (C1173p8) MessageNano.mergeFrom(new C1173p8(), bArr);
    }
}
