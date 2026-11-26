package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class F8 extends MessageNano {
    public static final int g = 0;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    public static final int k = 4;
    public static final int l = 5;
    public static final int m = 6;
    public static final int n = 7;
    public static volatile F8[] o;
    public int a;
    public E8 b;
    public C8 c;
    public D8 d;
    public C1147o8 e;
    public C1302u8 f;

    public F8() {
        a();
    }

    public static F8[] b() {
        if (o == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (o == null) {
                        o = new F8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return o;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final F8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag != 0) {
                if (tag == 8) {
                    int int32 = codedInputByteBufferNano.readInt32();
                    switch (int32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            this.a = int32;
                            break;
                    }
                } else if (tag == 18) {
                    E8 e8 = this.b;
                    if (e8 == null) {
                        e8 = new E8();
                        this.b = e8;
                    }
                    codedInputByteBufferNano.readMessage(e8);
                } else if (tag == 26) {
                    C8 c8 = this.c;
                    if (c8 == null) {
                        c8 = new C8();
                        this.c = c8;
                    }
                    codedInputByteBufferNano.readMessage(c8);
                } else if (tag == 34) {
                    D8 d8 = this.d;
                    if (d8 == null) {
                        d8 = new D8();
                        this.d = d8;
                    }
                    codedInputByteBufferNano.readMessage(d8);
                } else if (tag == 42) {
                    C1147o8 c1147o8 = this.e;
                    if (c1147o8 == null) {
                        c1147o8 = new C1147o8();
                        this.e = c1147o8;
                    }
                    codedInputByteBufferNano.readMessage(c1147o8);
                } else if (tag == 50) {
                    C1302u8 c1302u8 = this.f;
                    if (c1302u8 == null) {
                        c1302u8 = new C1302u8();
                        this.f = c1302u8;
                    }
                    codedInputByteBufferNano.readMessage(c1302u8);
                } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                }
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        int i2 = this.a;
        if (i2 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
        }
        E8 e8 = this.b;
        if (e8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, e8);
        }
        C8 c8 = this.c;
        if (c8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c8);
        }
        D8 d8 = this.d;
        if (d8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, d8);
        }
        C1147o8 c1147o8 = this.e;
        if (c1147o8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c1147o8);
        }
        C1302u8 c1302u8 = this.f;
        return c1302u8 != null ? CodedOutputByteBufferNano.computeMessageSize(6, c1302u8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        int i2 = this.a;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeInt32(1, i2);
        }
        E8 e8 = this.b;
        if (e8 != null) {
            codedOutputByteBufferNano.writeMessage(2, e8);
        }
        C8 c8 = this.c;
        if (c8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c8);
        }
        D8 d8 = this.d;
        if (d8 != null) {
            codedOutputByteBufferNano.writeMessage(4, d8);
        }
        C1147o8 c1147o8 = this.e;
        if (c1147o8 != null) {
            codedOutputByteBufferNano.writeMessage(5, c1147o8);
        }
        C1302u8 c1302u8 = this.f;
        if (c1302u8 != null) {
            codedOutputByteBufferNano.writeMessage(6, c1302u8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static F8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new F8().mergeFrom(codedInputByteBufferNano);
    }

    public final F8 a() {
        this.a = 0;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.cachedSize = -1;
        return this;
    }

    public static F8 a(byte[] bArr) {
        return (F8) MessageNano.mergeFrom(new F8(), bArr);
    }
}
