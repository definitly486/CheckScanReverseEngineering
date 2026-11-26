package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class Ti extends MessageNano {
    public static volatile Ti[] d;
    public boolean a;
    public Si b;
    public Ri c;

    public Ti() {
        a();
    }

    public static Ti[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new Ti[0];
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
    public final Ti mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readBool();
            } else if (tag == 18) {
                Si si = this.b;
                if (si == null) {
                    si = new Si();
                    this.b = si;
                }
                codedInputByteBufferNano.readMessage(si);
            } else if (tag == 26) {
                Ri ri = this.c;
                if (ri == null) {
                    ri = new Ri();
                    this.c = ri;
                }
                codedInputByteBufferNano.readMessage(ri);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        boolean z = this.a;
        if (z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z);
        }
        Si si = this.b;
        if (si != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, si);
        }
        Ri ri = this.c;
        return ri != null ? CodedOutputByteBufferNano.computeMessageSize(3, ri) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z = this.a;
        if (z) {
            codedOutputByteBufferNano.writeBool(1, z);
        }
        Si si = this.b;
        if (si != null) {
            codedOutputByteBufferNano.writeMessage(2, si);
        }
        Ri ri = this.c;
        if (ri != null) {
            codedOutputByteBufferNano.writeMessage(3, ri);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static Ti b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Ti().mergeFrom(codedInputByteBufferNano);
    }

    public final Ti a() {
        this.a = false;
        this.b = null;
        this.c = null;
        this.cachedSize = -1;
        return this;
    }

    public static Ti a(byte[] bArr) {
        return (Ti) MessageNano.mergeFrom(new Ti(), bArr);
    }
}
