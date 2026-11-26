package defpackage;

import java.time.DateTimeException;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
public final class ua9 {
    public static final fh8 a = nm4.b(c.f);
    public static final fh8 b = nm4.b(b.f);
    public static final fh8 c = nm4.b(a.f);

    public static final class a extends gh4 implements ll3<DateTimeFormatter> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final DateTimeFormatter invoke() {
            return new DateTimeFormatterBuilder().parseCaseInsensitive().appendOffset("+HHMM", "+0000").toFormatter();
        }
    }

    public static final class b extends gh4 implements ll3<DateTimeFormatter> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final DateTimeFormatter invoke() {
            return new DateTimeFormatterBuilder().parseCaseInsensitive().appendOffset("+HHmmss", "Z").toFormatter();
        }
    }

    public static final class c extends gh4 implements ll3<DateTimeFormatter> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final DateTimeFormatter invoke() {
            return new DateTimeFormatterBuilder().parseCaseInsensitive().appendOffsetId().toFormatter();
        }
    }

    public static final da9 a(String str, DateTimeFormatter dateTimeFormatter) {
        try {
            return new da9((ZoneOffset) dateTimeFormatter.parse(str, new ta9()));
        } catch (DateTimeException e) {
            throw new DateTimeFormatException(e);
        }
    }
}
