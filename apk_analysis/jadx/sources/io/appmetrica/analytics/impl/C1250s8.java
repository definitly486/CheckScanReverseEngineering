package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.s8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1250s8 extends MessageNano {
    public static volatile C1250s8[] f;
    public byte[] a;
    public byte[] b;
    public C1352w8 c;
    public C1276t8[] d;
    public int e;

    public C1250s8() {
        a();
    }

    public static C1250s8[] b() {
        if (f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (f == null) {
                        f = new C1250s8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1250s8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readBytes();
            } else if (tag == 26) {
                C1352w8 c1352w8 = this.c;
                if (c1352w8 == null) {
                    c1352w8 = new C1352w8();
                    this.c = c1352w8;
                }
                codedInputByteBufferNano.readMessage(c1352w8);
            } else if (tag == 34) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                C1276t8[] c1276t8Arr = this.d;
                int length = c1276t8Arr == null ? 0 : c1276t8Arr.length;
                int i = repeatedFieldArrayLength + length;
                C1276t8[] c1276t8Arr2 = new C1276t8[i];
                if (length != 0) {
                    System.arraycopy(c1276t8Arr, 0, c1276t8Arr2, 0, length);
                }
                while (length < i - 1) {
                    MessageNano c1276t8 = new C1276t8();
                    c1276t8Arr2[length] = c1276t8;
                    codedInputByteBufferNano.readMessage(c1276t8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano c1276t9 = new C1276t8();
                c1276t8Arr2[length] = c1276t9;
                codedInputByteBufferNano.readMessage(c1276t9);
                this.d = c1276t8Arr2;
            } else if (tag == 40) {
                this.e = codedInputByteBufferNano.readUInt32();
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.a);
        }
        if (!Arrays.equals(this.b, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.b);
        }
        C1352w8 c1352w8 = this.c;
        if (c1352w8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1352w8);
        }
        C1276t8[] c1276t8Arr = this.d;
        if (c1276t8Arr != null && c1276t8Arr.length > 0) {
            int i = 0;
            while (true) {
                C1276t8[] c1276t8Arr2 = this.d;
                if (i >= c1276t8Arr2.length) {
                    break;
                }
                C1276t8 c1276t8 = c1276t8Arr2[i];
                if (c1276t8 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(4, c1276t8) + iComputeSerializedSize;
                }
                i++;
            }
        }
        int i2 = this.e;
        return i2 != 0 ? CodedOutputByteBufferNano.computeUInt32Size(5, i2) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        if (!Arrays.equals(this.b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.b);
        }
        C1352w8 c1352w8 = this.c;
        if (c1352w8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c1352w8);
        }
        C1276t8[] c1276t8Arr = this.d;
        if (c1276t8Arr != null && c1276t8Arr.length > 0) {
            int i = 0;
            while (true) {
                C1276t8[] c1276t8Arr2 = this.d;
                if (i >= c1276t8Arr2.length) {
                    break;
                }
                C1276t8 c1276t8 = c1276t8Arr2[i];
                if (c1276t8 != null) {
                    codedOutputByteBufferNano.writeMessage(4, c1276t8);
                }
                i++;
            }
        }
        int i2 = this.e;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i2);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1250s8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1250s8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1250s8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = bArr;
        this.c = null;
        this.d = C1276t8.b();
        this.e = 0;
        this.cachedSize = -1;
        return this;
    }

    public static C1250s8 a(byte[] bArr) {
        return (C1250s8) MessageNano.mergeFrom(new C1250s8(), bArr);
    }
}
