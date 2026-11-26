package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.extractor.SniffFailure;
import com.google.common.collect.w;
import defpackage.ti0;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class UnrecognizedInputFormatException extends ParserException {
    public final com.google.common.collect.j<SniffFailure> sniffFailures;
    public final Uri uri;

    public UnrecognizedInputFormatException(String str, Uri uri, List<? extends SniffFailure> list) {
        super(str, null, false, 1);
        this.uri = uri;
        this.sniffFailures = com.google.common.collect.j.o(list);
    }

    @Override // androidx.media3.common.ParserException, java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (this.sniffFailures.isEmpty()) {
            return message;
        }
        StringBuilder sbC = ti0.c(message, "\nsniff failures: ");
        sbC.append(this.sniffFailures);
        return sbC.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public UnrecognizedInputFormatException(String str, Uri uri) {
        this(str, uri, w.f);
        com.google.common.collect.j.b bVar = com.google.common.collect.j.c;
    }
}
