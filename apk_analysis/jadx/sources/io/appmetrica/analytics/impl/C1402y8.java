package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.y8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1402y8 extends MessageNano {
    public static volatile C1402y8[] h;
    public byte[] a;
    public byte[] b;
    public C1199q8 c;
    public C1352w8 d;
    public C1377x8 e;
    public C1377x8 f;
    public C1427z8[] g;

    public C1402y8() {
        a();
    }

    public static C1402y8[] b() {
        if (h == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (h == null) {
                        h = new C1402y8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return h;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1402y8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
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
                C1199q8 c1199q8 = this.c;
                if (c1199q8 == null) {
                    c1199q8 = new C1199q8();
                    this.c = c1199q8;
                }
                codedInputByteBufferNano.readMessage(c1199q8);
            } else if (tag == 34) {
                C1352w8 c1352w8 = this.d;
                if (c1352w8 == null) {
                    c1352w8 = new C1352w8();
                    this.d = c1352w8;
                }
                codedInputByteBufferNano.readMessage(c1352w8);
            } else if (tag == 42) {
                C1377x8 c1377x8 = this.e;
                if (c1377x8 == null) {
                    c1377x8 = new C1377x8();
                    this.e = c1377x8;
                }
                codedInputByteBufferNano.readMessage(c1377x8);
            } else if (tag == 50) {
                C1377x8 c1377x9 = this.f;
                if (c1377x9 == null) {
                    c1377x9 = new C1377x8();
                    this.f = c1377x9;
                }
                codedInputByteBufferNano.readMessage(c1377x9);
            } else if (tag == 58) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                C1427z8[] c1427z8Arr = this.g;
                int length = c1427z8Arr == null ? 0 : c1427z8Arr.length;
                int i = repeatedFieldArrayLength + length;
                C1427z8[] c1427z8Arr2 = new C1427z8[i];
                if (length != 0) {
                    System.arraycopy(c1427z8Arr, 0, c1427z8Arr2, 0, length);
                }
                while (length < i - 1) {
                    MessageNano c1427z8 = new C1427z8();
                    c1427z8Arr2[length] = c1427z8;
                    codedInputByteBufferNano.readMessage(c1427z8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano c1427z9 = new C1427z8();
                c1427z8Arr2[length] = c1427z9;
                codedInputByteBufferNano.readMessage(c1427z9);
                this.g = c1427z8Arr2;
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
        C1199q8 c1199q8 = this.c;
        if (c1199q8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1199q8);
        }
        C1352w8 c1352w8 = this.d;
        if (c1352w8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c1352w8);
        }
        C1377x8 c1377x8 = this.e;
        if (c1377x8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c1377x8);
        }
        C1377x8 c1377x9 = this.f;
        if (c1377x9 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, c1377x9);
        }
        C1427z8[] c1427z8Arr = this.g;
        if (c1427z8Arr != null && c1427z8Arr.length > 0) {
            int i = 0;
            while (true) {
                C1427z8[] c1427z8Arr2 = this.g;
                if (i >= c1427z8Arr2.length) {
                    break;
                }
                C1427z8 c1427z8 = c1427z8Arr2[i];
                if (c1427z8 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(7, c1427z8) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
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
        C1199q8 c1199q8 = this.c;
        if (c1199q8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c1199q8);
        }
        C1352w8 c1352w8 = this.d;
        if (c1352w8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1352w8);
        }
        C1377x8 c1377x8 = this.e;
        if (c1377x8 != null) {
            codedOutputByteBufferNano.writeMessage(5, c1377x8);
        }
        C1377x8 c1377x9 = this.f;
        if (c1377x9 != null) {
            codedOutputByteBufferNano.writeMessage(6, c1377x9);
        }
        C1427z8[] c1427z8Arr = this.g;
        if (c1427z8Arr != null && c1427z8Arr.length > 0) {
            int i = 0;
            while (true) {
                C1427z8[] c1427z8Arr2 = this.g;
                if (i >= c1427z8Arr2.length) {
                    break;
                }
                C1427z8 c1427z8 = c1427z8Arr2[i];
                if (c1427z8 != null) {
                    codedOutputByteBufferNano.writeMessage(7, c1427z8);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1402y8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1402y8().mergeFrom(codedInputByteBufferNano);
    }

    public final C1402y8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = bArr;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = C1427z8.b();
        this.cachedSize = -1;
        return this;
    }

    public static C1402y8 a(byte[] bArr) {
        return (C1402y8) MessageNano.mergeFrom(new C1402y8(), bArr);
    }
}
