package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public abstract class unb {
    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(byte[] bArr, int i, int i2) {
        int iA;
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            iA = 0;
            break;
        }
        while (true) {
            if (i >= i2) {
                iA = 0;
                break;
            }
            int i3 = i + 1;
            iA = bArr[i];
            if (iA < 0) {
                if (iA >= -32) {
                    if (iA >= -16) {
                        if (i3 < i2 - 2) {
                            int i4 = i + 2;
                            int i5 = bArr[i3];
                            if (i5 <= -65) {
                                if ((((i5 + 112) + (iA << 28)) >> 30) == 0) {
                                    int i6 = i + 3;
                                    if (bArr[i4] <= -65) {
                                        i += 4;
                                        if (bArr[i6] > -65) {
                                        }
                                    }
                                }
                            }
                            iA = -1;
                            break;
                        }
                        iA = dob.a(bArr, i3, i2);
                        break;
                    }
                    if (i3 < i2 - 1) {
                        int i7 = i + 2;
                        char c = bArr[i3];
                        if (c <= -65 && ((iA != -32 || c >= -96) && (iA != -19 || c < -96))) {
                            i += 3;
                            if (bArr[i7] > -65) {
                            }
                        }
                        iA = -1;
                        break;
                    }
                    iA = dob.a(bArr, i3, i2);
                    break;
                }
                if (i3 >= i2) {
                    break;
                }
                if (iA >= -62) {
                    i += 2;
                    if (bArr[i3] > -65) {
                    }
                }
                iA = -1;
                break;
            }
            i = i3;
        }
        return iA == 0;
    }
}
