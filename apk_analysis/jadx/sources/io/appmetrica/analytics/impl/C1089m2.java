package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1089m2 extends MessageNano {
    public static volatile C1089m2[] d;
    public C1063l2[] a;
    public C1037k2 b;
    public String[] c;

    public C1089m2() {
        a();
    }

    public static C1089m2[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new C1089m2[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1089m2 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C1063l2[] c1063l2Arr = this.a;
                int length = c1063l2Arr == null ? 0 : c1063l2Arr.length;
                int i = repeatedFieldArrayLength + length;
                C1063l2[] c1063l2Arr2 = new C1063l2[i];
                if (length != 0) {
                    System.arraycopy(c1063l2Arr, 0, c1063l2Arr2, 0, length);
                }
                while (length < i - 1) {
                    MessageNano c1063l2 = new C1063l2();
                    c1063l2Arr2[length] = c1063l2;
                    codedInputByteBufferNano.readMessage(c1063l2);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano c1063l3 = new C1063l2();
                c1063l2Arr2[length] = c1063l3;
                codedInputByteBufferNano.readMessage(c1063l3);
                this.a = c1063l2Arr2;
            } else if (tag == 18) {
                C1037k2 c1037k2 = this.b;
                if (c1037k2 == null) {
                    c1037k2 = new C1037k2();
                    this.b = c1037k2;
                }
                codedInputByteBufferNano.readMessage(c1037k2);
            } else if (tag == 26) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                String[] strArr = this.c;
                int length2 = strArr == null ? 0 : strArr.length;
                int i2 = repeatedFieldArrayLength2 + length2;
                String[] strArr2 = new String[i2];
                if (length2 != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    strArr2[length2] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                strArr2[length2] = codedInputByteBufferNano.readString();
                this.c = strArr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1063l2[] c1063l2Arr = this.a;
        int i = 0;
        if (c1063l2Arr != null && c1063l2Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C1063l2[] c1063l2Arr2 = this.a;
                if (i2 >= c1063l2Arr2.length) {
                    break;
                }
                C1063l2 c1063l2 = c1063l2Arr2[i2];
                if (c1063l2 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, c1063l2) + iComputeSerializedSize;
                }
                i2++;
            }
        }
        C1037k2 c1037k2 = this.b;
        if (c1037k2 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1037k2);
        }
        String[] strArr = this.c;
        if (strArr == null || strArr.length <= 0) {
            return iComputeSerializedSize;
        }
        int iComputeStringSizeNoTag = 0;
        int i3 = 0;
        while (true) {
            String[] strArr2 = this.c;
            if (i >= strArr2.length) {
                return iComputeSerializedSize + iComputeStringSizeNoTag + i3;
            }
            String str = strArr2[i];
            if (str != null) {
                i3++;
                iComputeStringSizeNoTag = CodedOutputByteBufferNano.computeStringSizeNoTag(str) + iComputeStringSizeNoTag;
            }
            i++;
        }
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        C1063l2[] c1063l2Arr = this.a;
        int i = 0;
        if (c1063l2Arr != null && c1063l2Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C1063l2[] c1063l2Arr2 = this.a;
                if (i2 >= c1063l2Arr2.length) {
                    break;
                }
                C1063l2 c1063l2 = c1063l2Arr2[i2];
                if (c1063l2 != null) {
                    codedOutputByteBufferNano.writeMessage(1, c1063l2);
                }
                i2++;
            }
        }
        C1037k2 c1037k2 = this.b;
        if (c1037k2 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1037k2);
        }
        String[] strArr = this.c;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.c;
                if (i >= strArr2.length) {
                    break;
                }
                String str = strArr2[i];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(3, str);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1089m2 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1089m2().mergeFrom(codedInputByteBufferNano);
    }

    public final C1089m2 a() {
        this.a = C1063l2.b();
        this.b = null;
        this.c = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    public static C1089m2 a(byte[] bArr) {
        return (C1089m2) MessageNano.mergeFrom(new C1089m2(), bArr);
    }
}
