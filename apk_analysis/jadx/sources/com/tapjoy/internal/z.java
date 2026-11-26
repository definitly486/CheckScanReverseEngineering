package com.tapjoy.internal;

import com.tapjoy.TJAdUnitConstants;
import defpackage.ah;
import defpackage.dd2;
import defpackage.ki0;
import defpackage.ti0;
import defpackage.xp;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class z extends x {
    public static final y n = new y();
    public final StringReader b;
    public final ArrayList h;
    public int i;
    public String j;
    public String k;
    public int l;
    public int m;
    public final t0 a = new t0();
    public final char[] c = new char[1024];
    public int d = 0;
    public int e = 0;
    public int f = 1;
    public int g = 1;

    public z(StringReader stringReader) {
        ArrayList arrayList = new ArrayList();
        this.h = arrayList;
        arrayList.add(a0.f);
        this.b = stringReader;
    }

    public final String a(char c) throws f0 {
        StringBuilder sb = null;
        do {
            int i = this.d;
            while (true) {
                int i2 = this.d;
                if (i2 < this.e) {
                    char[] cArr = this.c;
                    int i3 = i2 + 1;
                    this.d = i3;
                    char c2 = cArr[i2];
                    if (c2 == c) {
                        if (sb == null) {
                            return this.a.a(cArr, i, (i3 - i) - 1);
                        }
                        sb.append(cArr, i, (i3 - i) - 1);
                        return sb.toString();
                    }
                    if (c2 == '\\') {
                        if (sb == null) {
                            sb = new StringBuilder();
                        }
                        sb.append(this.c, i, (this.d - i) - 1);
                        if (this.d == this.e && !b(1)) {
                            a("Unterminated escape sequence");
                            throw null;
                        }
                        char[] cArr2 = this.c;
                        int i4 = this.d;
                        this.d = i4 + 1;
                        char c3 = cArr2[i4];
                        if (c3 == 'b') {
                            c3 = '\b';
                        } else if (c3 == 'f') {
                            c3 = '\f';
                        } else if (c3 == 'n') {
                            c3 = '\n';
                        } else if (c3 == 'r') {
                            c3 = '\r';
                        } else if (c3 == 't') {
                            c3 = '\t';
                        } else if (c3 == 'u') {
                            if (i4 + 5 > this.e && !b(4)) {
                                a("Unterminated escape sequence");
                                throw null;
                            }
                            String strA = this.a.a(this.c, this.d, 4);
                            this.d += 4;
                            c3 = (char) Integer.parseInt(strA, 16);
                        }
                        sb.append(c3);
                        i = this.d;
                    }
                }
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(this.c, i, this.d - i);
        } while (b(1));
        a("Unterminated string");
        throw null;
    }

    public final int b(boolean z) throws f0, EOFException {
        if (!z) {
            int iC = c();
            if (iC != 44 && iC != 59) {
                if (iC != 125) {
                    a("Unterminated object");
                    throw null;
                }
                ArrayList arrayList = this.h;
                this.i = 4;
                return 4;
            }
        } else {
            if (c() == 125) {
                ArrayList arrayList2 = this.h;
                this.i = 4;
                return 4;
            }
            this.d--;
        }
        int iC2 = c();
        if (iC2 != 34) {
            if (iC2 != 39) {
                a("Use JsonReader.setLenient(true) to accept malformed JSON");
                throw null;
            }
            a("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
        this.j = a((char) iC2);
        a0 a0Var = a0.d;
        ArrayList arrayList3 = this.h;
        arrayList3.set(arrayList3.size() - 1, a0Var);
        this.i = 5;
        return 5;
    }

    public final int c() throws f0, EOFException {
        while (true) {
            if (this.d >= this.e && !b(1)) {
                throw new EOFException("End of input");
            }
            char[] cArr = this.c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            char c = cArr[i];
            if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
                if (c == '#') {
                    a("Use JsonReader.setLenient(true) to accept malformed JSON");
                    throw null;
                }
                if (c != '/' || (i2 == this.e && !b(1))) {
                    return c;
                }
                a("Use JsonReader.setLenient(true) to accept malformed JSON");
                throw null;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.k = null;
        this.i = 0;
        this.h.clear();
        this.h.add(a0.h);
        this.b.close();
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0178  */
    /* JADX WARN: Code duplicated, block: B:119:0x018e  */
    /* JADX WARN: Code duplicated, block: B:120:0x0198  */
    /* JADX WARN: Code duplicated, block: B:123:0x019f  */
    /* JADX WARN: Code duplicated, block: B:124:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:126:0x01a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:133:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:135:0x01bf A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:138:0x01c8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:139:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:141:0x01d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:142:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:144:0x01da A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:151:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:155:0x01f3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:156:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:158:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:78:0x0101  */
    /* JADX WARN: Code duplicated, block: B:80:0x0109  */
    /* JADX WARN: Code duplicated, block: B:82:0x0113  */
    /* JADX WARN: Code duplicated, block: B:84:0x0117  */
    /* JADX WARN: Code duplicated, block: B:95:0x0139  */
    /* JADX WARN: Code duplicated, block: B:98:0x013e  */
    public final int d() throws Throwable {
        int i;
        String string;
        int i2;
        int i3;
        Throwable th;
        char[] cArr;
        int i4;
        char c;
        int i5;
        int i6;
        char c2;
        int i7;
        char c3;
        char[] cArr2;
        char c4;
        char c5;
        char c6;
        char c7;
        char c8;
        char c9;
        char c10;
        char c11;
        char c12;
        char[] cArr3;
        char c13;
        char c14;
        char c15;
        char c16;
        int iC = c();
        if (iC == 34) {
            this.k = a((char) iC);
            this.i = 6;
            return 6;
        }
        if (iC == 39) {
            a("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
        if (iC == 91) {
            this.h.add(a0.a);
            this.i = 1;
            return 1;
        }
        if (iC == 123) {
            this.h.add(a0.c);
            this.i = 3;
            return 3;
        }
        this.d--;
        this.l = -1;
        int i8 = 0;
        this.m = 0;
        StringBuilder sb = null;
        do {
            int i9 = 0;
            while (true) {
                int i10 = this.d + i9;
                int i11 = this.e;
                char[] cArr4 = this.c;
                i = 9;
                if (i10 < i11) {
                    char c17 = cArr4[i10];
                    if (c17 != '\t' && c17 != '\n' && c17 != '\f' && c17 != '\r' && c17 != ' ') {
                        if (c17 != '#') {
                            if (c17 != ',') {
                                if (c17 != '/' && c17 != '=') {
                                    if (c17 != '{' && c17 != '}' && c17 != ':') {
                                        if (c17 != ';') {
                                            switch (c17) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i9++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        a("Use JsonReader.setLenient(true) to accept malformed JSON");
                        throw null;
                    }
                    i8 = i9;
                } else if (i9 >= cArr4.length) {
                    if (sb == null) {
                        sb = new StringBuilder();
                    }
                    sb.append(this.c, this.d, i9);
                    this.m += i9;
                    this.d += i9;
                } else if (!b(i9 + 1)) {
                    this.c[this.e] = 0;
                    i8 = i9;
                }
                if (sb == null) {
                    this.l = this.d;
                    string = null;
                } else {
                    sb.append(this.c, this.d, i8);
                    string = sb.toString();
                }
                i2 = this.m + i8;
                this.m = i2;
                this.d += i8;
                this.k = string;
                if (i2 != 0) {
                    a("Expected literal value");
                    throw null;
                }
                i3 = this.l;
                if (i3 == -1) {
                    if (i2 == 4 || !(('n' == (c13 = (cArr3 = this.c)[i3]) || 'N' == c13) && (('u' == (c14 = cArr3[i3 + 1]) || 'U' == c14) && (('l' == (c15 = cArr3[i3 + 2]) || 'L' == c15) && ('l' == (c16 = cArr3[i3 + 3]) || 'L' == c16))))) {
                        i = 8;
                        if (i2 == 4) {
                            char[] cArr5 = this.c;
                            c9 = cArr5[i3];
                            th = null;
                            if (('t' != c9 || 'T' == c9) && (('r' == (c10 = cArr5[i3 + 1]) || 'R' == c10) && (('u' == (c11 = cArr5[i3 + 2]) || 'U' == c11) && ('e' == (c12 = cArr5[i3 + 3]) || 'E' == c12)))) {
                                this.k = TJAdUnitConstants.String.TRUE;
                            }
                        } else {
                            th = null;
                        }
                        if (i2 == 5 || !(('f' == (c4 = (cArr2 = this.c)[i3]) || 'F' == c4) && (('a' == (c5 = cArr2[i3 + 1]) || 'A' == c5) && (('l' == (c6 = cArr2[i3 + 2]) || 'L' == c6) && (('s' == (c7 = cArr2[i3 + 3]) || 'S' == c7) && ('e' == (c8 = cArr2[i3 + 4]) || 'E' == c8)))))) {
                            this.k = this.a.a(this.c, i3, i2);
                            cArr = this.c;
                            i4 = this.l;
                            int i12 = this.m;
                            c = cArr[i4];
                            if (c == '-') {
                                int i13 = i4 + 1;
                                i5 = i13;
                                c = cArr[i13];
                            } else {
                                i5 = i4;
                            }
                            if (c == '0') {
                                i6 = i5 + 1;
                                c2 = cArr[i6];
                            } else if (c < '1' && c <= '9') {
                                i6 = i5 + 1;
                                c2 = cArr[i6];
                                while (c2 >= '0' && c2 <= '9') {
                                    i6++;
                                    c2 = cArr[i6];
                                }
                            }
                            if (c2 == '.') {
                                i6++;
                                c2 = cArr[i6];
                                while (c2 >= '0' && c2 <= '9') {
                                    i6++;
                                    c2 = cArr[i6];
                                }
                            }
                            if (c2 != 'e' || c2 == 'E') {
                                i7 = i6 + 1;
                                c3 = cArr[i7];
                                if (c3 != '+' || c3 == '-') {
                                    i7 = i6 + 2;
                                    c3 = cArr[i7];
                                }
                                if (c3 < '0' && c3 <= '9') {
                                    int i14 = i7 + 1;
                                    char c18 = cArr[i14];
                                    i6 = i14;
                                    while (c18 >= '0' && c18 <= '9') {
                                        i6++;
                                        c18 = cArr[i6];
                                    }
                                    if (i6 == i4 + i12) {
                                        i = 7;
                                    }
                                }
                            } else if (i6 == i4 + i12) {
                                i = 7;
                            }
                        } else {
                            this.k = TJAdUnitConstants.String.FALSE;
                        }
                    } else {
                        this.k = "null";
                        th = null;
                    }
                    this.i = i;
                    if (i != 6) {
                        return i;
                    }
                    a("Use JsonReader.setLenient(true) to accept malformed JSON");
                    throw th;
                }
                th = null;
                i = 6;
                this.i = i;
                if (i != 6) {
                    return i;
                }
                a("Use JsonReader.setLenient(true) to accept malformed JSON");
                throw th;
            }
        } while (b(1));
        if (sb == null) {
            this.l = this.d;
            string = null;
        } else {
            sb.append(this.c, this.d, i8);
            string = sb.toString();
        }
        i2 = this.m + i8;
        this.m = i2;
        this.d += i8;
        this.k = string;
        if (i2 != 0) {
            a("Expected literal value");
            throw null;
        }
        i3 = this.l;
        if (i3 == -1) {
            if (i2 == 4) {
                i = 8;
                if (i2 == 4) {
                    char[] cArr6 = this.c;
                    c9 = cArr6[i3];
                    th = null;
                    if ('t' != c9) {
                        this.k = TJAdUnitConstants.String.TRUE;
                    } else {
                        this.k = TJAdUnitConstants.String.TRUE;
                    }
                } else {
                    th = null;
                }
                if (i2 == 5) {
                    this.k = this.a.a(this.c, i3, i2);
                    cArr = this.c;
                    i4 = this.l;
                    int i15 = this.m;
                    c = cArr[i4];
                    if (c == '-') {
                        int i16 = i4 + 1;
                        i5 = i16;
                        c = cArr[i16];
                    } else {
                        i5 = i4;
                    }
                    if (c == '0') {
                        i6 = i5 + 1;
                        c2 = cArr[i6];
                    } else if (c < '1') {
                    }
                    if (c2 == '.') {
                        i6++;
                        c2 = cArr[i6];
                        while (c2 >= '0') {
                            i6++;
                            c2 = cArr[i6];
                        }
                    }
                    if (c2 != 'e') {
                        i7 = i6 + 1;
                        c3 = cArr[i7];
                        if (c3 != '+') {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        } else {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        }
                        if (c3 < '0') {
                        }
                    } else {
                        i7 = i6 + 1;
                        c3 = cArr[i7];
                        if (c3 != '+') {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        } else {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        }
                        if (c3 < '0') {
                        }
                    }
                } else {
                    this.k = this.a.a(this.c, i3, i2);
                    cArr = this.c;
                    i4 = this.l;
                    int i17 = this.m;
                    c = cArr[i4];
                    if (c == '-') {
                        int i18 = i4 + 1;
                        i5 = i18;
                        c = cArr[i18];
                    } else {
                        i5 = i4;
                    }
                    if (c == '0') {
                        i6 = i5 + 1;
                        c2 = cArr[i6];
                    } else if (c < '1') {
                    }
                    if (c2 == '.') {
                        i6++;
                        c2 = cArr[i6];
                        while (c2 >= '0') {
                            i6++;
                            c2 = cArr[i6];
                        }
                    }
                    if (c2 != 'e') {
                        i7 = i6 + 1;
                        c3 = cArr[i7];
                        if (c3 != '+') {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        } else {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        }
                        if (c3 < '0') {
                        }
                    } else {
                        i7 = i6 + 1;
                        c3 = cArr[i7];
                        if (c3 != '+') {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        } else {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        }
                        if (c3 < '0') {
                        }
                    }
                }
            } else {
                i = 8;
                if (i2 == 4) {
                    char[] cArr7 = this.c;
                    c9 = cArr7[i3];
                    th = null;
                    if ('t' != c9) {
                        this.k = TJAdUnitConstants.String.TRUE;
                    } else {
                        this.k = TJAdUnitConstants.String.TRUE;
                    }
                } else {
                    th = null;
                }
                if (i2 == 5) {
                    this.k = this.a.a(this.c, i3, i2);
                    cArr = this.c;
                    i4 = this.l;
                    int i19 = this.m;
                    c = cArr[i4];
                    if (c == '-') {
                        int i110 = i4 + 1;
                        i5 = i110;
                        c = cArr[i110];
                    } else {
                        i5 = i4;
                    }
                    if (c == '0') {
                        i6 = i5 + 1;
                        c2 = cArr[i6];
                    } else if (c < '1') {
                    }
                    if (c2 == '.') {
                        i6++;
                        c2 = cArr[i6];
                        while (c2 >= '0') {
                            i6++;
                            c2 = cArr[i6];
                        }
                    }
                    if (c2 != 'e') {
                        i7 = i6 + 1;
                        c3 = cArr[i7];
                        if (c3 != '+') {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        } else {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        }
                        if (c3 < '0') {
                        }
                    } else {
                        i7 = i6 + 1;
                        c3 = cArr[i7];
                        if (c3 != '+') {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        } else {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        }
                        if (c3 < '0') {
                        }
                    }
                } else {
                    this.k = this.a.a(this.c, i3, i2);
                    cArr = this.c;
                    i4 = this.l;
                    int i111 = this.m;
                    c = cArr[i4];
                    if (c == '-') {
                        int i112 = i4 + 1;
                        i5 = i112;
                        c = cArr[i112];
                    } else {
                        i5 = i4;
                    }
                    if (c == '0') {
                        i6 = i5 + 1;
                        c2 = cArr[i6];
                    } else if (c < '1') {
                    }
                    if (c2 == '.') {
                        i6++;
                        c2 = cArr[i6];
                        while (c2 >= '0') {
                            i6++;
                            c2 = cArr[i6];
                        }
                    }
                    if (c2 != 'e') {
                        i7 = i6 + 1;
                        c3 = cArr[i7];
                        if (c3 != '+') {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        } else {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        }
                        if (c3 < '0') {
                        }
                    } else {
                        i7 = i6 + 1;
                        c3 = cArr[i7];
                        if (c3 != '+') {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        } else {
                            i7 = i6 + 2;
                            c3 = cArr[i7];
                        }
                        if (c3 < '0') {
                        }
                    }
                }
            }
            this.i = i;
            if (i != 6) {
                return i;
            }
            a("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw th;
        }
        th = null;
        i = 6;
        this.i = i;
        if (i != 6) {
            return i;
        }
        a("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw th;
    }

    public final int e() {
        int i = this.i;
        if (i != 0) {
            return i;
        }
        switch ((a0) dd2.b(1, this.h)) {
            case a:
                return a(true);
            case b:
                return a(false);
            case c:
                return b(true);
            case d:
                int iC = c();
                if (iC == 58) {
                    a0 a0Var = a0.e;
                    ArrayList arrayList = this.h;
                    arrayList.set(arrayList.size() - 1, a0Var);
                    return d();
                }
                if (iC != 61) {
                    a("Expected ':'");
                    throw null;
                }
                a("Use JsonReader.setLenient(true) to accept malformed JSON");
                throw null;
            case e:
                return b(false);
            case f:
                a0 a0Var2 = a0.g;
                ArrayList arrayList2 = this.h;
                arrayList2.set(arrayList2.size() - 1, a0Var2);
                int iD = d();
                int i2 = this.i;
                if (i2 == 1 || i2 == 3) {
                    return iD;
                }
                ki0.d("Expected JSON document to start with '[' or '{' but was ".concat(b0.a(i2)));
                return 0;
            case g:
                try {
                    d();
                    a("Expected EOF");
                    throw null;
                } catch (EOFException unused) {
                    this.i = 10;
                    return 10;
                }
            case h:
                ah.f("JsonReader is closed");
                return 0;
            default:
                xp.g();
                return 0;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("z near ");
        StringBuilder sb2 = new StringBuilder();
        int iMin = Math.min(this.d, 20);
        sb2.append(this.c, this.d - iMin, iMin);
        sb2.append(this.c, this.d, Math.min(this.e - this.d, 20));
        sb.append((Object) sb2);
        return sb.toString();
    }

    public final boolean b(int i) throws IOException {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        while (true) {
            i2 = this.d;
            if (i5 >= i2) {
                break;
            }
            if (this.c[i5] == '\n') {
                this.f++;
                this.g = 1;
            } else {
                this.g++;
            }
            i5++;
        }
        int i6 = this.e;
        if (i6 != i2) {
            int i7 = i6 - i2;
            this.e = i7;
            char[] cArr = this.c;
            System.arraycopy(cArr, i2, cArr, 0, i7);
        } else {
            this.e = 0;
        }
        this.d = 0;
        do {
            StringReader stringReader = this.b;
            char[] cArr2 = this.c;
            int i8 = this.e;
            int i9 = stringReader.read(cArr2, i8, cArr2.length - i8);
            if (i9 == -1) {
                return false;
            }
            i3 = this.e + i9;
            this.e = i3;
            if (this.f == 1 && (i4 = this.g) == 1 && i3 > 0 && this.c[0] == 65279) {
                this.d++;
                this.g = i4 - 1;
            }
        } while (i3 < i);
        return true;
    }

    public final int a(boolean z) throws f0, EOFException {
        if (z) {
            a0 a0Var = a0.b;
            ArrayList arrayList = this.h;
            arrayList.set(arrayList.size() - 1, a0Var);
        } else {
            int iC = c();
            if (iC != 44) {
                if (iC == 59) {
                    a("Use JsonReader.setLenient(true) to accept malformed JSON");
                    throw null;
                }
                if (iC == 93) {
                    ArrayList arrayList2 = this.h;
                    this.i = 2;
                    return 2;
                }
                a("Unterminated array");
                throw null;
            }
        }
        int iC2 = c();
        if (iC2 != 44 && iC2 != 59) {
            if (iC2 != 93) {
                this.d--;
                return d();
            }
            if (z) {
                ArrayList arrayList3 = this.h;
                this.i = 2;
                return 2;
            }
        }
        a("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    public final void a(int i) {
        e();
        if (this.i == i) {
            e();
            this.i = 0;
            this.k = null;
            this.j = null;
            return;
        }
        defpackage.n2.e("Expected ", b0.a(i), " but was ", b0.a(e()));
    }

    public final void a(String str) throws f0 {
        StringBuilder sbC = ti0.c(str, " at line ");
        int i = this.f;
        for (int i2 = 0; i2 < this.d; i2++) {
            if (this.c[i2] == '\n') {
                i++;
            }
        }
        sbC.append(i);
        sbC.append(" column ");
        int i3 = this.g;
        for (int i4 = 0; i4 < this.d; i4++) {
            i3 = this.c[i4] == '\n' ? 1 : i3 + 1;
        }
        sbC.append(i3);
        throw new f0(sbC.toString());
    }
}
