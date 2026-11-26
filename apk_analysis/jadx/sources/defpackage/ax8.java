package defpackage;

import com.google.gson.JsonParseException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public enum ax8 implements bx8 {
    DOUBLE { // from class: ax8.a
        @Override // defpackage.bx8
        public final Number a(JsonReader jsonReader) {
            return Double.valueOf(jsonReader.nextDouble());
        }
    },
    LAZILY_PARSED_NUMBER { // from class: ax8.b
        @Override // defpackage.bx8
        public final Number a(JsonReader jsonReader) {
            return new bl4(jsonReader.nextString());
        }
    },
    LONG_OR_DOUBLE { // from class: ax8.c
        public static Double d(JsonReader jsonReader, String str) throws MalformedJsonException {
            try {
                Double dValueOf = Double.valueOf(str);
                if (dValueOf.isInfinite() || dValueOf.isNaN()) {
                    if (!jsonReader.isLenient()) {
                        throw new MalformedJsonException("JSON forbids NaN and infinities: " + dValueOf + "; at path " + jsonReader.getPreviousPath());
                    }
                }
                return dValueOf;
            } catch (NumberFormatException e) {
                StringBuilder sbD = n7.d("Cannot parse ", str, "; at path ");
                sbD.append(jsonReader.getPreviousPath());
                throw new JsonParseException(sbD.toString(), e);
            }
        }

        @Override // defpackage.bx8
        public final Number a(JsonReader jsonReader) throws IOException {
            String strNextString = jsonReader.nextString();
            if (strNextString.indexOf(46) >= 0) {
                return d(jsonReader, strNextString);
            }
            try {
                return Long.valueOf(Long.parseLong(strNextString));
            } catch (NumberFormatException unused) {
                return d(jsonReader, strNextString);
            }
        }
    },
    BIG_DECIMAL { // from class: ax8.d
        @Override // defpackage.bx8
        public final Number a(JsonReader jsonReader) throws IOException {
            String strNextString = jsonReader.nextString();
            try {
                return s39.c(strNextString);
            } catch (NumberFormatException e) {
                StringBuilder sbD = n7.d("Cannot parse ", strNextString, "; at path ");
                sbD.append(jsonReader.getPreviousPath());
                throw new JsonParseException(sbD.toString(), e);
            }
        }
    };

    ax8() {
        throw null;
    }
}
