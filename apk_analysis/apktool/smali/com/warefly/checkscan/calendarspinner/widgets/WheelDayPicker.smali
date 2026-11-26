.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;
.super Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
        "Loc2;",
        ">;"
    }
.end annotation


# instance fields
.field public q0:I

.field public r0:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker$a;

.field public final s0:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x16c

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->q0:I

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE d MMM"

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->s0:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x16c

    .line 33
    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->q0:I

    .line 34
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "EEE d MMM"

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->s0:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final getCurrentDate()Ljava/util/Date;
    .locals 7

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v3

    invoke-virtual {v3}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkx2;->b:Lkx2;

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->R(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    const-string v5, "\u0421\u0435\u0433\u043e\u0434\u043d\u044f"

    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Loc2;

    iget-object v6, v6, Loc2;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_4
    const/4 p0, 0x6

    sub-int/2addr v0, v4

    invoke-virtual {v2, p0, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final h(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Loc2;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v2

    invoke-virtual {v2}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->q0:I

    mul-int/lit8 p1, p1, -0x1

    :goto_0
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    :goto_1
    const/4 v3, 0x1

    if-gez p1, :cond_1

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    new-instance v5, Loc2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->i(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Loc2;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Loc2;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v5, "\u0421\u0435\u0433\u043e\u0434\u043d\u044f"

    invoke-direct {p1, v5, v1}, Loc2;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v1

    invoke-virtual {v1}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->q0:I

    :goto_2
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v4, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    new-instance v6, Loc2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->i(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Loc2;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public final i(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->s0:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final k()Ljava/lang/Object;
    .locals 2

    new-instance p0, Loc2;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "\u0421\u0435\u0433\u043e\u0434\u043d\u044f"

    invoke-direct {p0, v1, v0}, Loc2;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Loc2;

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->r0:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker$a;

    if-eqz p1, :cond_0

    check-cast p1, Ly3;

    iget-object p1, p1, Ly3;->c:Ljava/lang/Object;

    check-cast p1, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;

    sget v0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->p:I

    invoke-virtual {p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b()V

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->a(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;)V

    :cond_0
    return-void
.end method

.method public final setDayCount(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->q0:I

    return-void
.end method

.method public final setOnDaySelectedListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker$a;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->r0:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker$a;

    return-void
.end method
