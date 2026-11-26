package androidx.compose.runtime.tooling;

import defpackage.h8;
import defpackage.n7;
import defpackage.qa8;
import defpackage.ta8;

/* JADX INFO: loaded from: classes2.dex */
final class SourceInfoParserState {
    private final String data;
    private int i;

    public SourceInfoParserState(String str) {
        this.data = str;
    }

    public static /* synthetic */ void advance$default(SourceInfoParserState sourceInfoParserState, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 1;
        }
        sourceInfoParserState.advance(i);
    }

    public final void advance(int i) {
        this.i += i;
    }

    public final boolean atEnd() {
        return this.i >= this.data.length();
    }

    public final char current() {
        return this.data.charAt(this.i);
    }

    public final void expect(char c) throws ParseException {
        if (matches(c)) {
            return;
        }
        throwParseError("expected " + c);
        h8.d();
    }

    public final String getData() {
        return this.data;
    }

    public final int getI() {
        return this.i;
    }

    public final boolean matches(char c) {
        return this.i < this.data.length() && this.data.charAt(this.i) == c;
    }

    public final void setI(int i) {
        this.i = i;
    }

    public final void skipUntil(String str) {
        while (this.i < this.data.length() && !ta8.E(str, this.data.charAt(this.i))) {
            this.i++;
        }
    }

    public final int takeIntUntil(String str) throws ParseException {
        Integer numP = qa8.p(takeUntil(str));
        if (numP != null) {
            return numP.intValue();
        }
        throwParseError("expected int");
        h8.d();
        return 0;
    }

    public final String takeUntil(String str) {
        int i = this.i;
        skipUntil(str);
        int i2 = this.i;
        return i2 > i ? this.data.substring(i, i2) : "";
    }

    public final String takeUntilEnd() {
        String str = this.data;
        return str.substring(this.i, str.length());
    }

    public final Void throwParseError(String str) throws ParseException {
        int iMin = Math.min(this.i, this.data.length());
        StringBuilder sbD = n7.d("Error while parsing source information: ", str, " at ");
        sbD.append(this.data.substring(0, iMin));
        sbD.append('|');
        sbD.append(this.data.substring(iMin));
        throw new ParseException(sbD.toString());
    }
}
