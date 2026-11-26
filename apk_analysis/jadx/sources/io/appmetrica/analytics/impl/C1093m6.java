package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1093m6 extends MessageNano {
    public static volatile C1093m6[] f;
    public String a;
    public String b;
    public C1041k6[] c;
    public C1093m6 d;
    public C1093m6[] e;

    public C1093m6() {
        a();
    }

    public static C1093m6[] b() {
        if (f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (f == null) {
                        f = new C1093m6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1093m6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readString();
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readString();
            } else if (tag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C1041k6[] c1041k6Arr = this.c;
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
                this.c = c1041k6Arr2;
            } else if (tag == 34) {
                C1093m6 c1093m6 = this.d;
                if (c1093m6 == null) {
                    c1093m6 = new C1093m6();
                    this.d = c1093m6;
                }
                codedInputByteBufferNano.readMessage(c1093m6);
            } else if (tag == 42) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                C1093m6[] c1093m6Arr = this.e;
                int length2 = c1093m6Arr == null ? 0 : c1093m6Arr.length;
                int i2 = repeatedFieldArrayLength2 + length2;
                C1093m6[] c1093m6Arr2 = new C1093m6[i2];
                if (length2 != 0) {
                    System.arraycopy(c1093m6Arr, 0, c1093m6Arr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    MessageNano c1093m7 = new C1093m6();
                    c1093m6Arr2[length2] = c1093m7;
                    codedInputByteBufferNano.readMessage(c1093m7);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                MessageNano c1093m8 = new C1093m6();
                c1093m6Arr2[length2] = c1093m8;
                codedInputByteBufferNano.readMessage(c1093m8);
                this.e = c1093m6Arr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeStringSize = CodedOutputByteBufferNano.computeStringSize(1, this.a) + super.computeSerializedSize();
        if (!this.b.equals("")) {
            iComputeStringSize += CodedOutputByteBufferNano.computeStringSize(2, this.b);
        }
        C1041k6[] c1041k6Arr = this.c;
        int i = 0;
        if (c1041k6Arr != null && c1041k6Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C1041k6[] c1041k6Arr2 = this.c;
                if (i2 >= c1041k6Arr2.length) {
                    break;
                }
                C1041k6 c1041k6 = c1041k6Arr2[i2];
                if (c1041k6 != null) {
                    iComputeStringSize = CodedOutputByteBufferNano.computeMessageSize(3, c1041k6) + iComputeStringSize;
                }
                i2++;
            }
        }
        C1093m6 c1093m6 = this.d;
        if (c1093m6 != null) {
            iComputeStringSize += CodedOutputByteBufferNano.computeMessageSize(4, c1093m6);
        }
        C1093m6[] c1093m6Arr = this.e;
        if (c1093m6Arr != null && c1093m6Arr.length > 0) {
            while (true) {
                C1093m6[] c1093m6Arr2 = this.e;
                if (i >= c1093m6Arr2.length) {
                    break;
                }
                C1093m6 c1093m7 = c1093m6Arr2[i];
                if (c1093m7 != null) {
                    iComputeStringSize = CodedOutputByteBufferNano.computeMessageSize(5, c1093m7) + iComputeStringSize;
                }
                i++;
            }
        }
        return iComputeStringSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        codedOutputByteBufferNano.writeString(1, this.a);
        if (!this.b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.b);
        }
        C1041k6[] c1041k6Arr = this.c;
        int i = 0;
        if (c1041k6Arr != null && c1041k6Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C1041k6[] c1041k6Arr2 = this.c;
                if (i2 >= c1041k6Arr2.length) {
                    break;
                }
                C1041k6 c1041k6 = c1041k6Arr2[i2];
                if (c1041k6 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c1041k6);
                }
                i2++;
            }
        }
        C1093m6 c1093m6 = this.d;
        if (c1093m6 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1093m6);
        }
        C1093m6[] c1093m6Arr = this.e;
        if (c1093m6Arr != null && c1093m6Arr.length > 0) {
            while (true) {
                C1093m6[] c1093m6Arr2 = this.e;
                if (i >= c1093m6Arr2.length) {
                    break;
                }
                C1093m6 c1093m7 = c1093m6Arr2[i];
                if (c1093m7 != null) {
                    codedOutputByteBufferNano.writeMessage(5, c1093m7);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1093m6 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1093m6().mergeFrom(codedInputByteBufferNano);
    }

    public final C1093m6 a() {
        this.a = "";
        this.b = "";
        this.c = C1041k6.b();
        this.d = null;
        this.e = b();
        this.cachedSize = -1;
        return this;
    }

    public static C1093m6 a(byte[] bArr) {
        return (C1093m6) MessageNano.mergeFrom(new C1093m6(), bArr);
    }
}
