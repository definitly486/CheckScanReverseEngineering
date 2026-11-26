package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class pmb extends kmb {
    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r14[r12] <= (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        r12 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0046, code lost:
    
        if (r14[r12] <= (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x008a, code lost:
    
        if (r14[r12] <= (-65)) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(int i, int i2, int i3, byte[] bArr) {
        int i4;
        int i5;
        if (i == 0) {
            while (i2 < i3 && bArr[i2] >= 0) {
                i2++;
            }
            if (i2 < i3) {
                while (i2 < i3) {
                    int i6 = i2 + 1;
                    byte b = bArr[i2];
                    if (b >= 0) {
                        i2 = i6;
                    } else if (b < -32) {
                        if (i6 >= i3) {
                            return b;
                        }
                        if (b >= -62) {
                            i2 += 2;
                            if (bArr[i6] > -65) {
                            }
                        }
                    } else if (b < -16) {
                        if (i6 >= i3 - 1) {
                            return wmb.a(bArr, i6, i3);
                        }
                        int i7 = i2 + 2;
                        byte b2 = bArr[i6];
                        if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                            i2 += 3;
                            if (bArr[i7] > -65) {
                            }
                        }
                    } else {
                        if (i6 >= i3 - 2) {
                            return wmb.a(bArr, i6, i3);
                        }
                        int i8 = i2 + 2;
                        byte b3 = bArr[i6];
                        if (b3 <= -65) {
                            if ((((b3 + 112) + (b << 28)) >> 30) == 0) {
                                int i9 = i2 + 3;
                                if (bArr[i8] <= -65) {
                                    i2 += 4;
                                    if (bArr[i9] > -65) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return 0;
        }
        if (i2 >= i3) {
            return i;
        }
        byte b4 = (byte) i;
        if (b4 >= -32) {
            int i10 = ~(i >> 8);
            if (b4 < -16) {
                byte b5 = (byte) i10;
                if (b5 == 0) {
                    int i11 = i2 + 1;
                    byte b6 = bArr[i2];
                    if (i11 >= i3) {
                        return wmb.d(b4, b6);
                    }
                    i2 = i11;
                    b5 = b6;
                }
                if (b5 <= -65 && ((b4 != -32 || b5 >= -96) && (b4 != -19 || b5 < -96))) {
                    i5 = i2 + 1;
                }
            } else {
                byte b7 = (byte) i10;
                if (b7 == 0) {
                    int i12 = i2 + 1;
                    b7 = bArr[i2];
                    if (i12 >= i3) {
                        return wmb.d(b4, b7);
                    }
                    i2 = i12;
                    i4 = 0;
                } else {
                    i4 = i >> 16;
                }
                if (i4 == 0) {
                    int i13 = i2 + 1;
                    byte b8 = bArr[i2];
                    if (i13 >= i3) {
                        if (b4 > -12 || b7 > -65 || b8 > -65) {
                            return -1;
                        }
                        return ((b7 << 8) ^ b4) ^ (b8 << 16);
                    }
                    i2 = i13;
                    i4 = b8;
                }
                if (b7 <= -65) {
                    if ((((b7 + 112) + (b4 << 28)) >> 30) == 0 && i4 <= -65) {
                        i5 = i2 + 1;
                    }
                }
            }
        } else if (b4 >= -62) {
            i5 = i2 + 1;
        }
        return -1;
    }
}
