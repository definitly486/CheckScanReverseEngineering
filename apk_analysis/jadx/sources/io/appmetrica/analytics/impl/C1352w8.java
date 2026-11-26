package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1352w8 extends MessageNano {
    public static volatile C1352w8[] c;
    public C1327v8[] a;
    public int b;

    public C1352w8() {
        a();
    }

    public static C1352w8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C1352w8[0];
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
    public final C1352w8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C1327v8[] c1327v8Arr = this.a;
                int length = c1327v8Arr == null ? 0 : c1327v8Arr.length;
                int i = repeatedFieldArrayLength + length;
                C1327v8[] c1327v8Arr2 = new C1327v8[i];
                if (length != 0) {
                    System.arraycopy(c1327v8Arr, 0, c1327v8Arr2, 0, length);
                }
                while (length < i - 1) {
                    C1327v8 c1327v8 = new C1327v8();
                    c1327v8Arr2[length] = c1327v8;
                    codedInputByteBufferNano.readMessage(c1327v8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1327v8 c1327v9 = new C1327v8();
                c1327v8Arr2[length] = c1327v9;
                codedInputByteBufferNano.readMessage(c1327v9);
                this.a = c1327v8Arr2;
            } else if (tag == 16) {
                this.b = codedInputByteBufferNano.readUInt32();
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1327v8[] c1327v8Arr = this.a;
        if (c1327v8Arr != null && c1327v8Arr.length > 0) {
            int i = 0;
            while (true) {
                C1327v8[] c1327v8Arr2 = this.a;
                if (i >= c1327v8Arr2.length) {
                    break;
                }
                C1327v8 c1327v8 = c1327v8Arr2[i];
                if (c1327v8 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, c1327v8) + iComputeSerializedSize;
                }
                i++;
            }
        }
        int i2 = this.b;
        return i2 != 0 ? CodedOutputByteBufferNano.computeUInt32Size(2, i2) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1327v8[] c1327v8Arr = this.a;
        if (c1327v8Arr != null && c1327v8Arr.length > 0) {
            int i = 0;
            while (true) {
                C1327v8[] c1327v8Arr2 = this.a;
                if (i >= c1327v8Arr2.length) {
                    break;
                }
                C1327v8 c1327v8 = c1327v8Arr2[i];
                if (c1327v8 != null) {
                    codedOutputByteBufferNano.writeMessage(1, c1327v8);
                }
                i++;
            }
        }
        int i2 = this.b;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(2, i2);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1352w8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1352w8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1352w8 a() {
        this.a = C1327v8.b();
        this.b = 0;
        this.cachedSize = -1;
        return this;
    }

    public static C1352w8 a(byte[] bArr) {
        return (C1352w8) MessageNano.mergeFrom(new C1352w8(), bArr);
    }
}
