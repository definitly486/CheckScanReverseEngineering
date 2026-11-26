package okhttp3.internal.connection;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class RouteException extends RuntimeException {
    public final IOException b;
    public IOException c;

    public RouteException(IOException iOException) {
        super(iOException);
        this.b = iOException;
        this.c = iOException;
    }
}
