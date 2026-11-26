.class final Landroidx/compose/material3/DatePickerFormatterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/DatePickerFormatter;


# instance fields
.field private final formatterCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedDateDescriptionSkeleton:Ljava/lang/String;

.field private final selectedDateSkeleton:Ljava/lang/String;

.field private final yearSelectionSkeleton:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->yearSelectionSkeleton:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateSkeleton:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateDescriptionSkeleton:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->formatterCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/material3/DatePickerFormatterImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->yearSelectionSkeleton:Ljava/lang/String;

    check-cast p1, Landroidx/compose/material3/DatePickerFormatterImpl;

    iget-object v2, p1, Landroidx/compose/material3/DatePickerFormatterImpl;->yearSelectionSkeleton:Ljava/lang/String;

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateSkeleton:Ljava/lang/String;

    iget-object v2, p1, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateSkeleton:Ljava/lang/String;

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateDescriptionSkeleton:Ljava/lang/String;

    iget-object p1, p1, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateDescriptionSkeleton:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public formatDate(Ljava/lang/Long;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p3, :cond_1

    iget-object p1, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateDescriptionSkeleton:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateSkeleton:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->formatterCache:Ljava/util/Map;

    invoke-static {v0, v1, p1, p2, p0}, Landroidx/compose/material3/internal/CalendarModel_androidKt;->formatWithSkeleton(JLjava/lang/String;Ljava/util/Locale;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatMonthYear(Ljava/lang/Long;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->yearSelectionSkeleton:Ljava/lang/String;

    iget-object p0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->formatterCache:Ljava/util/Map;

    invoke-static {v0, v1, p1, p2, p0}, Landroidx/compose/material3/internal/CalendarModel_androidKt;->formatWithSkeleton(JLjava/lang/String;Ljava/util/Locale;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedDateDescriptionSkeleton()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateDescriptionSkeleton:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectedDateSkeleton()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateSkeleton:Ljava/lang/String;

    return-object p0
.end method

.method public final getYearSelectionSkeleton()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->yearSelectionSkeleton:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->yearSelectionSkeleton:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateSkeleton:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/DatePickerFormatterImpl;->selectedDateDescriptionSkeleton:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
