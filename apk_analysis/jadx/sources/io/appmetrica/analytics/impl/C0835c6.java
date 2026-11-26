package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.c6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0835c6 extends MessageNano {
    public static volatile C0835c6[] d;
    public C1067l6 a;
    public C1067l6[] b;
    public String c;

    public C0835c6() {
        a();
    }

    public static C0835c6[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new C0835c6[0];
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
    public final C0835c6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                C1067l6 c1067l6 = this.a;
                if (c1067l6 == null) {
                    c1067l6 = new C1067l6();
                    this.a = c1067l6;
                }
                codedInputByteBufferNano.readMessage(c1067l6);
            } else if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C1067l6[] c1067l6Arr = this.b;
                int length = c1067l6Arr == null ? 0 : c1067l6Arr.length;
                int i = repeatedFieldArrayLength + length;
                C1067l6[] c1067l6Arr2 = new C1067l6[i];
                if (length != 0) {
                    System.arraycopy(c1067l6Arr, 0, c1067l6Arr2, 0, length);
                }
                while (length < i - 1) {
                    MessageNano c1067l7 = new C1067l6();
                    c1067l6Arr2[length] = c1067l7;
                    codedInputByteBufferNano.readMessage(c1067l7);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano c1067l8 = new C1067l6();
                c1067l6Arr2[length] = c1067l8;
                codedInputByteBufferNano.readMessage(c1067l8);
                this.b = c1067l6Arr2;
            } else if (tag == 26) {
                this.c = codedInputByteBufferNano.readString();
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1067l6 c1067l6 = this.a;
        if (c1067l6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1067l6);
        }
        C1067l6[] c1067l6Arr = this.b;
        if (c1067l6Arr != null && c1067l6Arr.length > 0) {
            int i = 0;
            while (true) {
                C1067l6[] c1067l6Arr2 = this.b;
                if (i >= c1067l6Arr2.length) {
                    break;
                }
                C1067l6 c1067l7 = c1067l6Arr2[i];
                if (c1067l7 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(2, c1067l7) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return !this.c.equals("") ? CodedOutputByteBufferNano.computeStringSize(3, this.c) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        C1067l6 c1067l6 = this.a;
        if (c1067l6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c1067l6);
        }
        C1067l6[] c1067l6Arr = this.b;
        if (c1067l6Arr != null && c1067l6Arr.length > 0) {
            int i = 0;
            while (true) {
                C1067l6[] c1067l6Arr2 = this.b;
                if (i >= c1067l6Arr2.length) {
                    break;
                }
                C1067l6 c1067l7 = c1067l6Arr2[i];
                if (c1067l7 != null) {
                    codedOutputByteBufferNano.writeMessage(2, c1067l7);
                }
                i++;
            }
        }
        if (!this.c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.c);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C0835c6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C0835c6().mergeFrom(codedInputByteBufferNano);
    }

    public final C0835c6 a() {
        this.a = null;
        this.b = C1067l6.b();
        this.c = "";
        this.cachedSize = -1;
        return this;
    }

    public static C0835c6 a(byte[] bArr) {
        return (C0835c6) MessageNano.mergeFrom(new C0835c6(), bArr);
    }
}
