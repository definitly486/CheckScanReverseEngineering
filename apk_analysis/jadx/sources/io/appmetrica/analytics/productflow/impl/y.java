package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class y extends MessageNano {
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 3;
    public static final int m = 4;
    public static volatile y[] n;
    public byte[] a;
    public byte[] b;
    public int c;
    public w d;
    public x e;
    public v f;
    public r g;
    public t h;

    public y() {
        a();
    }

    public static y[] b() {
        if (n == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (n == null) {
                        n = new y[0];
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
    public final y mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readBytes();
            } else if (tag == 24) {
                int int32 = codedInputByteBufferNano.readInt32();
                if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3 || int32 == 4) {
                    this.c = int32;
                }
            } else if (tag == 34) {
                w wVar = this.d;
                if (wVar == null) {
                    wVar = new w();
                    this.d = wVar;
                }
                codedInputByteBufferNano.readMessage(wVar);
            } else if (tag == 42) {
                x xVar = this.e;
                if (xVar == null) {
                    xVar = new x();
                    this.e = xVar;
                }
                codedInputByteBufferNano.readMessage(xVar);
            } else if (tag == 50) {
                v vVar = this.f;
                if (vVar == null) {
                    vVar = new v();
                    this.f = vVar;
                }
                codedInputByteBufferNano.readMessage(vVar);
            } else if (tag == 58) {
                r rVar = this.g;
                if (rVar == null) {
                    rVar = new r();
                    this.g = rVar;
                }
                codedInputByteBufferNano.readMessage(rVar);
            } else if (tag == 66) {
                t tVar = this.h;
                if (tVar == null) {
                    tVar = new t();
                    this.h = tVar;
                }
                codedInputByteBufferNano.readMessage(tVar);
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
        int i2 = this.c;
        if (i2 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i2);
        }
        w wVar = this.d;
        if (wVar != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, wVar);
        }
        x xVar = this.e;
        if (xVar != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, xVar);
        }
        v vVar = this.f;
        if (vVar != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, vVar);
        }
        r rVar = this.g;
        if (rVar != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, rVar);
        }
        t tVar = this.h;
        return tVar != null ? CodedOutputByteBufferNano.computeMessageSize(8, tVar) + iComputeSerializedSize : iComputeSerializedSize;
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
        int i2 = this.c;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeInt32(3, i2);
        }
        w wVar = this.d;
        if (wVar != null) {
            codedOutputByteBufferNano.writeMessage(4, wVar);
        }
        x xVar = this.e;
        if (xVar != null) {
            codedOutputByteBufferNano.writeMessage(5, xVar);
        }
        v vVar = this.f;
        if (vVar != null) {
            codedOutputByteBufferNano.writeMessage(6, vVar);
        }
        r rVar = this.g;
        if (rVar != null) {
            codedOutputByteBufferNano.writeMessage(7, rVar);
        }
        t tVar = this.h;
        if (tVar != null) {
            codedOutputByteBufferNano.writeMessage(8, tVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static y b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new y().mergeFrom(codedInputByteBufferNano);
    }

    public final y a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = bArr;
        this.c = 0;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.cachedSize = -1;
        return this;
    }

    public static y a(byte[] bArr) {
        return (y) MessageNano.mergeFrom(new y(), bArr);
    }
}
