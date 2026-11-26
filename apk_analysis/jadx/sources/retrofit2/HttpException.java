package retrofit2;

import defpackage.a57;
import defpackage.z47;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class HttpException extends RuntimeException {
    public HttpException(a57<?> a57Var) {
        Objects.requireNonNull(a57Var, "response == null");
        StringBuilder sb = new StringBuilder("HTTP ");
        z47 z47Var = a57Var.a;
        sb.append(z47Var.e);
        sb.append(" ");
        sb.append(z47Var.d);
        super(sb.toString());
    }
}
