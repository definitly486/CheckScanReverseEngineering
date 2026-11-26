package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.r9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1225r9 extends MessageNano {
    public static final int d = 0;
    public static final int e = 1;
    public static final int f = 2;
    public static volatile C1225r9[] g;
    public C1303u9 a;
    public String b;
    public int c;

    public C1225r9() {
        a();
    }

    public static C1225r9[] b() {
        if (g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (g == null) {
                        g = new C1225r9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1225r9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                C1303u9 c1303u9 = this.a;
                if (c1303u9 == null) {
                    c1303u9 = new C1303u9();
                    this.a = c1303u9;
                }
                codedInputByteBufferNano.readMessage(c1303u9);
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readString();
            } else if (tag == 40) {
                int int32 = codedInputByteBufferNano.readInt32();
                if (int32 == 0 || int32 == 1 || int32 == 2) {
                    this.c = int32;
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
        C1303u9 c1303u9 = this.a;
        if (c1303u9 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1303u9);
        }
        int iComputeStringSize = CodedOutputByteBufferNano.computeStringSize(2, this.b) + iComputeSerializedSize;
        int i = this.c;
        return i != 0 ? CodedOutputByteBufferNano.computeInt32Size(5, i) + iComputeStringSize : iComputeStringSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        C1303u9 c1303u9 = this.a;
        if (c1303u9 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1303u9);
        }
        codedOutputByteBufferNano.writeString(2, this.b);
        int i = this.c;
        if (i != 0) {
            codedOutputByteBufferNano.writeInt32(5, i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1225r9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1225r9().mergeFrom(codedInputByteBufferNano);
    }

    public final C1225r9 a() {
        this.a = null;
        this.b = "";
        this.c = 0;
        this.cachedSize = -1;
        return this;
    }

    public static C1225r9 a(byte[] bArr) {
        return (C1225r9) MessageNano.mergeFrom(new C1225r9(), bArr);
    }
}
