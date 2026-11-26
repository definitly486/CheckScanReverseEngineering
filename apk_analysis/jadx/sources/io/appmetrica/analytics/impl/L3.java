package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class L3 extends MessageNano {
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static volatile L3[] g;
    public I3 a;
    public I3[] b;

    public L3() {
        a();
    }

    public static L3[] b() {
        if (g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (g == null) {
                        g = new L3[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final L3 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                I3 i3 = this.a;
                if (i3 == null) {
                    i3 = new I3();
                    this.a = i3;
                }
                codedInputByteBufferNano.readMessage(i3);
            } else if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                I3[] i3Arr = this.b;
                int length = i3Arr == null ? 0 : i3Arr.length;
                int i = repeatedFieldArrayLength + length;
                I3[] i3Arr2 = new I3[i];
                if (length != 0) {
                    System.arraycopy(i3Arr, 0, i3Arr2, 0, length);
                }
                while (length < i - 1) {
                    MessageNano i4 = new I3();
                    i3Arr2[length] = i4;
                    codedInputByteBufferNano.readMessage(i4);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano i5 = new I3();
                i3Arr2[length] = i5;
                codedInputByteBufferNano.readMessage(i5);
                this.b = i3Arr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        I3 i3 = this.a;
        if (i3 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, i3);
        }
        I3[] i3Arr = this.b;
        if (i3Arr != null && i3Arr.length > 0) {
            int i = 0;
            while (true) {
                I3[] i3Arr2 = this.b;
                if (i >= i3Arr2.length) {
                    break;
                }
                I3 i4 = i3Arr2[i];
                if (i4 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(2, i4) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        I3 i3 = this.a;
        if (i3 != null) {
            codedOutputByteBufferNano.writeMessage(1, i3);
        }
        I3[] i3Arr = this.b;
        if (i3Arr != null && i3Arr.length > 0) {
            int i = 0;
            while (true) {
                I3[] i3Arr2 = this.b;
                if (i >= i3Arr2.length) {
                    break;
                }
                I3 i4 = i3Arr2[i];
                if (i4 != null) {
                    codedOutputByteBufferNano.writeMessage(2, i4);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static L3 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new L3().mergeFrom(codedInputByteBufferNano);
    }

    public final L3 a() {
        this.a = null;
        this.b = I3.b();
        this.cachedSize = -1;
        return this;
    }

    public static L3 a(byte[] bArr) {
        return (L3) MessageNano.mergeFrom(new L3(), bArr);
    }
}
