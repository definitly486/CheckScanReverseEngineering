.class public final Landroidx/compose/material3/DatePicker_jvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final DatePickerState-sHin3Bw(Ljava/util/Locale;Ljava/time/LocalDate;Ljava/time/YearMonth;Ly74;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DatePickerState;
    .locals 2

    invoke-static {p1}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroidx/compose/material3/DatePicker_jvmKt;->getYearMonthMillisUtc(Ljava/time/YearMonth;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/DatePickerKt;->DatePickerState-sHin3Bw(Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/Long;Ly74;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DatePickerState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic DatePickerState-sHin3Bw$default(Ljava/util/Locale;Ljava/time/LocalDate;Ljava/time/YearMonth;Ly74;ILandroidx/compose/material3/SelectableDates;ILjava/lang/Object;)Landroidx/compose/material3/DatePickerState;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/DatePickerDefaults;->getYearRange()Ly74;

    move-result-object p3

    :cond_2
    move-object v3, p3

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {p2}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result p4

    :cond_3
    move v4, p4

    and-int/lit8 p2, p6, 0x20

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/DatePickerDefaults;->getAllDates()Landroidx/compose/material3/SelectableDates;

    move-result-object p5

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DatePicker_jvmKt;->DatePickerState-sHin3Bw(Ljava/util/Locale;Ljava/time/LocalDate;Ljava/time/YearMonth;Ly74;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DatePickerState;

    move-result-object p0

    return-object p0
.end method

.method public static final DateRangePickerState-HVP43zI(Ljava/util/Locale;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/YearMonth;Ly74;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DateRangePickerState;
    .locals 2

    invoke-static {p1}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroidx/compose/material3/DatePicker_jvmKt;->getYearMonthMillisUtc(Ljava/time/YearMonth;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static/range {p0 .. p6}, Landroidx/compose/material3/DateRangePickerKt;->DateRangePickerState-HVP43zI(Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ly74;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DateRangePickerState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic DateRangePickerState-HVP43zI$default(Ljava/util/Locale;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/YearMonth;Ly74;ILandroidx/compose/material3/SelectableDates;ILjava/lang/Object;)Landroidx/compose/material3/DateRangePickerState;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    sget-object p3, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {p3}, Landroidx/compose/material3/DatePickerDefaults;->getYearRange()Ly74;

    move-result-object p4

    :cond_2
    move-object v4, p4

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    sget-object p3, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {p3}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result p5

    :cond_3
    move v5, p5

    and-int/lit8 p3, p7, 0x40

    if-eqz p3, :cond_4

    sget-object p3, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {p3}, Landroidx/compose/material3/DatePickerDefaults;->getAllDates()Landroidx/compose/material3/SelectableDates;

    move-result-object p6

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DatePicker_jvmKt;->DateRangePickerState-HVP43zI(Ljava/util/Locale;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/YearMonth;Ly74;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DateRangePickerState;

    move-result-object p0

    return-object p0
.end method

.method public static final formatDatePickerNavigateToYearString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatHeadlineDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDisplayedMonth(Landroidx/compose/material3/DatePickerState;)Ljava/time/YearMonth;
    .locals 2

    invoke-interface {p0}, Landroidx/compose/material3/DatePickerState;->getDisplayedMonthMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/DatePicker_jvmKt;->getYearMonth(J)Ljava/time/YearMonth;

    move-result-object p0

    return-object p0
.end method

.method public static final getDisplayedMonth(Landroidx/compose/material3/DateRangePickerState;)Ljava/time/YearMonth;
    .locals 2

    .line 9
    invoke-interface {p0}, Landroidx/compose/material3/DateRangePickerState;->getDisplayedMonthMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/material3/DatePicker_jvmKt;->getYearMonth(J)Ljava/time/YearMonth;

    move-result-object p0

    return-object p0
.end method

.method private static final getLocalDate(Ljava/lang/Long;)Ljava/time/LocalDate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method private static final getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p0

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-interface {p0, v0}, Ljava/time/chrono/ChronoLocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final getSelectedDate(Landroidx/compose/material3/DatePickerState;)Ljava/time/LocalDate;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/material3/DatePickerState;->getSelectedDateMillis()Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDate(Ljava/lang/Long;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static final getSelectedEndDate(Landroidx/compose/material3/DateRangePickerState;)Ljava/time/LocalDate;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/material3/DateRangePickerState;->getSelectedEndDateMillis()Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDate(Ljava/lang/Long;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static final getSelectedStartDate(Landroidx/compose/material3/DateRangePickerState;)Ljava/time/LocalDate;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/material3/DateRangePickerState;->getSelectedStartDateMillis()Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDate(Ljava/lang/Long;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method private static final getYearMonth(J)Ljava/time/YearMonth;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-static {p0}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object p0

    return-object p0
.end method

.method private static final getYearMonthMillisUtc(Ljava/time/YearMonth;)J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/time/YearMonth;->atDay(I)Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p0

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-interface {p0, v0}, Ljava/time/chrono/ChronoLocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final rememberDatePickerState-EU0dCGE(Ljava/time/LocalDate;Ljava/time/YearMonth;Ly74;ILandroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DatePickerState;
    .locals 11

    move/from16 v0, p6

    and-int/lit8 v1, p7, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :cond_1
    :goto_0
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_2

    sget-object p2, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/DatePickerDefaults;->getYearRange()Ly74;

    move-result-object p2

    :cond_2
    move-object v5, p2

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {p2}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result p3

    :cond_3
    move v6, p3

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/DatePickerDefaults;->getAllDates()Landroidx/compose/material3/SelectableDates;

    move-result-object p2

    move-object v7, p2

    goto :goto_1

    :cond_4
    move-object v7, p4

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, -0x1

    const-string p3, "androidx.compose.material3.rememberDatePickerState (DatePicker.jvm.kt:70)"

    const v1, -0x6b6e4175

    invoke-static {v1, v0, p2, p3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    if-eqz p0, :cond_6

    invoke-static {p0}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p0

    move-object v3, p0

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroidx/compose/material3/DatePicker_jvmKt;->getYearMonthMillisUtc(Ljava/time/YearMonth;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_7
    move-object v4, v2

    const p0, 0xff80

    and-int v9, v0, p0

    const/4 v10, 0x0

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/DatePickerKt;->rememberDatePickerState-EU0dCGE(Ljava/lang/Long;Ljava/lang/Long;Ly74;ILandroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DatePickerState;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    return-object p0
.end method

.method public static final rememberDateRangePickerState-IlFM19s(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/YearMonth;Ly74;ILandroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DateRangePickerState;
    .locals 12

    move/from16 v0, p7

    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :cond_1
    :goto_0
    and-int/lit8 v1, p8, 0x8

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/DatePickerDefaults;->getYearRange()Ly74;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, p3

    :goto_1
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result v1

    move v7, v1

    goto :goto_2

    :cond_3
    move/from16 v7, p4

    :goto_2
    and-int/lit8 v1, p8, 0x20

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/material3/DatePickerDefaults;->INSTANCE:Landroidx/compose/material3/DatePickerDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/DatePickerDefaults;->getAllDates()Landroidx/compose/material3/SelectableDates;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_4
    move-object/from16 v8, p5

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    const-string v3, "androidx.compose.material3.rememberDateRangePickerState (DatePicker.jvm.kt:175)"

    const v4, -0x5e37a7aa

    invoke-static {v4, v0, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    if-eqz p0, :cond_6

    invoke-static {p0}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p0

    move-object v3, p0

    goto :goto_4

    :cond_6
    move-object v3, v2

    :goto_4
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p0

    move-object v4, p0

    goto :goto_5

    :cond_7
    move-object v4, v2

    :goto_5
    if-eqz p2, :cond_8

    invoke-static {p2}, Landroidx/compose/material3/DatePicker_jvmKt;->getYearMonthMillisUtc(Ljava/time/YearMonth;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_8
    move-object v5, v2

    const p0, 0x7fc00

    and-int v10, v0, p0

    const/4 v11, 0x0

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/DateRangePickerKt;->rememberDateRangePickerState-IlFM19s(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ly74;ILandroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DateRangePickerState;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    return-object p0
.end method

.method public static final setDisplayedMonth(Landroidx/compose/material3/DatePickerState;Ljava/time/YearMonth;)V
    .locals 2

    invoke-static {p1}, Landroidx/compose/material3/DatePicker_jvmKt;->getYearMonthMillisUtc(Ljava/time/YearMonth;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/material3/DatePickerState;->setDisplayedMonthMillis(J)V

    return-void
.end method

.method public static final setDisplayedMonth(Landroidx/compose/material3/DateRangePickerState;Ljava/time/YearMonth;)V
    .locals 2

    .line 8
    invoke-static {p1}, Landroidx/compose/material3/DatePicker_jvmKt;->getYearMonthMillisUtc(Ljava/time/YearMonth;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/material3/DateRangePickerState;->setDisplayedMonthMillis(J)V

    return-void
.end method

.method public static final setSelectedDate(Landroidx/compose/material3/DatePickerState;Ljava/time/LocalDate;)V
    .locals 0

    invoke-static {p1}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/material3/DatePickerState;->setSelectedDateMillis(Ljava/lang/Long;)V

    return-void
.end method

.method public static final setSelection(Landroidx/compose/material3/DateRangePickerState;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 0

    invoke-static {p1}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/material3/DatePicker_jvmKt;->getLocalDateMillisUtc(Ljava/time/LocalDate;)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/compose/material3/DateRangePickerState;->setSelection(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
