package kotlinx.serialization.json;

import defpackage.ta8;

/* JADX INFO: loaded from: classes5.dex */
public final class JsonEncodingException extends JsonException {
    public JsonEncodingException(String str, String str2) {
        super(str.concat((str2 == null || ta8.M(str2)) ? "" : "\n".concat(str2)));
    }
}
