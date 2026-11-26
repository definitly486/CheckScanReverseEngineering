package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.io.EOFException;

/* JADX INFO: loaded from: classes3.dex */
public final class he4 extends td4 {
    public static final gx0 m;
    public static final gx0 n;
    public static final gx0 o;
    public final iy6 g;
    public final bu0 h;
    public int i;
    public long j;
    public int k;
    public String l;

    static {
        gx0 gx0Var = gx0.e;
        m = gx0.a.c("'\\");
        n = gx0.a.c("\"\\");
        o = gx0.a.c("{}[]:, \n\t\r\f/\\;#=");
        gx0.a.c("\n\r");
        gx0.a.c("*/");
    }

    public he4(iy6 iy6Var) {
        this.c = new int[32];
        this.d = new String[32];
        this.e = new int[32];
        this.i = 0;
        this.g = iy6Var;
        this.h = iy6Var.c;
        V(6);
    }

    public final String A0() {
        long jW = this.g.W(o);
        bu0 bu0Var = this.h;
        if (jW == -1) {
            return bu0Var.q0();
        }
        bu0Var.getClass();
        return bu0Var.n0(jW, ha1.b);
    }

    public final char B0() throws xc4, EOFException {
        int i;
        iy6 iy6Var = this.g;
        if (!iy6Var.request(1L)) {
            k0("Unterminated escape sequence");
            throw null;
        }
        bu0 bu0Var = this.h;
        byte b = bu0Var.readByte();
        if (b == 10 || b == 34 || b == 39 || b == 47 || b == 92) {
            return (char) b;
        }
        if (b == 98) {
            return '\b';
        }
        if (b == 102) {
            return '\f';
        }
        if (b == 110) {
            return '\n';
        }
        if (b == 114) {
            return '\r';
        }
        if (b == 116) {
            return '\t';
        }
        if (b != 117) {
            k0("Invalid escape sequence: \\" + ((char) b));
            throw null;
        }
        if (!iy6Var.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path ".concat(getPath()));
        }
        char c = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            byte bQ = bu0Var.Q(i2);
            char c2 = (char) (c << 4);
            if (bQ >= 48 && bQ <= 57) {
                i = bQ - 48;
            } else if (bQ >= 97 && bQ <= 102) {
                i = bQ - 87;
            } else {
                if (bQ < 65 || bQ > 70) {
                    k0("\\u".concat(bu0Var.n0(4L, ha1.b)));
                    throw null;
                }
                i = bQ - 55;
            }
            c = (char) (i + c2);
        }
        bu0Var.skip(4L);
        return c;
    }

    public final void C0(gx0 gx0Var) throws xc4, EOFException {
        while (true) {
            long jW = this.g.W(gx0Var);
            if (jW == -1) {
                k0("Unterminated string");
                throw null;
            }
            bu0 bu0Var = this.h;
            if (bu0Var.Q(jW) != 92) {
                bu0Var.skip(jW + 1);
                return;
            } else {
                bu0Var.skip(jW + 1);
                B0();
            }
        }
    }

    @Override // defpackage.td4
    public final double E() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 == 16) {
            this.i = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return this.j;
        }
        if (iQ0 == 17) {
            long j = this.k;
            bu0 bu0Var = this.h;
            bu0Var.getClass();
            this.l = bu0Var.n0(j, ha1.b);
        } else if (iQ0 == 9) {
            this.l = z0(n);
        } else if (iQ0 == 8) {
            this.l = z0(m);
        } else if (iQ0 == 10) {
            this.l = A0();
        } else if (iQ0 != 11) {
            StringBuilder sb = new StringBuilder("Expected a double but was ");
            sb.append(U());
            u4.f(getPath(), sb);
            return 0.0d;
        }
        this.i = 11;
        try {
            double d = Double.parseDouble(this.l);
            if (Double.isNaN(d) || Double.isInfinite(d)) {
                throw new xc4("JSON forbids NaN and infinities: " + d + " at path " + getPath());
            }
            this.l = null;
            this.i = 0;
            int[] iArr2 = this.e;
            int i2 = this.b - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return d;
        } catch (NumberFormatException unused) {
            throw new jc4("Expected a double but was " + this.l + " at path " + getPath());
        }
    }

    @Override // defpackage.td4
    public final int P() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 == 16) {
            long j = this.j;
            int i = (int) j;
            if (j == i) {
                this.i = 0;
                int[] iArr = this.e;
                int i2 = this.b - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
            throw new jc4("Expected an int but was " + this.j + " at path " + getPath());
        }
        if (iQ0 == 17) {
            long j2 = this.k;
            bu0 bu0Var = this.h;
            bu0Var.getClass();
            this.l = bu0Var.n0(j2, ha1.b);
        } else if (iQ0 == 9 || iQ0 == 8) {
            String strZ0 = iQ0 == 9 ? z0(n) : z0(m);
            this.l = strZ0;
            try {
                int i3 = Integer.parseInt(strZ0);
                this.i = 0;
                int[] iArr2 = this.e;
                int i4 = this.b - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        } else if (iQ0 != 11) {
            StringBuilder sb = new StringBuilder("Expected an int but was ");
            sb.append(U());
            u4.f(getPath(), sb);
            return 0;
        }
        this.i = 11;
        try {
            double d = Double.parseDouble(this.l);
            int i5 = (int) d;
            if (i5 == d) {
                this.l = null;
                this.i = 0;
                int[] iArr3 = this.e;
                int i6 = this.b - 1;
                iArr3[i6] = iArr3[i6] + 1;
                return i5;
            }
            throw new jc4("Expected an int but was " + this.l + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new jc4("Expected an int but was " + this.l + " at path " + getPath());
        }
    }

    @Override // defpackage.td4
    public final String Q() throws xc4, EOFException {
        String strN0;
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 == 10) {
            strN0 = A0();
        } else if (iQ0 == 9) {
            strN0 = z0(n);
        } else if (iQ0 == 8) {
            strN0 = z0(m);
        } else if (iQ0 == 11) {
            strN0 = this.l;
            this.l = null;
        } else if (iQ0 == 16) {
            strN0 = Long.toString(this.j);
        } else {
            if (iQ0 != 17) {
                StringBuilder sb = new StringBuilder("Expected a string but was ");
                sb.append(U());
                u4.f(getPath(), sb);
                return null;
            }
            long j = this.k;
            bu0 bu0Var = this.h;
            bu0Var.getClass();
            strN0 = bu0Var.n0(j, ha1.b);
        }
        this.i = 0;
        int[] iArr = this.e;
        int i = this.b - 1;
        iArr[i] = iArr[i] + 1;
        return strN0;
    }

    @Override // defpackage.td4
    public final td4.b U() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        switch (iQ0) {
            case 1:
                return td4.b.BEGIN_OBJECT;
            case 2:
                return td4.b.END_OBJECT;
            case 3:
                return td4.b.BEGIN_ARRAY;
            case 4:
                return td4.b.END_ARRAY;
            case 5:
            case 6:
                return td4.b.BOOLEAN;
            case 7:
                return td4.b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return td4.b.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return td4.b.NAME;
            case 16:
            case 17:
                return td4.b.NUMBER;
            case 18:
                return td4.b.END_DOCUMENT;
            default:
                xp.g();
                return null;
        }
    }

    @Override // defpackage.td4
    public final int X(td4.a aVar) throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 < 12 || iQ0 > 15) {
            return -1;
        }
        if (iQ0 == 15) {
            return r0(this.l, aVar);
        }
        int iF0 = this.g.f0(aVar.b);
        if (iF0 != -1) {
            this.i = 0;
            this.d[this.b - 1] = aVar.a[iF0];
            return iF0;
        }
        String str = this.d[this.b - 1];
        String strX0 = x0();
        int iR0 = r0(strX0, aVar);
        if (iR0 == -1) {
            this.i = 15;
            this.l = strX0;
            this.d[this.b - 1] = str;
        }
        return iR0;
    }

    @Override // defpackage.td4
    public final void Z() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 == 14) {
            long jW = this.g.W(o);
            bu0 bu0Var = this.h;
            if (jW == -1) {
                jW = bu0Var.c;
            }
            bu0Var.skip(jW);
        } else if (iQ0 == 13) {
            C0(n);
        } else if (iQ0 == 12) {
            C0(m);
        } else if (iQ0 != 15) {
            StringBuilder sb = new StringBuilder("Expected a name but was ");
            sb.append(U());
            u4.f(getPath(), sb);
            return;
        }
        this.i = 0;
        this.d[this.b - 1] = "null";
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws EOFException {
        this.i = 0;
        this.c[0] = 8;
        this.b = 1;
        this.h.p();
        this.g.close();
    }

    @Override // defpackage.td4
    public final void e0() throws xc4, EOFException {
        int i = 0;
        do {
            int iQ0 = this.i;
            if (iQ0 == 0) {
                iQ0 = q0();
            }
            if (iQ0 == 3) {
                V(1);
            } else {
                if (iQ0 == 1) {
                    V(3);
                } else if (iQ0 == 4) {
                    i--;
                    if (i < 0) {
                        StringBuilder sb = new StringBuilder("Expected a value but was ");
                        sb.append(U());
                        u4.f(getPath(), sb);
                        return;
                    }
                    this.b--;
                } else if (iQ0 == 2) {
                    i--;
                    if (i < 0) {
                        StringBuilder sb2 = new StringBuilder("Expected a value but was ");
                        sb2.append(U());
                        u4.f(getPath(), sb2);
                        return;
                    }
                    this.b--;
                } else {
                    bu0 bu0Var = this.h;
                    if (iQ0 == 14 || iQ0 == 10) {
                        long jW = this.g.W(o);
                        if (jW == -1) {
                            jW = bu0Var.c;
                        }
                        bu0Var.skip(jW);
                    } else if (iQ0 == 9 || iQ0 == 13) {
                        C0(n);
                    } else if (iQ0 == 8 || iQ0 == 12) {
                        C0(m);
                    } else if (iQ0 == 17) {
                        bu0Var.skip(this.k);
                    } else if (iQ0 == 18) {
                        StringBuilder sb3 = new StringBuilder("Expected a value but was ");
                        sb3.append(U());
                        u4.f(getPath(), sb3);
                        return;
                    }
                }
                this.i = 0;
            }
            i++;
            this.i = 0;
        } while (i != 0);
        int[] iArr = this.e;
        int i2 = this.b - 1;
        iArr[i2] = iArr[i2] + 1;
        this.d[i2] = "null";
    }

    @Override // defpackage.td4
    public final void m() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 == 3) {
            V(1);
            this.e[this.b - 1] = 0;
            this.i = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_ARRAY but was ");
            sb.append(U());
            u4.f(getPath(), sb);
        }
    }

    @Override // defpackage.td4
    public final void n() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 == 1) {
            V(3);
            this.i = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_OBJECT but was ");
            sb.append(U());
            u4.f(getPath(), sb);
        }
    }

    public final void n0() throws xc4 {
        k0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // defpackage.td4
    public final void o() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 != 4) {
            StringBuilder sb = new StringBuilder("Expected END_ARRAY but was ");
            sb.append(U());
            u4.f(getPath(), sb);
        } else {
            int i = this.b;
            this.b = i - 1;
            int[] iArr = this.e;
            int i2 = i - 2;
            iArr[i2] = iArr[i2] + 1;
            this.i = 0;
        }
    }

    @Override // defpackage.td4
    public final void p() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 != 2) {
            StringBuilder sb = new StringBuilder("Expected END_OBJECT but was ");
            sb.append(U());
            u4.f(getPath(), sb);
            return;
        }
        int i = this.b;
        int i2 = i - 1;
        this.b = i2;
        this.d[i2] = null;
        int[] iArr = this.e;
        int i3 = i - 2;
        iArr[i3] = iArr[i3] + 1;
        this.i = 0;
    }

    /* JADX WARN: Code duplicated, block: B:148:0x01c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:149:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:162:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:164:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:167:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:172:0x01fa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:173:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:175:0x0207  */
    /* JADX WARN: Code duplicated, block: B:177:0x020d  */
    /* JADX WARN: Code duplicated, block: B:230:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x01a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x011f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:88:0x0120  */
    /* JADX WARN: Code duplicated, block: B:92:0x0132  */
    /* JADX WARN: Code duplicated, block: B:94:0x013b  */
    public final int q0() throws xc4, EOFException {
        int i;
        String str;
        String str2;
        long j;
        char cQ;
        int i2;
        int i3;
        int i4;
        int i5;
        byte bQ;
        int i6;
        int[] iArr = this.c;
        int i7 = this.b - 1;
        int i8 = iArr[i7];
        int i9 = 0;
        bu0 bu0Var = this.h;
        if (i8 == 1) {
            iArr[i7] = 2;
        } else if (i8 == 2) {
            int iY0 = y0(true);
            bu0Var.readByte();
            if (iY0 != 44) {
                if (iY0 == 59) {
                    n0();
                    throw null;
                }
                if (iY0 == 93) {
                    this.i = 4;
                    return 4;
                }
                k0("Unterminated array");
                throw null;
            }
        } else {
            if (i8 == 3 || i8 == 5) {
                iArr[i7] = 4;
                if (i8 == 5) {
                    int iY1 = y0(true);
                    bu0Var.readByte();
                    if (iY1 != 44) {
                        if (iY1 == 59) {
                            n0();
                            throw null;
                        }
                        if (iY1 == 125) {
                            this.i = 2;
                            return 2;
                        }
                        k0("Unterminated object");
                        throw null;
                    }
                }
                int iY2 = y0(true);
                if (iY2 == 34) {
                    bu0Var.readByte();
                    this.i = 13;
                    return 13;
                }
                if (iY2 == 39) {
                    bu0Var.readByte();
                    n0();
                    throw null;
                }
                if (iY2 != 125) {
                    n0();
                    throw null;
                }
                if (i8 == 5) {
                    k0("Expected name");
                    throw null;
                }
                bu0Var.readByte();
                this.i = 2;
                return 2;
            }
            if (i8 == 4) {
                iArr[i7] = 5;
                int iY3 = y0(true);
                bu0Var.readByte();
                if (iY3 != 58) {
                    if (iY3 != 61) {
                        k0("Expected ':'");
                        throw null;
                    }
                    n0();
                    throw null;
                }
            } else if (i8 == 6) {
                iArr[i7] = 7;
            } else {
                if (i8 == 7) {
                    if (y0(false) == -1) {
                        this.i = 18;
                        return 18;
                    }
                    n0();
                    throw null;
                }
                if (i8 == 8) {
                    ah.f("JsonReader is closed");
                    return 0;
                }
            }
        }
        int iY4 = y0(true);
        if (iY4 == 34) {
            bu0Var.readByte();
            this.i = 9;
            return 9;
        }
        if (iY4 == 39) {
            n0();
            throw null;
        }
        if (iY4 != 44 && iY4 != 59) {
            if (iY4 == 91) {
                bu0Var.readByte();
                this.i = 3;
                return 3;
            }
            if (iY4 != 93) {
                if (iY4 == 123) {
                    bu0Var.readByte();
                    this.i = 1;
                    return 1;
                }
                byte bQ2 = bu0Var.Q(0L);
                iy6 iy6Var = this.g;
                if (bQ2 == 116 || bQ2 == 84) {
                    i = 5;
                    str2 = TJAdUnitConstants.String.TRUE;
                    str = "TRUE";
                } else {
                    if (bQ2 != 102 && bQ2 != 70) {
                        if (bQ2 == 110 || bQ2 == 78) {
                            i = 7;
                            str2 = "null";
                            str = "NULL";
                        } else {
                            j = 0;
                            i = 0;
                            i9 = 0;
                        }
                        if (i != 0) {
                            return i;
                        }
                        int i10 = 1;
                        i2 = i9;
                        i3 = i2;
                        int i11 = i3;
                        long j2 = j;
                        while (true) {
                            i4 = i3 + 1;
                            if (iy6Var.request(i4)) {
                                bQ = bu0Var.Q(i3);
                                if (bQ != 43) {
                                    if (bQ != 69 || bQ == 101) {
                                        i6 = 6;
                                        if (i2 != 2 || i2 == 4) {
                                            i2 = 5;
                                            i3 = i4;
                                        } else {
                                            i5 = i9;
                                        }
                                    } else if (bQ == 45) {
                                        i6 = 6;
                                        if (i2 == 0) {
                                            i2 = 1;
                                            i11 = 1;
                                        } else {
                                            if (i2 != 5) {
                                                i5 = i9;
                                            }
                                            i2 = i6;
                                        }
                                        i3 = i4;
                                    } else if (bQ != 46) {
                                        if (bQ >= 48 && bQ <= 57) {
                                            if (i2 == 1 || i2 == 0) {
                                                i6 = 6;
                                                j2 = -(bQ - 48);
                                                i2 = 2;
                                            } else {
                                                if (i2 == 2) {
                                                    if (j2 != j) {
                                                        long j3 = (10 * j2) - ((long) (bQ - 48));
                                                        i10 &= (j2 > -922337203685477580L || (j2 == -922337203685477580L && j3 < j2)) ? 1 : i9;
                                                        j2 = j3;
                                                    }
                                                } else if (i2 == 3) {
                                                    i2 = 4;
                                                } else {
                                                    i6 = 6;
                                                    if (i2 == 5 || i2 == 6) {
                                                        i2 = 7;
                                                    }
                                                }
                                                i6 = 6;
                                                i3 = i4;
                                            }
                                            i3 = i4;
                                        } else if (!u0(bQ)) {
                                        }
                                        i5 = i9;
                                    } else {
                                        i6 = 6;
                                        if (i2 == 2) {
                                            i2 = 3;
                                            i3 = i4;
                                        } else {
                                            i5 = i9;
                                        }
                                    }
                                    if (i5 != 0) {
                                        return i5;
                                    }
                                    if (u0(bu0Var.Q(j))) {
                                        n0();
                                        throw null;
                                    }
                                    k0("Expected value");
                                    throw null;
                                }
                                i6 = 6;
                                if (i2 != 5) {
                                    i5 = i9;
                                    if (i5 != 0) {
                                        return i5;
                                    }
                                    if (u0(bu0Var.Q(j))) {
                                        k0("Expected value");
                                        throw null;
                                    }
                                    n0();
                                    throw null;
                                }
                                i2 = i6;
                                i3 = i4;
                            }
                            if (i2 != 2 && i10 != 0 && ((j2 != Long.MIN_VALUE || i11 != 0) && (j2 != j || i11 == 0))) {
                                if (i11 == 0) {
                                    j2 = -j2;
                                }
                                this.j = j2;
                                bu0Var.skip(i3);
                                i5 = 16;
                                this.i = 16;
                            } else if (i2 != 2 || i2 == 4 || i2 == 7) {
                                this.k = i3;
                                i5 = 17;
                                this.i = 17;
                            } else {
                                i5 = i9;
                            }
                            if (i5 != 0) {
                                return i5;
                            }
                            if (u0(bu0Var.Q(j))) {
                                k0("Expected value");
                                throw null;
                            }
                            n0();
                            throw null;
                        }
                    }
                    i = 6;
                    str2 = TJAdUnitConstants.String.FALSE;
                    str = "FALSE";
                }
                int length = str2.length();
                j = 0;
                int i12 = 1;
                while (true) {
                    if (i12 >= length) {
                        if (!iy6Var.request(length + 1) || !u0(bu0Var.Q(length))) {
                            bu0Var.skip(length);
                            this.i = i;
                            break;
                        }
                    } else {
                        int i13 = i12 + 1;
                        if (iy6Var.request(i13) && ((cQ = bu0Var.Q(i12)) == str2.charAt(i12) || cQ == str.charAt(i12))) {
                            i12 = i13;
                        }
                    }
                    i = i9;
                    break;
                }
                if (i != 0) {
                    return i;
                }
                int i14 = 1;
                i2 = i9;
                i3 = i2;
                int i15 = i3;
                long j4 = j;
                while (true) {
                    i4 = i3 + 1;
                    if (iy6Var.request(i4)) {
                        bQ = bu0Var.Q(i3);
                        if (bQ != 43) {
                            if (bQ != 69) {
                                i6 = 6;
                                if (i2 != 2) {
                                }
                                i2 = 5;
                                i3 = i4;
                            } else {
                                i6 = 6;
                                if (i2 != 2) {
                                }
                                i2 = 5;
                                i3 = i4;
                            }
                            if (i5 != 0) {
                                return i5;
                            }
                            if (u0(bu0Var.Q(j))) {
                                k0("Expected value");
                                throw null;
                            }
                            n0();
                            throw null;
                        }
                        i6 = 6;
                        if (i2 != 5) {
                            i5 = i9;
                            if (i5 != 0) {
                                return i5;
                            }
                            if (u0(bu0Var.Q(j))) {
                                k0("Expected value");
                                throw null;
                            }
                            n0();
                            throw null;
                        }
                        i2 = i6;
                        i3 = i4;
                    }
                    if (i2 != 2) {
                        if (i2 != 2) {
                        }
                        this.k = i3;
                        i5 = 17;
                        this.i = 17;
                    } else {
                        if (i2 != 2) {
                        }
                        this.k = i3;
                        i5 = 17;
                        this.i = 17;
                    }
                    if (i5 != 0) {
                        return i5;
                    }
                    if (u0(bu0Var.Q(j))) {
                        k0("Expected value");
                        throw null;
                    }
                    n0();
                    throw null;
                }
            }
            if (i8 == 1) {
                bu0Var.readByte();
                this.i = 4;
                return 4;
            }
        }
        if (i8 == 1 || i8 == 2) {
            n0();
            throw null;
        }
        k0("Unexpected value");
        throw null;
    }

    public final int r0(String str, td4.a aVar) {
        int length = aVar.a.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(aVar.a[i])) {
                this.i = 0;
                this.d[this.b - 1] = str;
                return i;
            }
        }
        return -1;
    }

    public final String toString() {
        return "JsonReader(" + this.g + ")";
    }

    public final boolean u0(int i) throws xc4 {
        if (i == 9 || i == 10 || i == 12 || i == 13 || i == 32) {
            return false;
        }
        if (i != 35) {
            if (i == 44) {
                return false;
            }
            if (i != 47 && i != 61) {
                if (i == 123 || i == 125 || i == 58) {
                    return false;
                }
                if (i != 59) {
                    switch (i) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        n0();
        throw null;
    }

    @Override // defpackage.td4
    public final boolean v() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        return (iQ0 == 2 || iQ0 == 4 || iQ0 == 18) ? false : true;
    }

    public final String x0() throws xc4, EOFException {
        String strZ0;
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 == 14) {
            strZ0 = A0();
        } else if (iQ0 == 13) {
            strZ0 = z0(n);
        } else if (iQ0 == 12) {
            strZ0 = z0(m);
        } else {
            if (iQ0 != 15) {
                StringBuilder sb = new StringBuilder("Expected a name but was ");
                sb.append(U());
                u4.f(getPath(), sb);
                return null;
            }
            strZ0 = this.l;
        }
        this.i = 0;
        this.d[this.b - 1] = strZ0;
        return strZ0;
    }

    @Override // defpackage.td4
    public final boolean y() throws xc4, EOFException {
        int iQ0 = this.i;
        if (iQ0 == 0) {
            iQ0 = q0();
        }
        if (iQ0 == 5) {
            this.i = 0;
            int[] iArr = this.e;
            int i = this.b - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iQ0 != 6) {
            StringBuilder sb = new StringBuilder("Expected a boolean but was ");
            sb.append(U());
            u4.f(getPath(), sb);
            return false;
        }
        this.i = 0;
        int[] iArr2 = this.e;
        int i2 = this.b - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return false;
    }

    public final int y0(boolean z) throws xc4, EOFException {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            iy6 iy6Var = this.g;
            if (!iy6Var.request(i2)) {
                if (z) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j = i;
            bu0 bu0Var = this.h;
            byte bQ = bu0Var.Q(j);
            if (bQ != 10 && bQ != 32 && bQ != 13 && bQ != 9) {
                bu0Var.skip(j);
                if (bQ == 47) {
                    if (iy6Var.request(2L)) {
                        n0();
                        throw null;
                    }
                } else if (bQ == 35) {
                    n0();
                    throw null;
                }
                return bQ;
            }
            i = i2;
        }
    }

    public final String z0(gx0 gx0Var) throws xc4, EOFException {
        StringBuilder sb = null;
        while (true) {
            long jW = this.g.W(gx0Var);
            if (jW == -1) {
                k0("Unterminated string");
                throw null;
            }
            bu0 bu0Var = this.h;
            if (bu0Var.Q(jW) != 92) {
                if (sb == null) {
                    String strN0 = bu0Var.n0(jW, ha1.b);
                    bu0Var.readByte();
                    return strN0;
                }
                sb.append(bu0Var.n0(jW, ha1.b));
                bu0Var.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(bu0Var.n0(jW, ha1.b));
            bu0Var.readByte();
            sb.append(B0());
        }
    }
}
