.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelAmPmPicker;
.super Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


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
.method public final g(Ljava/util/Date;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object p0

    invoke-virtual {p0}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 p1, 0xc

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const p1, 0x7f1404d1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1404d4

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v1

    invoke-virtual {v1}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f1404d4

    goto :goto_0

    :cond_0
    const p1, 0x7f1404d1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v1

    invoke-virtual {v1}, Lm92;->c()Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1}, Lm92;->a(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const v0, 0x7f1404d4

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f1404d1

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getListener()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b;

    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setCyclic(Z)V

    return-void
.end method
