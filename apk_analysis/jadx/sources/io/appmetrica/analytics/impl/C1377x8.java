package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.x8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1377x8 extends MessageNano {
    public static volatile C1377x8[] c;
    public C1121n8 a;
    public C1121n8[] b;

    public C1377x8() {
        a();
    }

    public static C1377x8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C1377x8[0];
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
    public final C1377x8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                C1121n8 c1121n8 = this.a;
                if (c1121n8 == null) {
                    c1121n8 = new C1121n8();
                    this.a = c1121n8;
                }
                codedInputByteBufferNano.readMessage(c1121n8);
            } else if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C1121n8[] c1121n8Arr = this.b;
                int length = c1121n8Arr == null ? 0 : c1121n8Arr.length;
                int i = repeatedFieldArrayLength + length;
                C1121n8[] c1121n8Arr2 = new C1121n8[i];
                if (length != 0) {
                    System.arraycopy(c1121n8Arr, 0, c1121n8Arr2, 0, length);
                }
                while (length < i - 1) {
                    MessageNano c1121n9 = new C1121n8();
                    c1121n8Arr2[length] = c1121n9;
                    codedInputByteBufferNano.readMessage(c1121n9);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano c1121n10 = new C1121n8();
                c1121n8Arr2[length] = c1121n10;
                codedInputByteBufferNano.readMessage(c1121n10);
                this.b = c1121n8Arr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1121n8 c1121n8 = this.a;
        if (c1121n8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1121n8);
        }
        C1121n8[] c1121n8Arr = this.b;
        if (c1121n8Arr != null && c1121n8Arr.length > 0) {
            int i = 0;
            while (true) {
                C1121n8[] c1121n8Arr2 = this.b;
                if (i >= c1121n8Arr2.length) {
                    break;
                }
                C1121n8 c1121n9 = c1121n8Arr2[i];
                if (c1121n9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(2, c1121n9) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1121n8 c1121n8 = this.a;
        if (c1121n8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1121n8);
        }
        C1121n8[] c1121n8Arr = this.b;
        if (c1121n8Arr != null && c1121n8Arr.length > 0) {
            int i = 0;
            while (true) {
                C1121n8[] c1121n8Arr2 = this.b;
                if (i >= c1121n8Arr2.length) {
                    break;
                }
                C1121n8 c1121n9 = c1121n8Arr2[i];
                if (c1121n9 != null) {
                    codedOutputByteBufferNano.writeMessage(2, c1121n9);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1377x8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1377x8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1377x8 a() {
        this.a = null;
        this.b = C1121n8.b();
        this.cachedSize = -1;
        return this;
    }

    public static C1377x8 a(byte[] bArr) {
        return (C1377x8) MessageNano.mergeFrom(new C1377x8(), bArr);
    }
}
