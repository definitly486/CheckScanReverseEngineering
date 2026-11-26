package kotlinx.serialization.json;

import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JsonException extends SerializationException {
    public final String b;

    public JsonException(String str) {
        super(str);
        this.b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.b;
    }
}
