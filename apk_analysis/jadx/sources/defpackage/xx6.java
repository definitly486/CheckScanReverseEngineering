package defpackage;

import java.util.regex.Pattern;
import org.jsoup.helper.ValidationException;

/* JADX INFO: loaded from: classes5.dex */
public final class xx6 extends i17 {
    public static final Pattern d = Pattern.compile("");
    public final com.google.re2j.Pattern c;

    public xx6(com.google.re2j.Pattern pattern) {
        super(d);
        this.c = pattern;
    }

    public static xx6 b(String str) {
        try {
            return new xx6(com.google.re2j.Pattern.compile(str));
        } catch (OutOfMemoryError | StackOverflowError e) {
            throw new ValidationException("Pattern complexity error: " + e.getMessage());
        } catch (RuntimeException e2) {
            throw new ValidationException("Pattern syntax error: " + e2.getMessage());
        }
    }

    @Override // defpackage.i17
    public final String toString() {
        return this.c.toString();
    }
}
