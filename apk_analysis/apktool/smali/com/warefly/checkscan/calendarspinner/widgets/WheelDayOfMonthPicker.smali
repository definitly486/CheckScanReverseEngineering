.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker;
.super Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker$a;,
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public q0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getCurrentDay()I
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentItemPosition()I

    move-result p0

    return p0
.end method

.method public final getDayOfMonthListener()Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker$a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDaysInMonth()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker;->q0:I

    return p0
.end method

.method public final h(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker;->q0:I

    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final k()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object p0

    invoke-virtual {p0}, Lm92;->c()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm92;->a(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getListener()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b;

    return-void
.end method

.method public final setDayOfMonthListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker$a;)V
    .locals 0

    return-void
.end method

.method public final setDayOfMonthSelectedListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker$a;)V
    .locals 0

    return-void
.end method

.method public final setDaysInMonth(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker;->q0:I

    return-void
.end method

.method public final setOnFinishedLoopListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayOfMonthPicker$b;)V
    .locals 0

    return-void
.end method
