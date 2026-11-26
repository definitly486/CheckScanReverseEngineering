package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.v9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1328v9 extends MessageNano {
    public static final int g = -1;
    public static final int h = 0;
    public static final int i = 1;
    public static volatile C1328v9[] j;
    public C1251s9[] a;
    public C1122n9 b;
    public C1044k9[] c;
    public C1277t9[] d;
    public String[] e;
    public byte[][] f;

    public C1328v9() {
        a();
    }

    public static C1328v9[] b() {
        if (j == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (j == null) {
                        j = new C1328v9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return j;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1328v9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C1251s9[] c1251s9Arr = this.a;
                int length = c1251s9Arr == null ? 0 : c1251s9Arr.length;
                int i2 = repeatedFieldArrayLength + length;
                C1251s9[] c1251s9Arr2 = new C1251s9[i2];
                if (length != 0) {
                    System.arraycopy(c1251s9Arr, 0, c1251s9Arr2, 0, length);
                }
                while (length < i2 - 1) {
                    MessageNano c1251s9 = new C1251s9();
                    c1251s9Arr2[length] = c1251s9;
                    codedInputByteBufferNano.readMessage(c1251s9);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano c1251s10 = new C1251s9();
                c1251s9Arr2[length] = c1251s10;
                codedInputByteBufferNano.readMessage(c1251s10);
                this.a = c1251s9Arr2;
            } else if (tag == 34) {
                C1122n9 c1122n9 = this.b;
                if (c1122n9 == null) {
                    c1122n9 = new C1122n9();
                    this.b = c1122n9;
                }
                codedInputByteBufferNano.readMessage(c1122n9);
            } else if (tag == 58) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                C1044k9[] c1044k9Arr = this.c;
                int length2 = c1044k9Arr == null ? 0 : c1044k9Arr.length;
                int i3 = repeatedFieldArrayLength2 + length2;
                C1044k9[] c1044k9Arr2 = new C1044k9[i3];
                if (length2 != 0) {
                    System.arraycopy(c1044k9Arr, 0, c1044k9Arr2, 0, length2);
                }
                while (length2 < i3 - 1) {
                    MessageNano c1044k9 = new C1044k9();
                    c1044k9Arr2[length2] = c1044k9;
                    codedInputByteBufferNano.readMessage(c1044k9);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                MessageNano c1044k10 = new C1044k9();
                c1044k9Arr2[length2] = c1044k10;
                codedInputByteBufferNano.readMessage(c1044k10);
                this.c = c1044k9Arr2;
            } else if (tag == 82) {
                int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                C1277t9[] c1277t9Arr = this.d;
                int length3 = c1277t9Arr == null ? 0 : c1277t9Arr.length;
                int i4 = repeatedFieldArrayLength3 + length3;
                C1277t9[] c1277t9Arr2 = new C1277t9[i4];
                if (length3 != 0) {
                    System.arraycopy(c1277t9Arr, 0, c1277t9Arr2, 0, length3);
                }
                while (length3 < i4 - 1) {
                    MessageNano c1277t9 = new C1277t9();
                    c1277t9Arr2[length3] = c1277t9;
                    codedInputByteBufferNano.readMessage(c1277t9);
                    codedInputByteBufferNano.readTag();
                    length3++;
                }
                MessageNano c1277t10 = new C1277t9();
                c1277t9Arr2[length3] = c1277t10;
                codedInputByteBufferNano.readMessage(c1277t10);
                this.d = c1277t9Arr2;
            } else if (tag == 90) {
                int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                String[] strArr = this.e;
                int length4 = strArr == null ? 0 : strArr.length;
                int i5 = repeatedFieldArrayLength4 + length4;
                String[] strArr2 = new String[i5];
                if (length4 != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length4);
                }
                while (length4 < i5 - 1) {
                    strArr2[length4] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length4++;
                }
                strArr2[length4] = codedInputByteBufferNano.readString();
                this.e = strArr2;
            } else if (tag == 98) {
                int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 98);
                byte[][] bArr = this.f;
                int length5 = bArr == null ? 0 : bArr.length;
                int i6 = repeatedFieldArrayLength5 + length5;
                byte[][] bArr2 = new byte[i6][];
                if (length5 != 0) {
                    System.arraycopy(bArr, 0, bArr2, 0, length5);
                }
                while (length5 < i6 - 1) {
                    bArr2[length5] = codedInputByteBufferNano.readBytes();
                    codedInputByteBufferNano.readTag();
                    length5++;
                }
                bArr2[length5] = codedInputByteBufferNano.readBytes();
                this.f = bArr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1251s9[] c1251s9Arr = this.a;
        int i2 = 0;
        if (c1251s9Arr != null && c1251s9Arr.length > 0) {
            int i3 = 0;
            while (true) {
                C1251s9[] c1251s9Arr2 = this.a;
                if (i3 >= c1251s9Arr2.length) {
                    break;
                }
                C1251s9 c1251s9 = c1251s9Arr2[i3];
                if (c1251s9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(3, c1251s9) + iComputeSerializedSize;
                }
                i3++;
            }
        }
        C1122n9 c1122n9 = this.b;
        if (c1122n9 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c1122n9);
        }
        C1044k9[] c1044k9Arr = this.c;
        if (c1044k9Arr != null && c1044k9Arr.length > 0) {
            int i4 = 0;
            while (true) {
                C1044k9[] c1044k9Arr2 = this.c;
                if (i4 >= c1044k9Arr2.length) {
                    break;
                }
                C1044k9 c1044k9 = c1044k9Arr2[i4];
                if (c1044k9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(7, c1044k9) + iComputeSerializedSize;
                }
                i4++;
            }
        }
        C1277t9[] c1277t9Arr = this.d;
        if (c1277t9Arr != null && c1277t9Arr.length > 0) {
            int i5 = 0;
            while (true) {
                C1277t9[] c1277t9Arr2 = this.d;
                if (i5 >= c1277t9Arr2.length) {
                    break;
                }
                C1277t9 c1277t9 = c1277t9Arr2[i5];
                if (c1277t9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(10, c1277t9) + iComputeSerializedSize;
                }
                i5++;
            }
        }
        String[] strArr = this.e;
        if (strArr != null && strArr.length > 0) {
            int i6 = 0;
            int iComputeStringSizeNoTag = 0;
            int i7 = 0;
            while (true) {
                String[] strArr2 = this.e;
                if (i6 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i6];
                if (str != null) {
                    i7++;
                    iComputeStringSizeNoTag += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                }
                i6++;
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeStringSizeNoTag + i7;
        }
        byte[][] bArr = this.f;
        if (bArr == null || bArr.length <= 0) {
            return iComputeSerializedSize;
        }
        int iComputeBytesSizeNoTag = 0;
        int i8 = 0;
        while (true) {
            byte[][] bArr2 = this.f;
            if (i2 >= bArr2.length) {
                return iComputeSerializedSize + iComputeBytesSizeNoTag + i8;
            }
            byte[] bArr3 = bArr2[i2];
            if (bArr3 != null) {
                i8++;
                iComputeBytesSizeNoTag = CodedOutputByteBufferNano.computeBytesSizeNoTag(bArr3) + iComputeBytesSizeNoTag;
            }
            i2++;
        }
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        C1251s9[] c1251s9Arr = this.a;
        int i2 = 0;
        if (c1251s9Arr != null && c1251s9Arr.length > 0) {
            int i3 = 0;
            while (true) {
                C1251s9[] c1251s9Arr2 = this.a;
                if (i3 >= c1251s9Arr2.length) {
                    break;
                }
                C1251s9 c1251s9 = c1251s9Arr2[i3];
                if (c1251s9 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c1251s9);
                }
                i3++;
            }
        }
        C1122n9 c1122n9 = this.b;
        if (c1122n9 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1122n9);
        }
        C1044k9[] c1044k9Arr = this.c;
        if (c1044k9Arr != null && c1044k9Arr.length > 0) {
            int i4 = 0;
            while (true) {
                C1044k9[] c1044k9Arr2 = this.c;
                if (i4 >= c1044k9Arr2.length) {
                    break;
                }
                C1044k9 c1044k9 = c1044k9Arr2[i4];
                if (c1044k9 != null) {
                    codedOutputByteBufferNano.writeMessage(7, c1044k9);
                }
                i4++;
            }
        }
        C1277t9[] c1277t9Arr = this.d;
        if (c1277t9Arr != null && c1277t9Arr.length > 0) {
            int i5 = 0;
            while (true) {
                C1277t9[] c1277t9Arr2 = this.d;
                if (i5 >= c1277t9Arr2.length) {
                    break;
                }
                C1277t9 c1277t9 = c1277t9Arr2[i5];
                if (c1277t9 != null) {
                    codedOutputByteBufferNano.writeMessage(10, c1277t9);
                }
                i5++;
            }
        }
        String[] strArr = this.e;
        if (strArr != null && strArr.length > 0) {
            int i6 = 0;
            while (true) {
                String[] strArr2 = this.e;
                if (i6 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i6];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(11, str);
                }
                i6++;
            }
        }
        byte[][] bArr = this.f;
        if (bArr != null && bArr.length > 0) {
            while (true) {
                byte[][] bArr2 = this.f;
                if (i2 >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i2];
                if (bArr3 != null) {
                    codedOutputByteBufferNano.writeBytes(12, bArr3);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1328v9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1328v9().mergeFrom(codedInputByteBufferNano);
    }

    public final C1328v9 a() {
        this.a = C1251s9.b();
        this.b = null;
        this.c = C1044k9.b();
        this.d = C1277t9.b();
        this.e = WireFormatNano.EMPTY_STRING_ARRAY;
        this.f = WireFormatNano.EMPTY_BYTES_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    public static C1328v9 a(byte[] bArr) {
        return (C1328v9) MessageNano.mergeFrom(new C1328v9(), bArr);
    }
}
