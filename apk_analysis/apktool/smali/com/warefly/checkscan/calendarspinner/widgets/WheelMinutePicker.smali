.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;
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


# instance fields
.field public q0:La4;


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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/util/Date;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm92;->a(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    if-ge p1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getCurrentMinute()I
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getWheelAdapter()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentItemPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final h(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0x3c

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object p0

    invoke-virtual {p0}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getListener()Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$b;

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;->q0:La4;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    iget-object p1, v0, La4;->b:Ljava/lang/Object;

    check-cast p1, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;

    sget v0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->p:I

    invoke-virtual {p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b()V

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->a(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;)V

    :cond_0
    return-void
.end method

.method public final setStepSizeMinutes(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_2

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h0:Z

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;->h(Z)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m()V

    :cond_2
    return-void
.end method
