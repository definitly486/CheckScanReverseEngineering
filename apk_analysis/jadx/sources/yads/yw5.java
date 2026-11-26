package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.qa8;
import defpackage.ra8;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class yw5 {
    public final Set a;

    public yw5(Set set) {
        this.a = set;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0068  */
    public final q86 a(String str) {
        Long lValueOf;
        Integer numValueOf;
        Float fN;
        if (this.a.contains(ww5.START) && TtmlNode.START.equals(str)) {
            return new q86(p86.MILLISECONDS, 0.0f);
        }
        if (this.a.contains(ww5.END) && TtmlNode.END.equals(str)) {
            return new q86(p86.PERCENTS, 100.0f);
        }
        if (this.a.contains(ww5.PERCENTAGE) && ra8.u(str, "%", false)) {
            try {
                fN = qa8.n(str.substring(0, str.length() - 1));
                if (fN != null) {
                    float fFloatValue = fN.floatValue();
                    if (0.0f > fFloatValue || fFloatValue > 100.0f) {
                        fN = null;
                    }
                } else {
                    fN = null;
                }
            } catch (Throwable unused) {
            }
            if (fN != null) {
                return new q86(p86.PERCENTS, fN.floatValue());
            }
            return null;
        }
        if (this.a.contains(ww5.POSITION) && ra8.C(str, "#", false)) {
            try {
                int i = Integer.parseInt(str.substring(1));
                numValueOf = i >= 1 ? Integer.valueOf(i) : null;
            } catch (Exception unused2) {
            }
            if (numValueOf != null) {
                return new q86(p86.POSITION, numValueOf.intValue());
            }
            return null;
        }
        if (!this.a.contains(ww5.TIME)) {
            return null;
        }
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("hh:mm:ss", Locale.US);
            lValueOf = Long.valueOf(simpleDateFormat.parse(str).getTime() - simpleDateFormat.parse("00:00:00").getTime());
        } catch (ParseException unused3) {
            lValueOf = null;
        }
        if (lValueOf != null) {
            return new q86(p86.MILLISECONDS, lValueOf.longValue());
        }
        return null;
    }
}
