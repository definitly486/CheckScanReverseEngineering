.class public final Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;
.super Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker$a;
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

.field public r0:I

.field public final s0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy"

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit16 v0, p1, -0x96

    iput v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->q0:I

    add-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->r0:I

    const p1, 0x7f1404d5

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->s0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy"

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    .line 48
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit16 p2, p1, -0x96

    .line 49
    iput p2, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->q0:I

    add-int/lit8 p1, p1, 0x64

    .line 50
    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->r0:I

    const p1, 0x7f1404d5

    .line 51
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->j(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->s0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentYear()I
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getCurrentItemPosition()I

    move-result v0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->q0:I

    add-int/2addr p0, v0

    return p0
.end method

.method public final getMaximumYear()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->r0:I

    return p0
.end method

.method public final getMinimumYear()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->q0:I

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

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->getDateHelper()Lm92;

    move-result-object v1

    invoke-virtual {v1}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->q0:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->q0:I

    iget p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->r0:I

    if-gt v1, p0, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final k()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->s0:Ljava/lang/String;

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    return-void
.end method

.method public final setMaxYear(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->r0:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m()V

    return-void
.end method

.method public final setMaximumYear(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->r0:I

    return-void
.end method

.method public final setMinYear(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->q0:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m()V

    return-void
.end method

.method public final setMinimumYear(I)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker;->q0:I

    return-void
.end method

.method public final setOnYearSelectedListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelYearPicker$a;)V
    .locals 0

    return-void
.end method
