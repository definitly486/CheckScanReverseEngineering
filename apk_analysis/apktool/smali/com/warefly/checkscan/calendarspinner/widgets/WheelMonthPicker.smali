.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;
.super Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker$a;
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

.field public r0:Z

.field public s0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getCurrentMonth()I
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentItemPosition()I

    move-result p0

    return p0
.end method

.method public getLastScrollPosition()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;->q0:I

    return p0
.end method

.method public final getMonthFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;->s0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MMMM"

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;->s0:Ljava/lang/String;

    return-object p0
.end method

.method public final getMonthListener()Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker$a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Z)Ljava/util/List;
    .locals 6
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

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;->getMonthFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v2

    invoke-virtual {v2}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0xc

    if-ge v2, v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget-boolean v4, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;->r0:Z

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    return-void
.end method

.method public final setDisplayMonthNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;->r0:Z

    return-void
.end method

.method public setLastScrollPosition(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;->q0:I

    return-void
.end method

.method public final setMonthFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker;->s0:Ljava/lang/String;

    return-void
.end method

.method public final setMonthListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker$a;)V
    .locals 0

    return-void
.end method

.method public final setOnMonthSelectedListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelMonthPicker$a;)V
    .locals 0

    return-void
.end method
