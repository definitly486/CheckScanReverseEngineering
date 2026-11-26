package io.appmetrica.analytics.idsync.impl;

import androidx.compose.material3.internal.CalendarModelKt;
import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class n extends MessageNano {
    public static volatile n[] j;
    public byte[] a;
    public C0775m b;
    public byte[] c;
    public C0774l[] d;
    public long e;
    public long f;
    public int[] g;
    public boolean h;
    public String i;

    public n() {
        a();
    }

    public static n[] b() {
        if (j == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (j == null) {
                        j = new n[0];
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
    public final n mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            switch (tag) {
                case 0:
                    break;
                case 10:
                    this.a = codedInputByteBufferNano.readBytes();
                    break;
                case 18:
                    C0775m c0775m = this.b;
                    if (c0775m == null) {
                        c0775m = new C0775m();
                        this.b = c0775m;
                    }
                    codedInputByteBufferNano.readMessage(c0775m);
                    break;
                case 26:
                    this.c = codedInputByteBufferNano.readBytes();
                    break;
                case 34:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    C0774l[] c0774lArr = this.d;
                    int length = c0774lArr == null ? 0 : c0774lArr.length;
                    int i = repeatedFieldArrayLength + length;
                    C0774l[] c0774lArr2 = new C0774l[i];
                    if (length != 0) {
                        System.arraycopy(c0774lArr, 0, c0774lArr2, 0, length);
                    }
                    while (length < i - 1) {
                        MessageNano c0774l = new C0774l();
                        c0774lArr2[length] = c0774l;
                        codedInputByteBufferNano.readMessage(c0774l);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    MessageNano c0774l2 = new C0774l();
                    c0774lArr2[length] = c0774l2;
                    codedInputByteBufferNano.readMessage(c0774l2);
                    this.d = c0774lArr2;
                    break;
                case 40:
                    this.e = codedInputByteBufferNano.readUInt64();
                    break;
                case 48:
                    this.f = codedInputByteBufferNano.readUInt64();
                    break;
                case 56:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 56);
                    int[] iArr = this.g;
                    int length2 = iArr == null ? 0 : iArr.length;
                    int i2 = repeatedFieldArrayLength2 + length2;
                    int[] iArr2 = new int[i2];
                    if (length2 != 0) {
                        System.arraycopy(iArr, 0, iArr2, 0, length2);
                    }
                    while (length2 < i2 - 1) {
                        iArr2[length2] = codedInputByteBufferNano.readUInt32();
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    iArr2[length2] = codedInputByteBufferNano.readUInt32();
                    this.g = iArr2;
                    break;
                case 58:
                    int iPushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position = codedInputByteBufferNano.getPosition();
                    int i3 = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        codedInputByteBufferNano.readUInt32();
                        i3++;
                    }
                    codedInputByteBufferNano.rewindToPosition(position);
                    int[] iArr3 = this.g;
                    int length3 = iArr3 == null ? 0 : iArr3.length;
                    int i4 = i3 + length3;
                    int[] iArr4 = new int[i4];
                    if (length3 != 0) {
                        System.arraycopy(iArr3, 0, iArr4, 0, length3);
                    }
                    while (length3 < i4) {
                        iArr4[length3] = codedInputByteBufferNano.readUInt32();
                        length3++;
                    }
                    this.g = iArr4;
                    codedInputByteBufferNano.popLimit(iPushLimit);
                    break;
                case 64:
                    this.h = codedInputByteBufferNano.readBool();
                    break;
                case 74:
                    this.i = codedInputByteBufferNano.readString();
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
        int[] iArr;
        int iComputeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.a);
        }
        C0775m c0775m = this.b;
        if (c0775m != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0775m);
        }
        if (!Arrays.equals(this.c, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.c);
        }
        C0774l[] c0774lArr = this.d;
        int i = 0;
        if (c0774lArr != null && c0774lArr.length > 0) {
            int i2 = 0;
            while (true) {
                C0774l[] c0774lArr2 = this.d;
                if (i2 >= c0774lArr2.length) {
                    break;
                }
                C0774l c0774l = c0774lArr2[i2];
                if (c0774l != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(4, c0774l) + iComputeSerializedSize;
                }
                i2++;
            }
        }
        long j2 = this.e;
        if (j2 != CalendarModelKt.MillisecondsIn24Hours) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(5, j2);
        }
        long j3 = this.f;
        if (j3 != 3600000) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(6, j3);
        }
        int[] iArr2 = this.g;
        if (iArr2 != null && iArr2.length > 0) {
            int iComputeUInt32SizeNoTag = 0;
            while (true) {
                iArr = this.g;
                if (i >= iArr.length) {
                    break;
                }
                iComputeUInt32SizeNoTag += CodedOutputByteBufferNano.computeUInt32SizeNoTag(iArr[i]);
                i++;
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeUInt32SizeNoTag + iArr.length;
        }
        boolean z = this.h;
        if (!z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(8, z);
        }
        return !this.i.equals("") ? CodedOutputByteBufferNano.computeStringSize(9, this.i) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        C0775m c0775m = this.b;
        if (c0775m != null) {
            codedOutputByteBufferNano.writeMessage(2, c0775m);
        }
        if (!Arrays.equals(this.c, bArr2)) {
            codedOutputByteBufferNano.writeBytes(3, this.c);
        }
        C0774l[] c0774lArr = this.d;
        int i = 0;
        if (c0774lArr != null && c0774lArr.length > 0) {
            int i2 = 0;
            while (true) {
                C0774l[] c0774lArr2 = this.d;
                if (i2 >= c0774lArr2.length) {
                    break;
                }
                C0774l c0774l = c0774lArr2[i2];
                if (c0774l != null) {
                    codedOutputByteBufferNano.writeMessage(4, c0774l);
                }
                i2++;
            }
        }
        long j2 = this.e;
        if (j2 != CalendarModelKt.MillisecondsIn24Hours) {
            codedOutputByteBufferNano.writeUInt64(5, j2);
        }
        long j3 = this.f;
        if (j3 != 3600000) {
            codedOutputByteBufferNano.writeUInt64(6, j3);
        }
        int[] iArr = this.g;
        if (iArr != null && iArr.length > 0) {
            while (true) {
                int[] iArr2 = this.g;
                if (i >= iArr2.length) {
                    break;
                }
                codedOutputByteBufferNano.writeUInt32(7, iArr2[i]);
                i++;
            }
        }
        boolean z = this.h;
        if (!z) {
            codedOutputByteBufferNano.writeBool(8, z);
        }
        if (!this.i.equals("")) {
            codedOutputByteBufferNano.writeString(9, this.i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static n b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new n().mergeFrom(codedInputByteBufferNano);
    }

    public final n a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = null;
        this.c = bArr;
        this.d = C0774l.b();
        this.e = CalendarModelKt.MillisecondsIn24Hours;
        this.f = 3600000L;
        this.g = WireFormatNano.EMPTY_INT_ARRAY;
        this.h = true;
        this.i = "";
        this.cachedSize = -1;
        return this;
    }

    public static n a(byte[] bArr) {
        return (n) MessageNano.mergeFrom(new n(), bArr);
    }
}
