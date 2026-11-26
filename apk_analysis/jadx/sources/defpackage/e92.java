package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class e92 implements u83 {
    public final b99 a;
    public final zz5 b;

    public static final class a implements u83.a<b99> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            b99 b99Var = (b99) obj;
            if (aa4.e(b99Var.c, "data")) {
                return new e92(b99Var, zz5Var);
            }
            return null;
        }
    }

    public e92(b99 b99Var, zz5 zz5Var) {
        this.a = b99Var;
        this.b = zz5Var;
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        int i;
        int i2;
        int i3;
        h24.a aVar;
        int i4;
        byte[] bArr;
        int i5;
        int i6;
        b99 b99Var = this.a;
        String str = b99Var.a;
        char c = 6;
        int iK = ta8.K(str, ";base64,", 0, false, 6);
        if (iK == -1) {
            vh.e(b99Var, "invalid data uri: ");
            return null;
        }
        int iJ = ta8.J(':', 0, 6, str);
        if (iJ == -1) {
            vh.e(b99Var, "invalid data uri: ");
            return null;
        }
        int i7 = 1;
        String strSubstring = str.substring(iJ + 1, iK);
        xc0.a aVar2 = xc0.d;
        int i8 = iK + 8;
        int length = str.length();
        aVar2.getClass();
        xc0.b bVar = aVar2.c;
        boolean z = aVar2.b;
        int length2 = str.length();
        u0.a aVar3 = u0.Companion;
        aVar3.getClass();
        u0.a.a(i8, length, length2);
        byte[] bytes = str.substring(i8, length).getBytes(ha1.c);
        bytes.getClass();
        int length3 = bytes.length;
        int length4 = bytes.length;
        aVar3.getClass();
        u0.a.a(0, length3, length4);
        int i9 = -2;
        if (length3 == 0) {
            i = 1;
            i4 = 0;
            c = 6;
            aVar = null;
        } else {
            if (length3 == 1) {
                fg.c(jh.b(length3, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "));
                return null;
            }
            if (z) {
                i3 = length3;
                int i10 = 0;
                while (true) {
                    i = i7;
                    if (i10 >= length3) {
                        break;
                    }
                    int i11 = yc0.a[bytes[i10] & 255];
                    if (i11 < 0) {
                        if (i11 == -2) {
                            i3 -= length3 - i10;
                            break;
                        }
                        i3--;
                    }
                    i10++;
                    i7 = i;
                }
            } else {
                i = 1;
                if (bytes[length3 - 1] == 61) {
                    i3 = length3 - 1;
                    if (bytes[length3 - 2] == 61) {
                        i3 = length3 - 2;
                    }
                } else {
                    i2 = length3;
                }
                aVar = null;
                i4 = (int) ((((long) i2) * 6) / 8);
            }
            i2 = i3;
            aVar = null;
            i4 = (int) ((((long) i2) * 6) / 8);
        }
        byte[] bArr2 = new byte[i4];
        int[] iArr = aVar2.a ? yc0.b : yc0.a;
        int i12 = -8;
        int i13 = 0;
        int i14 = 8;
        int i15 = 0;
        int i16 = 0;
        int i17 = -8;
        while (true) {
            if (i16 >= length3) {
                bArr = bytes;
                i5 = 0;
                break;
            }
            if (i17 != i12 || (i6 = i16 + 3) >= length3) {
                bArr = bytes;
            } else {
                bArr = bytes;
                int i18 = i16 + 4;
                int i19 = (iArr[bArr[i16 + 2] & 255] << 6) | (iArr[bytes[i16] & 255] << 18) | (iArr[bArr[i16 + 1] & 255] << 12) | iArr[bArr[i6] & 255];
                if (i19 >= 0) {
                    bArr2[i15] = (byte) (i19 >> 16);
                    int i20 = i15 + 2;
                    bArr2[i15 + 1] = (byte) (i19 >> 8);
                    i15 += 3;
                    bArr2[i20] = (byte) i19;
                    i16 = i18;
                }
                bytes = bArr;
                i12 = -8;
                i9 = -2;
            }
            int i21 = bArr[i16] & 255;
            int i22 = iArr[i21];
            if (i22 >= 0) {
                i16++;
                i13 = (i13 << 6) | i22;
                int i23 = i17 + 6;
                if (i23 >= 0) {
                    bArr2[i15] = (byte) (i13 >>> i23);
                    i13 &= (i << i23) - 1;
                    i17 -= 2;
                    i15++;
                } else {
                    i17 = i23;
                }
                bytes = bArr;
                i12 = -8;
                i9 = -2;
                i14 = 8;
            } else {
                if (i22 == -2) {
                    if (i17 == -8) {
                        fg.c(jh.b(i16, "Redundant pad character at index "));
                        return aVar;
                    }
                    if (i17 != -6) {
                        if (i17 != -4) {
                            if (i17 != -2) {
                                ah.f("Unreachable");
                                return aVar;
                            }
                        } else {
                            if (bVar == xc0.b.ABSENT) {
                                fg.c(jh.b(i16, "The padding option is set to ABSENT, but the input has a pad character at index "));
                                return aVar;
                            }
                            int i24 = i16 + 1;
                            if (z) {
                                while (i24 < length3) {
                                    if (yc0.a[bArr[i24] & 255] != -1) {
                                        break;
                                    }
                                    i24++;
                                }
                            }
                            if (i24 == length3 || bArr[i24] != 61) {
                                fg.c(jh.b(i24, "Missing one pad character at index "));
                                return aVar;
                            }
                            i16 = i24 + 1;
                        }
                        i5 = i;
                        i9 = -2;
                        break;
                    }
                    if (bVar == xc0.b.ABSENT) {
                        fg.c(jh.b(i16, "The padding option is set to ABSENT, but the input has a pad character at index "));
                        return aVar;
                    }
                    i16++;
                    i5 = i;
                    i9 = -2;
                    break;
                }
                if (!z) {
                    char c2 = (char) i21;
                    ga1.b(i14);
                    String string = Integer.toString(i21, i14);
                    string.getClass();
                    throw new IllegalArgumentException("Invalid symbol '" + c2 + "'(" + string + ") at index " + i16);
                }
                i16++;
                bytes = bArr;
                i12 = -8;
                i9 = -2;
            }
        }
        if (i17 == i9) {
            fg.c("The last unit of input does not have enough bits");
            return aVar;
        }
        if (i17 != -8 && i5 == 0 && bVar == xc0.b.PRESENT) {
            fg.c("The padding option is set to PRESENT, but the input is not properly padded");
            return aVar;
        }
        if (i13 != 0) {
            fg.c("The pad bits must be zeros");
            return aVar;
        }
        if (z) {
            while (i16 < length3) {
                if (yc0.a[bArr[i16] & 255] != -1) {
                    break;
                }
                i16++;
            }
        }
        if (i16 >= length3) {
            if (i15 == i4) {
                bu0 bu0Var = new bu0();
                bu0Var.write(bArr2, 0, i4);
                return new x48(new a58(bu0Var, this.b.f, aVar), strSubstring, z82.MEMORY);
            }
            h24.a aVar4 = aVar;
            ah.f("Check failed.");
            return aVar4;
        }
        int i25 = bArr[i16] & 255;
        StringBuilder sb = new StringBuilder("Symbol '");
        sb.append((char) i25);
        sb.append("'(");
        ga1.b(8);
        String string2 = Integer.toString(i25, 8);
        string2.getClass();
        sb.append(string2);
        sb.append(") at index ");
        fg.c(l2.e(sb, " is prohibited after the pad character", i16 - 1));
        return null;
    }
}
