package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.g6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0938g6 extends MessageNano {
    public static final int k = 0;
    public static final int l = 1;
    public static volatile C0938g6[] m;
    public static byte[] n;
    public static volatile boolean o;
    public C1093m6 a;
    public C0835c6 b;
    public String c;
    public int d;
    public C1041k6[] e;
    public int f;
    public C0912f6 g;
    public byte[] h;
    public byte[] i;
    public C0886e6[] j;

    public C0938g6() {
        if (!o) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (!o) {
                        n = InternalNano.bytesDefaultValue("JVM");
                        o = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        a();
    }

    public static C0938g6[] b() {
        if (m == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (m == null) {
                        m = new C0938g6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return m;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0938g6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
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
                case 48:
                    int int33 = codedInputByteBufferNano.readInt32();
                    if (int33 == 0 || int33 == 1) {
                        this.f = int33;
                    }
                    break;
                case 58:
                    C0912f6 c0912f6 = this.g;
                    if (c0912f6 == null) {
                        c0912f6 = new C0912f6();
                        this.g = c0912f6;
                    }
                    codedInputByteBufferNano.readMessage(c0912f6);
                    break;
                case 66:
                    this.h = codedInputByteBufferNano.readBytes();
                    break;
                case 74:
                    this.i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                    C0886e6[] c0886e6Arr = this.j;
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
                    this.j = c0886e6Arr2;
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
        int i4 = this.f;
        if (i4 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i4);
        }
        C0912f6 c0912f6 = this.g;
        if (c0912f6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, c0912f6);
        }
        if (!Arrays.equals(this.h, n)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(8, this.h);
        }
        if (!Arrays.equals(this.i, WireFormatNano.EMPTY_BYTES)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.i);
        }
        C0886e6[] c0886e6Arr = this.j;
        if (c0886e6Arr != null && c0886e6Arr.length > 0) {
            while (true) {
                C0886e6[] c0886e6Arr2 = this.j;
                if (i2 >= c0886e6Arr2.length) {
                    break;
                }
                C0886e6 c0886e6 = c0886e6Arr2[i2];
                if (c0886e6 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(10, c0886e6) + iComputeSerializedSize;
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
        int i4 = this.f;
        if (i4 != 0) {
            codedOutputByteBufferNano.writeInt32(6, i4);
        }
        C0912f6 c0912f6 = this.g;
        if (c0912f6 != null) {
            codedOutputByteBufferNano.writeMessage(7, c0912f6);
        }
        if (!Arrays.equals(this.h, n)) {
            codedOutputByteBufferNano.writeBytes(8, this.h);
        }
        if (!Arrays.equals(this.i, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(9, this.i);
        }
        C0886e6[] c0886e6Arr = this.j;
        if (c0886e6Arr != null && c0886e6Arr.length > 0) {
            while (true) {
                C0886e6[] c0886e6Arr2 = this.j;
                if (i2 >= c0886e6Arr2.length) {
                    break;
                }
                C0886e6 c0886e6 = c0886e6Arr2[i2];
                if (c0886e6 != null) {
                    codedOutputByteBufferNano.writeMessage(10, c0886e6);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C0938g6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C0938g6().mergeFrom(codedInputByteBufferNano);
    }

    public final C0938g6 a() {
        this.a = null;
        this.b = null;
        this.c = "";
        this.d = -1;
        this.e = C1041k6.b();
        this.f = 0;
        this.g = null;
        this.h = (byte[]) n.clone();
        this.i = WireFormatNano.EMPTY_BYTES;
        this.j = C0886e6.b();
        this.cachedSize = -1;
        return this;
    }

    public static C0938g6 a(byte[] bArr) {
        return (C0938g6) MessageNano.mergeFrom(new C0938g6(), bArr);
    }
}
