package io.appmetrica.analytics.impl;

import androidx.media3.muxer.WebmConstants;
import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1122n9 extends MessageNano {
    public static volatile C1122n9[] n;
    public String a;
    public String b;
    public String c;
    public int d;
    public String e;
    public String f;
    public boolean g;
    public int h;
    public String i;
    public String j;
    public int k;
    public C1096m9[] l;
    public String m;

    public C1122n9() {
        a();
    }

    public static C1122n9[] b() {
        if (n == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (n == null) {
                        n = new C1122n9[0];
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
    public final C1122n9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            switch (tag) {
                case 0:
                    break;
                case 10:
                    this.a = codedInputByteBufferNano.readString();
                    break;
                case 18:
                    this.b = codedInputByteBufferNano.readString();
                    break;
                case 34:
                    this.c = codedInputByteBufferNano.readString();
                    break;
                case 40:
                    this.d = codedInputByteBufferNano.readUInt32();
                    break;
                case 82:
                    this.e = codedInputByteBufferNano.readString();
                    break;
                case 122:
                    this.f = codedInputByteBufferNano.readString();
                    break;
                case 136:
                    this.g = codedInputByteBufferNano.readBool();
                    break;
                case 144:
                    this.h = codedInputByteBufferNano.readUInt32();
                    break;
                case WebmConstants.MkvEbmlElement.FLAG_INTERLACED /* 154 */:
                    this.i = codedInputByteBufferNano.readString();
                    break;
                case 170:
                    this.j = codedInputByteBufferNano.readString();
                    break;
                case WebmConstants.MkvEbmlElement.PIXEL_WIDTH /* 176 */:
                    this.k = codedInputByteBufferNano.readUInt32();
                    break;
                case WebmConstants.MkvEbmlElement.PIXEL_HEIGHT /* 186 */:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, WebmConstants.MkvEbmlElement.PIXEL_HEIGHT);
                    C1096m9[] c1096m9Arr = this.l;
                    int length = c1096m9Arr == null ? 0 : c1096m9Arr.length;
                    int i = repeatedFieldArrayLength + length;
                    C1096m9[] c1096m9Arr2 = new C1096m9[i];
                    if (length != 0) {
                        System.arraycopy(c1096m9Arr, 0, c1096m9Arr2, 0, length);
                    }
                    while (length < i - 1) {
                        C1096m9 c1096m9 = new C1096m9();
                        c1096m9Arr2[length] = c1096m9;
                        codedInputByteBufferNano.readMessage(c1096m9);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C1096m9 c1096m10 = new C1096m9();
                    c1096m9Arr2[length] = c1096m10;
                    codedInputByteBufferNano.readMessage(c1096m10);
                    this.l = c1096m9Arr2;
                    break;
                case 194:
                    this.m = codedInputByteBufferNano.readString();
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
        if (!this.a.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.a);
        }
        if (!this.b.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.b);
        }
        if (!this.c.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.c);
        }
        int i = this.d;
        if (i != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i);
        }
        if (!this.e.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(10, this.e);
        }
        if (!this.f.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(15, this.f);
        }
        boolean z = this.g;
        if (z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(17, z);
        }
        int i2 = this.h;
        if (i2 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(18, i2);
        }
        if (!this.i.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.i);
        }
        if (!this.j.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(21, this.j);
        }
        int i3 = this.k;
        if (i3 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(22, i3);
        }
        C1096m9[] c1096m9Arr = this.l;
        if (c1096m9Arr != null && c1096m9Arr.length > 0) {
            int i4 = 0;
            while (true) {
                C1096m9[] c1096m9Arr2 = this.l;
                if (i4 >= c1096m9Arr2.length) {
                    break;
                }
                C1096m9 c1096m9 = c1096m9Arr2[i4];
                if (c1096m9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(23, c1096m9) + iComputeSerializedSize;
                }
                i4++;
            }
        }
        return !this.m.equals("") ? CodedOutputByteBufferNano.computeStringSize(24, this.m) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        if (!this.a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.a);
        }
        if (!this.b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.b);
        }
        if (!this.c.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.c);
        }
        int i = this.d;
        if (i != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i);
        }
        if (!this.e.equals("")) {
            codedOutputByteBufferNano.writeString(10, this.e);
        }
        if (!this.f.equals("")) {
            codedOutputByteBufferNano.writeString(15, this.f);
        }
        boolean z = this.g;
        if (z) {
            codedOutputByteBufferNano.writeBool(17, z);
        }
        int i2 = this.h;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(18, i2);
        }
        if (!this.i.equals("")) {
            codedOutputByteBufferNano.writeString(19, this.i);
        }
        if (!this.j.equals("")) {
            codedOutputByteBufferNano.writeString(21, this.j);
        }
        int i3 = this.k;
        if (i3 != 0) {
            codedOutputByteBufferNano.writeUInt32(22, i3);
        }
        C1096m9[] c1096m9Arr = this.l;
        if (c1096m9Arr != null && c1096m9Arr.length > 0) {
            int i4 = 0;
            while (true) {
                C1096m9[] c1096m9Arr2 = this.l;
                if (i4 >= c1096m9Arr2.length) {
                    break;
                }
                C1096m9 c1096m9 = c1096m9Arr2[i4];
                if (c1096m9 != null) {
                    codedOutputByteBufferNano.writeMessage(23, c1096m9);
                }
                i4++;
            }
        }
        if (!this.m.equals("")) {
            codedOutputByteBufferNano.writeString(24, this.m);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1122n9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1122n9().mergeFrom(codedInputByteBufferNano);
    }

    public final C1122n9 a() {
        this.a = "";
        this.b = "";
        this.c = "";
        this.d = 0;
        this.e = "";
        this.f = "";
        this.g = false;
        this.h = 0;
        this.i = "";
        this.j = "";
        this.k = 0;
        this.l = C1096m9.b();
        this.m = "";
        this.cachedSize = -1;
        return this;
    }

    public static C1122n9 a(byte[] bArr) {
        return (C1122n9) MessageNano.mergeFrom(new C1122n9(), bArr);
    }
}
