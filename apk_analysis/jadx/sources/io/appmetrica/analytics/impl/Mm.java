package io.appmetrica.analytics.impl;

import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class Mm extends MessageNano {
    public static final int D = -1;
    public static final int E = 0;
    public static final int F = 1;
    public static volatile Mm[] G;
    public Km A;
    public Im[] B;
    public Gm C;
    public String a;
    public long b;
    public String[] c;
    public String d;
    public String e;
    public String[] f;
    public String[] g;
    public Fm[] h;
    public Hm i;
    public String j;
    public String k;
    public String l;
    public boolean m;
    public String n;
    public String[] o;
    public Lm p;
    public boolean q;
    public String r;
    public long s;
    public long t;
    public boolean u;
    public Jm v;
    public int w;
    public int x;
    public Em y;
    public Dm z;

    public Mm() {
        a();
    }

    public static Mm[] b() {
        if (G == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (G == null) {
                        G = new Mm[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return G;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Mm mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            switch (tag) {
                case 0:
                    break;
                case 10:
                    this.a = codedInputByteBufferNano.readString();
                    break;
                case 16:
                    this.b = codedInputByteBufferNano.readInt64();
                    break;
                case 26:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                    String[] strArr = this.c;
                    int length = strArr == null ? 0 : strArr.length;
                    int i = repeatedFieldArrayLength + length;
                    String[] strArr2 = new String[i];
                    if (length != 0) {
                        System.arraycopy(strArr, 0, strArr2, 0, length);
                    }
                    while (length < i - 1) {
                        strArr2[length] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    strArr2[length] = codedInputByteBufferNano.readString();
                    this.c = strArr2;
                    break;
                case 34:
                    this.d = codedInputByteBufferNano.readString();
                    break;
                case 42:
                    this.e = codedInputByteBufferNano.readString();
                    break;
                case 50:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 50);
                    String[] strArr3 = this.f;
                    int length2 = strArr3 == null ? 0 : strArr3.length;
                    int i2 = repeatedFieldArrayLength2 + length2;
                    String[] strArr4 = new String[i2];
                    if (length2 != 0) {
                        System.arraycopy(strArr3, 0, strArr4, 0, length2);
                    }
                    while (length2 < i2 - 1) {
                        strArr4[length2] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    strArr4[length2] = codedInputByteBufferNano.readString();
                    this.f = strArr4;
                    break;
                case 58:
                    int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                    String[] strArr5 = this.g;
                    int length3 = strArr5 == null ? 0 : strArr5.length;
                    int i3 = repeatedFieldArrayLength3 + length3;
                    String[] strArr6 = new String[i3];
                    if (length3 != 0) {
                        System.arraycopy(strArr5, 0, strArr6, 0, length3);
                    }
                    while (length3 < i3 - 1) {
                        strArr6[length3] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length3++;
                    }
                    strArr6[length3] = codedInputByteBufferNano.readString();
                    this.g = strArr6;
                    break;
                case 66:
                    int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                    Fm[] fmArr = this.h;
                    int length4 = fmArr == null ? 0 : fmArr.length;
                    int i4 = repeatedFieldArrayLength4 + length4;
                    Fm[] fmArr2 = new Fm[i4];
                    if (length4 != 0) {
                        System.arraycopy(fmArr, 0, fmArr2, 0, length4);
                    }
                    while (length4 < i4 - 1) {
                        MessageNano fm = new Fm();
                        fmArr2[length4] = fm;
                        codedInputByteBufferNano.readMessage(fm);
                        codedInputByteBufferNano.readTag();
                        length4++;
                    }
                    MessageNano fm2 = new Fm();
                    fmArr2[length4] = fm2;
                    codedInputByteBufferNano.readMessage(fm2);
                    this.h = fmArr2;
                    break;
                case 74:
                    Hm hm = this.i;
                    if (hm == null) {
                        hm = new Hm();
                        this.i = hm;
                    }
                    codedInputByteBufferNano.readMessage(hm);
                    break;
                case 82:
                    this.j = codedInputByteBufferNano.readString();
                    break;
                case 90:
                    this.k = codedInputByteBufferNano.readString();
                    break;
                case 98:
                    this.l = codedInputByteBufferNano.readString();
                    break;
                case 104:
                    this.m = codedInputByteBufferNano.readBool();
                    break;
                case 114:
                    this.n = codedInputByteBufferNano.readString();
                    break;
                case 122:
                    int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 122);
                    String[] strArr7 = this.o;
                    int length5 = strArr7 == null ? 0 : strArr7.length;
                    int i5 = repeatedFieldArrayLength5 + length5;
                    String[] strArr8 = new String[i5];
                    if (length5 != 0) {
                        System.arraycopy(strArr7, 0, strArr8, 0, length5);
                    }
                    while (length5 < i5 - 1) {
                        strArr8[length5] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length5++;
                    }
                    strArr8[length5] = codedInputByteBufferNano.readString();
                    this.o = strArr8;
                    break;
                case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                    Lm lm = this.p;
                    if (lm == null) {
                        lm = new Lm();
                        this.p = lm;
                    }
                    codedInputByteBufferNano.readMessage(lm);
                    break;
                case 136:
                    this.q = codedInputByteBufferNano.readBool();
                    break;
                case 162:
                    this.r = codedInputByteBufferNano.readString();
                    break;
                case 168:
                    this.s = codedInputByteBufferNano.readInt64();
                    break;
                case WebmConstants.MkvEbmlElement.PIXEL_WIDTH /* 176 */:
                    this.t = codedInputByteBufferNano.readInt64();
                    break;
                case 184:
                    this.u = codedInputByteBufferNano.readBool();
                    break;
                case 194:
                    Jm jm = this.v;
                    if (jm == null) {
                        jm = new Jm();
                        this.v = jm;
                    }
                    codedInputByteBufferNano.readMessage(jm);
                    break;
                case 200:
                    this.w = codedInputByteBufferNano.readInt32();
                    break;
                case 208:
                    this.x = codedInputByteBufferNano.readInt32();
                    break;
                case 218:
                    Em em = this.y;
                    if (em == null) {
                        em = new Em();
                        this.y = em;
                    }
                    codedInputByteBufferNano.readMessage(em);
                    break;
                case 234:
                    Dm dm = this.z;
                    if (dm == null) {
                        dm = new Dm();
                        this.z = dm;
                    }
                    codedInputByteBufferNano.readMessage(dm);
                    break;
                case 242:
                    Km km = this.A;
                    if (km == null) {
                        km = new Km();
                        this.A = km;
                    }
                    codedInputByteBufferNano.readMessage(km);
                    break;
                case 250:
                    int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 250);
                    Im[] imArr = this.B;
                    int length6 = imArr == null ? 0 : imArr.length;
                    int i6 = repeatedFieldArrayLength6 + length6;
                    Im[] imArr2 = new Im[i6];
                    if (length6 != 0) {
                        System.arraycopy(imArr, 0, imArr2, 0, length6);
                    }
                    while (length6 < i6 - 1) {
                        MessageNano im = new Im();
                        imArr2[length6] = im;
                        codedInputByteBufferNano.readMessage(im);
                        codedInputByteBufferNano.readTag();
                        length6++;
                    }
                    MessageNano im2 = new Im();
                    imArr2[length6] = im2;
                    codedInputByteBufferNano.readMessage(im2);
                    this.B = imArr2;
                    break;
                case 258:
                    Gm gm = this.C;
                    if (gm == null) {
                        gm = new Gm();
                        this.C = gm;
                    }
                    codedInputByteBufferNano.readMessage(gm);
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
        int iComputeInt64Size = CodedOutputByteBufferNano.computeInt64Size(2, this.b) + iComputeSerializedSize;
        String[] strArr = this.c;
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            int iComputeStringSizeNoTag = 0;
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.c;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    i3++;
                    iComputeStringSizeNoTag += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                }
                i2++;
            }
            iComputeInt64Size = iComputeInt64Size + iComputeStringSizeNoTag + i3;
        }
        if (!this.d.equals("")) {
            iComputeInt64Size += CodedOutputByteBufferNano.computeStringSize(4, this.d);
        }
        if (!this.e.equals("")) {
            iComputeInt64Size += CodedOutputByteBufferNano.computeStringSize(5, this.e);
        }
        String[] strArr3 = this.f;
        if (strArr3 != null && strArr3.length > 0) {
            int i4 = 0;
            int iComputeStringSizeNoTag2 = 0;
            int i5 = 0;
            while (true) {
                String[] strArr4 = this.f;
                if (i4 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i4];
                if (str2 != null) {
                    i5++;
                    iComputeStringSizeNoTag2 += CodedOutputByteBufferNano.computeStringSizeNoTag(str2);
                }
                i4++;
            }
            iComputeInt64Size = iComputeInt64Size + iComputeStringSizeNoTag2 + i5;
        }
        String[] strArr5 = this.g;
        if (strArr5 != null && strArr5.length > 0) {
            int i6 = 0;
            int iComputeStringSizeNoTag3 = 0;
            int i7 = 0;
            while (true) {
                String[] strArr6 = this.g;
                if (i6 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i6];
                if (str3 != null) {
                    i7++;
                    iComputeStringSizeNoTag3 += CodedOutputByteBufferNano.computeStringSizeNoTag(str3);
                }
                i6++;
            }
            iComputeInt64Size = iComputeInt64Size + iComputeStringSizeNoTag3 + i7;
        }
        Fm[] fmArr = this.h;
        if (fmArr != null && fmArr.length > 0) {
            int i8 = 0;
            while (true) {
                Fm[] fmArr2 = this.h;
                if (i8 >= fmArr2.length) {
                    break;
                }
                Fm fm = fmArr2[i8];
                if (fm != null) {
                    iComputeInt64Size = CodedOutputByteBufferNano.computeMessageSize(8, fm) + iComputeInt64Size;
                }
                i8++;
            }
        }
        Hm hm = this.i;
        if (hm != null) {
            iComputeInt64Size += CodedOutputByteBufferNano.computeMessageSize(9, hm);
        }
        if (!this.j.equals("")) {
            iComputeInt64Size += CodedOutputByteBufferNano.computeStringSize(10, this.j);
        }
        if (!this.k.equals("")) {
            iComputeInt64Size += CodedOutputByteBufferNano.computeStringSize(11, this.k);
        }
        if (!this.l.equals("")) {
            iComputeInt64Size += CodedOutputByteBufferNano.computeStringSize(12, this.l);
        }
        int iComputeBoolSize = CodedOutputByteBufferNano.computeBoolSize(13, this.m) + iComputeInt64Size;
        if (!this.n.equals("")) {
            iComputeBoolSize += CodedOutputByteBufferNano.computeStringSize(14, this.n);
        }
        String[] strArr7 = this.o;
        if (strArr7 != null && strArr7.length > 0) {
            int i9 = 0;
            int iComputeStringSizeNoTag4 = 0;
            int i10 = 0;
            while (true) {
                String[] strArr8 = this.o;
                if (i9 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i9];
                if (str4 != null) {
                    i10++;
                    iComputeStringSizeNoTag4 += CodedOutputByteBufferNano.computeStringSizeNoTag(str4);
                }
                i9++;
            }
            iComputeBoolSize = iComputeBoolSize + iComputeStringSizeNoTag4 + i10;
        }
        Lm lm = this.p;
        if (lm != null) {
            iComputeBoolSize += CodedOutputByteBufferNano.computeMessageSize(16, lm);
        }
        boolean z = this.q;
        if (z) {
            iComputeBoolSize += CodedOutputByteBufferNano.computeBoolSize(17, z);
        }
        if (!this.r.equals("")) {
            iComputeBoolSize += CodedOutputByteBufferNano.computeStringSize(20, this.r);
        }
        int iComputeInt64Size2 = CodedOutputByteBufferNano.computeInt64Size(22, this.t) + CodedOutputByteBufferNano.computeInt64Size(21, this.s) + iComputeBoolSize;
        boolean z2 = this.u;
        if (z2) {
            iComputeInt64Size2 += CodedOutputByteBufferNano.computeBoolSize(23, z2);
        }
        Jm jm = this.v;
        if (jm != null) {
            iComputeInt64Size2 += CodedOutputByteBufferNano.computeMessageSize(24, jm);
        }
        int iComputeInt32Size = CodedOutputByteBufferNano.computeInt32Size(26, this.x) + CodedOutputByteBufferNano.computeInt32Size(25, this.w) + iComputeInt64Size2;
        Em em = this.y;
        if (em != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(27, em);
        }
        Dm dm = this.z;
        if (dm != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(29, dm);
        }
        Km km = this.A;
        if (km != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(30, km);
        }
        Im[] imArr = this.B;
        if (imArr != null && imArr.length > 0) {
            while (true) {
                Im[] imArr2 = this.B;
                if (i >= imArr2.length) {
                    break;
                }
                Im im = imArr2[i];
                if (im != null) {
                    iComputeInt32Size = CodedOutputByteBufferNano.computeMessageSize(31, im) + iComputeInt32Size;
                }
                i++;
            }
        }
        Gm gm = this.C;
        return gm != null ? CodedOutputByteBufferNano.computeMessageSize(32, gm) + iComputeInt32Size : iComputeInt32Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        if (!this.a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.a);
        }
        codedOutputByteBufferNano.writeInt64(2, this.b);
        String[] strArr = this.c;
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.c;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(3, str);
                }
                i2++;
            }
        }
        if (!this.d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.d);
        }
        if (!this.e.equals("")) {
            codedOutputByteBufferNano.writeString(5, this.e);
        }
        String[] strArr3 = this.f;
        if (strArr3 != null && strArr3.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr4 = this.f;
                if (i3 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i3];
                if (str2 != null) {
                    codedOutputByteBufferNano.writeString(6, str2);
                }
                i3++;
            }
        }
        String[] strArr5 = this.g;
        if (strArr5 != null && strArr5.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr6 = this.g;
                if (i4 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i4];
                if (str3 != null) {
                    codedOutputByteBufferNano.writeString(7, str3);
                }
                i4++;
            }
        }
        Fm[] fmArr = this.h;
        if (fmArr != null && fmArr.length > 0) {
            int i5 = 0;
            while (true) {
                Fm[] fmArr2 = this.h;
                if (i5 >= fmArr2.length) {
                    break;
                }
                Fm fm = fmArr2[i5];
                if (fm != null) {
                    codedOutputByteBufferNano.writeMessage(8, fm);
                }
                i5++;
            }
        }
        Hm hm = this.i;
        if (hm != null) {
            codedOutputByteBufferNano.writeMessage(9, hm);
        }
        if (!this.j.equals("")) {
            codedOutputByteBufferNano.writeString(10, this.j);
        }
        if (!this.k.equals("")) {
            codedOutputByteBufferNano.writeString(11, this.k);
        }
        if (!this.l.equals("")) {
            codedOutputByteBufferNano.writeString(12, this.l);
        }
        codedOutputByteBufferNano.writeBool(13, this.m);
        if (!this.n.equals("")) {
            codedOutputByteBufferNano.writeString(14, this.n);
        }
        String[] strArr7 = this.o;
        if (strArr7 != null && strArr7.length > 0) {
            int i6 = 0;
            while (true) {
                String[] strArr8 = this.o;
                if (i6 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i6];
                if (str4 != null) {
                    codedOutputByteBufferNano.writeString(15, str4);
                }
                i6++;
            }
        }
        Lm lm = this.p;
        if (lm != null) {
            codedOutputByteBufferNano.writeMessage(16, lm);
        }
        boolean z = this.q;
        if (z) {
            codedOutputByteBufferNano.writeBool(17, z);
        }
        if (!this.r.equals("")) {
            codedOutputByteBufferNano.writeString(20, this.r);
        }
        codedOutputByteBufferNano.writeInt64(21, this.s);
        codedOutputByteBufferNano.writeInt64(22, this.t);
        boolean z2 = this.u;
        if (z2) {
            codedOutputByteBufferNano.writeBool(23, z2);
        }
        Jm jm = this.v;
        if (jm != null) {
            codedOutputByteBufferNano.writeMessage(24, jm);
        }
        codedOutputByteBufferNano.writeInt32(25, this.w);
        codedOutputByteBufferNano.writeInt32(26, this.x);
        Em em = this.y;
        if (em != null) {
            codedOutputByteBufferNano.writeMessage(27, em);
        }
        Dm dm = this.z;
        if (dm != null) {
            codedOutputByteBufferNano.writeMessage(29, dm);
        }
        Km km = this.A;
        if (km != null) {
            codedOutputByteBufferNano.writeMessage(30, km);
        }
        Im[] imArr = this.B;
        if (imArr != null && imArr.length > 0) {
            while (true) {
                Im[] imArr2 = this.B;
                if (i >= imArr2.length) {
                    break;
                }
                Im im = imArr2[i];
                if (im != null) {
                    codedOutputByteBufferNano.writeMessage(31, im);
                }
                i++;
            }
        }
        Gm gm = this.C;
        if (gm != null) {
            codedOutputByteBufferNano.writeMessage(32, gm);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static Mm b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Mm().mergeFrom(codedInputByteBufferNano);
    }

    public final Mm a() {
        this.a = "";
        this.b = 0L;
        String[] strArr = WireFormatNano.EMPTY_STRING_ARRAY;
        this.c = strArr;
        this.d = "";
        this.e = "";
        this.f = strArr;
        this.g = strArr;
        this.h = Fm.b();
        this.i = null;
        this.j = "";
        this.k = "";
        this.l = "";
        this.m = false;
        this.n = "";
        this.o = strArr;
        this.p = null;
        this.q = false;
        this.r = "";
        this.s = 0L;
        this.t = 0L;
        this.u = false;
        this.v = null;
        this.w = 600;
        this.x = 1;
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = Im.b();
        this.C = null;
        this.cachedSize = -1;
        return this;
    }

    public static Mm a(byte[] bArr) {
        return (Mm) MessageNano.mergeFrom(new Mm(), bArr);
    }
}
