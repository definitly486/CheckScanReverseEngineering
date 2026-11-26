package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.i6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0990i6 extends MessageNano {
    public static final int l = 0;
    public static final int m = 1;
    public static volatile C0990i6[] n;
    public static byte[] o;
    public static volatile boolean p;
    public C1093m6 a;
    public C0835c6 b;
    public String c;
    public int d;
    public C1041k6[] e;
    public String f;
    public int g;
    public C0964h6 h;
    public byte[] i;
    public byte[] j;
    public C0886e6[] k;

    public C0990i6() {
        if (!p) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (!p) {
                        o = InternalNano.bytesDefaultValue("JVM");
                        p = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        a();
    }

    public static C0990i6[] b() {
        if (n == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (n == null) {
                        n = new C0990i6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return n;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0990i6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            switch (tag) {
                case 0:
                    break;
                case 10:
                    C1093m6 c1093m6 = this.a;
                    if (c1093m6 == null) {
                        c1093m6 = new C1093m6();
                        this.a = c1093m6;
                    }
                    codedInputByteBufferNano.readMessage(c1093m6);
                    break;
                case 18:
                    C0835c6 c0835c6 = this.b;
                    if (c0835c6 == null) {
                        c0835c6 = new C0835c6();
                        this.b = c0835c6;
                    }
                    codedInputByteBufferNano.readMessage(c0835c6);
                    break;
                case 26:
                    this.c = codedInputByteBufferNano.readString();
                    break;
                case 32:
                    int int32 = codedInputByteBufferNano.readInt32();
                    if (int32 == -1 || int32 == 0 || int32 == 1) {
                        this.d = int32;
                    }
                    break;
                case 42:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                    C1041k6[] c1041k6Arr = this.e;
                    int length = c1041k6Arr == null ? 0 : c1041k6Arr.length;
                    int i = repeatedFieldArrayLength + length;
                    C1041k6[] c1041k6Arr2 = new C1041k6[i];
                    if (length != 0) {
                        System.arraycopy(c1041k6Arr, 0, c1041k6Arr2, 0, length);
                    }
                    while (length < i - 1) {
                        MessageNano c1041k6 = new C1041k6();
                        c1041k6Arr2[length] = c1041k6;
                        codedInputByteBufferNano.readMessage(c1041k6);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    MessageNano c1041k7 = new C1041k6();
                    c1041k6Arr2[length] = c1041k7;
                    codedInputByteBufferNano.readMessage(c1041k7);
                    this.e = c1041k6Arr2;
                    break;
                case 50:
                    this.f = codedInputByteBufferNano.readString();
                    break;
                case 56:
                    int int33 = codedInputByteBufferNano.readInt32();
                    if (int33 == 0 || int33 == 1) {
                        this.g = int33;
                    }
                    break;
                case 66:
                    C0964h6 c0964h6 = this.h;
                    if (c0964h6 == null) {
                        c0964h6 = new C0964h6();
                        this.h = c0964h6;
                    }
                    codedInputByteBufferNano.readMessage(c0964h6);
                    break;
                case 74:
                    this.i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                    C0886e6[] c0886e6Arr = this.k;
                    int length2 = c0886e6Arr == null ? 0 : c0886e6Arr.length;
                    int i2 = repeatedFieldArrayLength2 + length2;
                    C0886e6[] c0886e6Arr2 = new C0886e6[i2];
                    if (length2 != 0) {
                        System.arraycopy(c0886e6Arr, 0, c0886e6Arr2, 0, length2);
                    }
                    while (length2 < i2 - 1) {
                        MessageNano c0886e6 = new C0886e6();
                        c0886e6Arr2[length2] = c0886e6;
                        codedInputByteBufferNano.readMessage(c0886e6);
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    MessageNano c0886e7 = new C0886e6();
                    c0886e6Arr2[length2] = c0886e7;
                    codedInputByteBufferNano.readMessage(c0886e7);
                    this.k = c0886e6Arr2;
                    break;
                default:
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    }
                    break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1093m6 c1093m6 = this.a;
        if (c1093m6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1093m6);
        }
        C0835c6 c0835c6 = this.b;
        if (c0835c6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0835c6);
        }
        if (!this.c.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.c);
        }
        int i = this.d;
        if (i != -1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i);
        }
        C1041k6[] c1041k6Arr = this.e;
        int i2 = 0;
        if (c1041k6Arr != null && c1041k6Arr.length > 0) {
            int i3 = 0;
            while (true) {
                C1041k6[] c1041k6Arr2 = this.e;
                if (i3 >= c1041k6Arr2.length) {
                    break;
                }
                C1041k6 c1041k6 = c1041k6Arr2[i3];
                if (c1041k6 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(5, c1041k6) + iComputeSerializedSize;
                }
                i3++;
            }
        }
        if (!this.f.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.f);
        }
        int i4 = this.g;
        if (i4 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i4);
        }
        C0964h6 c0964h6 = this.h;
        if (c0964h6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, c0964h6);
        }
        if (!Arrays.equals(this.i, o)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.i);
        }
        if (!Arrays.equals(this.j, WireFormatNano.EMPTY_BYTES)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.j);
        }
        C0886e6[] c0886e6Arr = this.k;
        if (c0886e6Arr != null && c0886e6Arr.length > 0) {
            while (true) {
                C0886e6[] c0886e6Arr2 = this.k;
                if (i2 >= c0886e6Arr2.length) {
                    break;
                }
                C0886e6 c0886e6 = c0886e6Arr2[i2];
                if (c0886e6 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(11, c0886e6) + iComputeSerializedSize;
                }
                i2++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        C1093m6 c1093m6 = this.a;
        if (c1093m6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1093m6);
        }
        C0835c6 c0835c6 = this.b;
        if (c0835c6 != null) {
            codedOutputByteBufferNano.writeMessage(2, c0835c6);
        }
        if (!this.c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.c);
        }
        int i = this.d;
        if (i != -1) {
            codedOutputByteBufferNano.writeInt32(4, i);
        }
        C1041k6[] c1041k6Arr = this.e;
        int i2 = 0;
        if (c1041k6Arr != null && c1041k6Arr.length > 0) {
            int i3 = 0;
            while (true) {
                C1041k6[] c1041k6Arr2 = this.e;
                if (i3 >= c1041k6Arr2.length) {
                    break;
                }
                C1041k6 c1041k6 = c1041k6Arr2[i3];
                if (c1041k6 != null) {
                    codedOutputByteBufferNano.writeMessage(5, c1041k6);
                }
                i3++;
            }
        }
        if (!this.f.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f);
        }
        int i4 = this.g;
        if (i4 != 0) {
            codedOutputByteBufferNano.writeInt32(7, i4);
        }
        C0964h6 c0964h6 = this.h;
        if (c0964h6 != null) {
            codedOutputByteBufferNano.writeMessage(8, c0964h6);
        }
        if (!Arrays.equals(this.i, o)) {
            codedOutputByteBufferNano.writeBytes(9, this.i);
        }
        if (!Arrays.equals(this.j, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(10, this.j);
        }
        C0886e6[] c0886e6Arr = this.k;
        if (c0886e6Arr != null && c0886e6Arr.length > 0) {
            while (true) {
                C0886e6[] c0886e6Arr2 = this.k;
                if (i2 >= c0886e6Arr2.length) {
                    break;
                }
                C0886e6 c0886e6 = c0886e6Arr2[i2];
                if (c0886e6 != null) {
                    codedOutputByteBufferNano.writeMessage(11, c0886e6);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C0990i6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C0990i6().mergeFrom(codedInputByteBufferNano);
    }

    public final C0990i6 a() {
        this.a = null;
        this.b = null;
        this.c = "";
        this.d = -1;
        this.e = C1041k6.b();
        this.f = "";
        this.g = 0;
        this.h = null;
        this.i = (byte[]) o.clone();
        this.j = WireFormatNano.EMPTY_BYTES;
        this.k = C0886e6.b();
        this.cachedSize = -1;
        return this;
    }

    public static C0990i6 a(byte[] bArr) {
        return (C0990i6) MessageNano.mergeFrom(new C0990i6(), bArr);
    }
}
