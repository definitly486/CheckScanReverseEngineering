package defpackage;

import java.time.format.DateTimeFormatter;
import java.time.format.ResolverStyle;

/* JADX INFO: loaded from: classes5.dex */
public final class qb2 {
    public static final DateTimeFormatter a;
    public static final DateTimeFormatter b;

    static {
        DateTimeFormatter dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        ResolverStyle resolverStyle = ResolverStyle.STRICT;
        a = dateTimeFormatterOfPattern.withResolverStyle(resolverStyle);
        b = DateTimeFormatter.ofPattern("yyyy-MM-dd").withResolverStyle(resolverStyle);
    }
}
