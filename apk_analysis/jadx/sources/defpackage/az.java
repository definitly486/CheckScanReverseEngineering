package defpackage;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.BufferedReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class az {
    public final long a;

    public az(long j) {
        this.a = j;
    }

    public static az a(BufferedReader bufferedReader) throws IOException {
        JsonReader jsonReader = new JsonReader(bufferedReader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        az azVar = new az(Long.parseLong(jsonReader.nextString()));
                        jsonReader.close();
                        return azVar;
                    }
                    az azVar2 = new az(jsonReader.nextLong());
                    jsonReader.close();
                    return azVar2;
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th) {
            jsonReader.close();
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof az) && this.a == ((az) obj).a;
    }

    public final int hashCode() {
        long j = this.a;
        return ((int) ((j >>> 32) ^ j)) ^ 1000003;
    }

    public final String toString() {
        return k2.b(this.a, "}", new StringBuilder("LogResponse{nextRequestWaitMillis="));
    }
}
