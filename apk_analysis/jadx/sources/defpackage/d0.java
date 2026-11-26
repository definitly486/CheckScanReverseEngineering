package defpackage;

import defpackage.m02;
import kotlinx.datetime.DateTimeFormatException;
import kotlinx.datetime.internal.format.parser.ParseException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d0<T, U extends m02<U>> implements hc2<T> {
    @Override // defpackage.hc2
    public final T a(CharSequence charSequence) {
        String str;
        try {
            a46<U> a46Var = b().c;
            a46Var.getClass();
            try {
                return d(u36.a(a46Var, charSequence, c()));
            } catch (IllegalArgumentException e) {
                String message = e.getMessage();
                if (message == null) {
                    str = "The value parsed from '" + ((Object) charSequence) + "' is invalid";
                } else {
                    str = message + " (when parsing '" + ((Object) charSequence) + "')";
                }
                throw new DateTimeFormatException(str, e);
            }
        } catch (ParseException e2) {
            throw new DateTimeFormatException("Failed to parse value from '" + ((Object) charSequence) + '\'', e2);
        }
    }

    public abstract yx0<U> b();

    public abstract U c();

    public abstract T d(U u);
}
