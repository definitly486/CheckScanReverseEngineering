package com.google.gson.internal.bind;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.n7;
import defpackage.t39;
import defpackage.x39;
import java.io.IOException;
import java.io.Serializable;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.MonthDay;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.Year;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaTimeTypeAdapters implements TypeAdapters.b {
    public static final TypeAdapter<Duration> a = new AnonymousClass1("seconds", "nanos");
    public static final TypeAdapter<Instant> b = new AnonymousClass2("seconds", "nanos");
    public static final TypeAdapter<LocalDate> c = new AnonymousClass3("year", "month", "day");
    public static final TypeAdapter<LocalTime> d = new AnonymousClass4("hour", "minute", "second", "nano");
    public static final TypeAdapter<MonthDay> e = new AnonymousClass6("month", "day");
    public static final TypeAdapter<Period> f = new AnonymousClass9("years", "months", "days");
    public static final TypeAdapter<Year> g = new AnonymousClass10("year");
    public static final TypeAdapter<YearMonth> h = new AnonymousClass11("year", "month");
    public static final TypeAdapter<ZoneId> i = new TypeAdapter<ZoneId>() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.12
        @Override // com.google.gson.TypeAdapter
        public final ZoneId b(JsonReader jsonReader) throws IOException {
            jsonReader.beginObject();
            String strNextString = null;
            Integer numValueOf = null;
            while (jsonReader.peek() != JsonToken.END_OBJECT) {
                String strNextName = jsonReader.nextName();
                strNextName.getClass();
                if (strNextName.equals("totalSeconds")) {
                    numValueOf = Integer.valueOf(jsonReader.nextInt());
                } else if (strNextName.equals(TtmlNode.ATTR_ID)) {
                    strNextString = jsonReader.nextString();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            if (strNextString != null) {
                return ZoneId.of(strNextString);
            }
            if (numValueOf != null) {
                return ZoneOffset.ofTotalSeconds(numValueOf.intValue());
            }
            throw new JsonSyntaxException("Missing id or totalSeconds field; at path " + jsonReader.getPreviousPath());
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, ZoneId zoneId) throws IOException {
            ZoneId zoneId2 = zoneId;
            if (zoneId2 instanceof ZoneOffset) {
                jsonWriter.beginObject();
                jsonWriter.name("totalSeconds");
                jsonWriter.value(((ZoneOffset) zoneId2).getTotalSeconds());
                jsonWriter.endObject();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name(TtmlNode.ATTR_ID);
            jsonWriter.value(zoneId2.getId());
            jsonWriter.endObject();
        }
    }.a();
    public static final t39 j = new t39() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.14
        @Override // defpackage.t39
        public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
            Class<? super T> cls = x39Var.a;
            if (!cls.getName().startsWith("java.time.")) {
                return null;
            }
            if (cls == Duration.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.a;
            }
            if (cls == Instant.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.b;
            }
            if (cls == LocalDate.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.c;
            }
            if (cls == LocalTime.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.d;
            }
            if (cls == LocalDateTime.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.a(gson);
            }
            if (cls == MonthDay.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.e;
            }
            if (cls == OffsetDateTime.class) {
                final TypeAdapter<LocalDateTime> typeAdapterA = JavaTimeTypeAdapters.a(gson);
                final TypeAdapter<T> typeAdapterG = gson.g(new x39<>(ZoneOffset.class));
                return (TypeAdapter<T>) new TypeAdapter<OffsetDateTime>() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.7
                    @Override // com.google.gson.TypeAdapter
                    public final OffsetDateTime b(JsonReader jsonReader) throws IOException {
                        jsonReader.beginObject();
                        LocalDateTime localDateTime = null;
                        ZoneOffset zoneOffset = null;
                        while (jsonReader.peek() != JsonToken.END_OBJECT) {
                            String strNextName = jsonReader.nextName();
                            strNextName.getClass();
                            if (strNextName.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
                                zoneOffset = (ZoneOffset) typeAdapterG.b(jsonReader);
                            } else if (strNextName.equals("dateTime")) {
                                localDateTime = (LocalDateTime) typeAdapterA.b(jsonReader);
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        JavaTimeTypeAdapters.b(localDateTime, "dateTime", jsonReader);
                        JavaTimeTypeAdapters.b(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET, jsonReader);
                        return OffsetDateTime.of(localDateTime, zoneOffset);
                    }

                    @Override // com.google.gson.TypeAdapter
                    public final void c(JsonWriter jsonWriter, OffsetDateTime offsetDateTime) throws IOException {
                        OffsetDateTime offsetDateTime2 = offsetDateTime;
                        jsonWriter.beginObject();
                        jsonWriter.name("dateTime");
                        typeAdapterA.c(jsonWriter, offsetDateTime2.toLocalDateTime());
                        jsonWriter.name(TypedValues.CycleType.S_WAVE_OFFSET);
                        typeAdapterG.c(jsonWriter, offsetDateTime2.getOffset());
                        jsonWriter.endObject();
                    }
                }.a();
            }
            if (cls == OffsetTime.class) {
                TypeAdapter<Duration> typeAdapter = JavaTimeTypeAdapters.a;
                gson.getClass();
                final TypeAdapter<T> typeAdapterG2 = gson.g(new x39<>(LocalTime.class));
                final TypeAdapter<T> typeAdapterG3 = gson.g(new x39<>(ZoneOffset.class));
                return (TypeAdapter<T>) new TypeAdapter<OffsetTime>() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.8
                    @Override // com.google.gson.TypeAdapter
                    public final OffsetTime b(JsonReader jsonReader) throws IOException {
                        jsonReader.beginObject();
                        LocalTime localTime = null;
                        ZoneOffset zoneOffset = null;
                        while (jsonReader.peek() != JsonToken.END_OBJECT) {
                            String strNextName = jsonReader.nextName();
                            strNextName.getClass();
                            if (strNextName.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
                                zoneOffset = (ZoneOffset) typeAdapterG3.b(jsonReader);
                            } else if (strNextName.equals("time")) {
                                localTime = (LocalTime) typeAdapterG2.b(jsonReader);
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        JavaTimeTypeAdapters.b(localTime, "time", jsonReader);
                        JavaTimeTypeAdapters.b(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET, jsonReader);
                        return OffsetTime.of(localTime, zoneOffset);
                    }

                    @Override // com.google.gson.TypeAdapter
                    public final void c(JsonWriter jsonWriter, OffsetTime offsetTime) throws IOException {
                        OffsetTime offsetTime2 = offsetTime;
                        jsonWriter.beginObject();
                        jsonWriter.name("time");
                        typeAdapterG2.c(jsonWriter, offsetTime2.toLocalTime());
                        jsonWriter.name(TypedValues.CycleType.S_WAVE_OFFSET);
                        typeAdapterG3.c(jsonWriter, offsetTime2.getOffset());
                        jsonWriter.endObject();
                    }
                }.a();
            }
            if (cls == Period.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.f;
            }
            if (cls == Year.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.g;
            }
            if (cls == YearMonth.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.h;
            }
            if (cls == ZoneId.class || cls == ZoneOffset.class) {
                return (TypeAdapter<T>) JavaTimeTypeAdapters.i;
            }
            if (cls != ZonedDateTime.class) {
                return null;
            }
            final TypeAdapter<LocalDateTime> typeAdapterA2 = JavaTimeTypeAdapters.a(gson);
            final TypeAdapter<T> typeAdapterG4 = gson.g(new x39<>(ZoneOffset.class));
            final TypeAdapter<T> typeAdapterG5 = gson.g(new x39<>(ZoneId.class));
            return (TypeAdapter<T>) new TypeAdapter<ZonedDateTime>() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.13
                @Override // com.google.gson.TypeAdapter
                public final ZonedDateTime b(JsonReader jsonReader) throws IOException {
                    jsonReader.beginObject();
                    LocalDateTime localDateTime = null;
                    ZoneOffset zoneOffset = null;
                    ZoneId zoneId = null;
                    while (jsonReader.peek() != JsonToken.END_OBJECT) {
                        String strNextName = jsonReader.nextName();
                        strNextName.getClass();
                        switch (strNextName) {
                            case "offset":
                                zoneOffset = (ZoneOffset) typeAdapterG4.b(jsonReader);
                                break;
                            case "zone":
                                zoneId = (ZoneId) typeAdapterG5.b(jsonReader);
                                break;
                            case "dateTime":
                                localDateTime = (LocalDateTime) typeAdapterA2.b(jsonReader);
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    JavaTimeTypeAdapters.b(localDateTime, "dateTime", jsonReader);
                    JavaTimeTypeAdapters.b(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET, jsonReader);
                    JavaTimeTypeAdapters.b(zoneId, "zone", jsonReader);
                    return ZonedDateTime.ofInstant(localDateTime, zoneOffset, zoneId);
                }

                @Override // com.google.gson.TypeAdapter
                public final void c(JsonWriter jsonWriter, ZonedDateTime zonedDateTime) throws IOException {
                    ZonedDateTime zonedDateTime2 = zonedDateTime;
                    if (zonedDateTime2 == null) {
                        jsonWriter.nullValue();
                        return;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name("dateTime");
                    typeAdapterA2.c(jsonWriter, zonedDateTime2.toLocalDateTime());
                    jsonWriter.name(TypedValues.CycleType.S_WAVE_OFFSET);
                    typeAdapterG4.c(jsonWriter, zonedDateTime2.getOffset());
                    jsonWriter.name("zone");
                    typeAdapterG5.c(jsonWriter, zonedDateTime2.getZone());
                    jsonWriter.endObject();
                }
            }.a();
        }
    };

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$1, reason: invalid class name */
    public class AnonymousClass1 extends TypeAdapters.IntegerFieldsTypeAdapter<Duration> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final Duration d(long[] jArr) {
            return Duration.ofSeconds(jArr[0], jArr[1]);
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(Duration duration) {
            Duration duration2 = duration;
            return new long[]{duration2.getSeconds(), duration2.getNano()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$10, reason: invalid class name */
    public class AnonymousClass10 extends TypeAdapters.IntegerFieldsTypeAdapter<Year> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final Year d(long[] jArr) {
            return Year.of(Math.toIntExact(jArr[0]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(Year year) {
            return new long[]{year.getValue()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$11, reason: invalid class name */
    public class AnonymousClass11 extends TypeAdapters.IntegerFieldsTypeAdapter<YearMonth> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final YearMonth d(long[] jArr) {
            return YearMonth.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(YearMonth yearMonth) {
            YearMonth yearMonth2 = yearMonth;
            return new long[]{yearMonth2.getYear(), yearMonth2.getMonthValue()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$2, reason: invalid class name */
    public class AnonymousClass2 extends TypeAdapters.IntegerFieldsTypeAdapter<Instant> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final Instant d(long[] jArr) {
            return Instant.ofEpochSecond(jArr[0], jArr[1]);
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(Instant instant) {
            Instant instant2 = instant;
            return new long[]{instant2.getEpochSecond(), instant2.getNano()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$3, reason: invalid class name */
    public class AnonymousClass3 extends TypeAdapters.IntegerFieldsTypeAdapter<LocalDate> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final LocalDate d(long[] jArr) {
            return LocalDate.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(LocalDate localDate) {
            LocalDate localDate2 = localDate;
            return new long[]{localDate2.getYear(), localDate2.getMonthValue(), localDate2.getDayOfMonth()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$4, reason: invalid class name */
    public class AnonymousClass4 extends TypeAdapters.IntegerFieldsTypeAdapter<LocalTime> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final LocalTime d(long[] jArr) {
            return LocalTime.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]), Math.toIntExact(jArr[3]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(LocalTime localTime) {
            LocalTime localTime2 = localTime;
            return new long[]{localTime2.getHour(), localTime2.getMinute(), localTime2.getSecond(), localTime2.getNano()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$6, reason: invalid class name */
    public class AnonymousClass6 extends TypeAdapters.IntegerFieldsTypeAdapter<MonthDay> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final MonthDay d(long[] jArr) {
            return MonthDay.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(MonthDay monthDay) {
            MonthDay monthDay2 = monthDay;
            return new long[]{monthDay2.getMonthValue(), monthDay2.getDayOfMonth()};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.JavaTimeTypeAdapters$9, reason: invalid class name */
    public class AnonymousClass9 extends TypeAdapters.IntegerFieldsTypeAdapter<Period> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final Period d(long[] jArr) {
            return Period.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(Period period) {
            Period period2 = period;
            return new long[]{period2.getYears(), period2.getMonths(), period2.getDays()};
        }
    }

    public static TypeAdapter<LocalDateTime> a(Gson gson) {
        gson.getClass();
        final TypeAdapter typeAdapterG = gson.g(new x39(LocalDate.class));
        final TypeAdapter typeAdapterG2 = gson.g(new x39(LocalTime.class));
        return new TypeAdapter<LocalDateTime>() { // from class: com.google.gson.internal.bind.JavaTimeTypeAdapters.5
            @Override // com.google.gson.TypeAdapter
            public final LocalDateTime b(JsonReader jsonReader) throws IOException {
                jsonReader.beginObject();
                LocalDate localDate = null;
                LocalTime localTime = null;
                while (jsonReader.peek() != JsonToken.END_OBJECT) {
                    String strNextName = jsonReader.nextName();
                    strNextName.getClass();
                    if (strNextName.equals("date")) {
                        localDate = (LocalDate) typeAdapterG.b(jsonReader);
                    } else if (strNextName.equals("time")) {
                        localTime = (LocalTime) typeAdapterG2.b(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                JavaTimeTypeAdapters.b(localDate, "date", jsonReader);
                JavaTimeTypeAdapters.b(localTime, "time", jsonReader);
                return LocalDateTime.of(localDate, localTime);
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, LocalDateTime localDateTime) throws IOException {
                LocalDateTime localDateTime2 = localDateTime;
                jsonWriter.beginObject();
                jsonWriter.name("date");
                typeAdapterG.c(jsonWriter, localDateTime2.toLocalDate());
                jsonWriter.name("time");
                typeAdapterG2.c(jsonWriter, localDateTime2.toLocalTime());
                jsonWriter.endObject();
            }
        }.a();
    }

    public static void b(Serializable serializable, String str, JsonReader jsonReader) {
        if (serializable != null) {
            return;
        }
        StringBuilder sbD = n7.d("Missing ", str, " field; at path ");
        sbD.append(jsonReader.getPreviousPath());
        throw new JsonSyntaxException(sbD.toString());
    }

    @Override // com.google.gson.internal.bind.TypeAdapters.b
    public final t39 get() {
        return j;
    }
}
