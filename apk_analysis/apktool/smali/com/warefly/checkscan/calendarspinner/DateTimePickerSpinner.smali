.class public final Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$a;
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final b:Lm92;

.field public final c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

.field public final d:Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;

.field public final e:Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/view/View;

.field public i:Ljava/util/Date;

.field public j:Ljava/util/Date;

.field public k:Ljava/util/Date;

.field public l:Z

.field public m:Z

.field public n:Z

.field public final o:Lfh8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Lm92;

    invoke-direct {p3}, Lm92;-><init>()V

    iput-object p3, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b:Lm92;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->g:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->l:Z

    iput-boolean v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->m:Z

    iput-boolean v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->n:Z

    sget-object v1, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$b;->f:Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$b;

    invoke-static {v1}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->o:Lfh8;

    const v1, 0x7f0d0342

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0a022e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    iput-object v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    const v2, 0x7f0a0492

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;

    iput-object v2, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->d:Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;

    const v3, 0x7f0a02f9

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;

    iput-object v3, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->e:Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;

    const v4, 0x7f0a0256

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->h:Landroid/view/View;

    const/4 v4, 0x3

    new-array v5, v4, [Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v3, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    iget-object v3, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b:Lm92;

    invoke-virtual {v2, v3}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setDateHelper(Lm92;)V

    goto :goto_0

    :cond_0
    sget-object p3, Lzw6;->a:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f060491

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x16

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setTextColor(I)V

    const v2, 0x7f06048f

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/16 v2, 0x10

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setSelectedTextColor(I)V

    const p1, 0x7f070003

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 v2, 0xd

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setItemSpacing(I)V

    const/16 p1, 0x5a

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setCurvedMaxAngle(I)V

    const p1, 0x7f070ba5

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 v2, 0x12

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setSelectorHeight(I)V

    const p1, 0x7f070002

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 p3, 0x17

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setTextSize(I)V

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setCurved(Z)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setCyclic(Z)V

    const/16 p1, 0xf

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setMustBeOnFuture(Z)V

    const/16 p1, 0x19

    const/4 p3, 0x7

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setVisibleItemCount(I)V

    const/16 p1, 0x14

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setStepSizeMinutes(I)V

    const/16 p1, 0x13

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setStepSizeHours(I)V

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    const/4 p3, 0x5

    const/16 v1, 0x16c

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->setDayCount(I)V

    const/4 p3, 0x6

    iget-boolean v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->l:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-direct {p0, p3}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setDisplayDays(Z)V

    const/16 p3, 0x9

    iget-boolean v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->m:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-direct {p0, p3}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setDisplayMinutes(Z)V

    const/16 p3, 0x8

    iget-boolean v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->n:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-direct {p0, p3}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setDisplayHours(Z)V

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setFontToAllPickers(I)V

    invoke-virtual {p2, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setFontToAllPickers(I)V

    const/16 p3, 0x15

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->setTextAlign(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    if-eqz p0, :cond_2

    iget-boolean p2, p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h0:Z

    invoke-virtual {p1, p2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->h(Z)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    if-eqz p0, :cond_2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 397
    invoke-direct {p0, p1, p2, p3}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getReUsedCalendar()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->o:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0
.end method

.method private final setCurved(Z)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setCurved(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setCurvedMaxAngle(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setCurvedMaxAngle(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setCyclic(Z)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setCyclic(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setDisplayDays(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->l:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setDisplayHours(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->n:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->e:Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g:Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->h0:Z

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;->h(Z)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker$a;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->m()V

    return-void
.end method

.method private final setDisplayMinutes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->m:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->d:Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setFontToAllPickers(I)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setItemSpacing(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setItemSpace(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setSelectedTextColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setSelectedItemTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setSelectorHeight(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setStepSizeHours(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->e:Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;->setStepSizeHours(I)V

    return-void
.end method

.method private final setStepSizeMinutes(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->d:Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;->setStepSizeMinutes(I)V

    return-void
.end method

.method private final setTextAlign(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setItemAlign(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setTextSize(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setItemTextSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setVisibleItemCount(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setVisibleItemCount(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker<",
            "*>;>(TT;)V"
        }
    .end annotation

    new-instance v0, Lkc2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkc2;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lgp;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lgp;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 8

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->getDate()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->j:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    invoke-virtual {v2, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result v3

    invoke-virtual {v2, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result v4

    invoke-direct {p0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->getReUsedCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->getReUsedCalendar()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/high16 v6, -0x80000000

    iget-object v7, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->e:Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;

    if-ne v3, v4, :cond_0

    invoke-virtual {v7, v5}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setMaxAvailableItemPosition(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v6}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setMaxAvailableItemPosition(I)V

    :goto_0
    invoke-virtual {v2, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result v3

    invoke-virtual {v2, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v7, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result v4

    invoke-virtual {v7, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result v5

    invoke-direct {p0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->getReUsedCalendar()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->getReUsedCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v7, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->d:Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;

    if-ne v3, v2, :cond_1

    if-ne v4, v5, :cond_1

    invoke-virtual {v7, v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setMaxAvailableItemPosition(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v6}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setMaxAvailableItemPosition(I)V

    :cond_2
    :goto_1
    const-string v1, "EEE d MMM H:mm"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$a;

    invoke-interface {v2, v1, v0}, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner$a;->onDateChanged(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final getDate()Ljava/util/Date;
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->e:Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;

    invoke-virtual {v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;->getCurrentHour()I

    move-result v0

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->d:Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;

    invoke-virtual {v1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;->getCurrentMinute()I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b:Lm92;

    invoke-virtual {v3}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-boolean v3, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->l:Z

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    invoke-virtual {p0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->getCurrentDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    const/16 p0, 0xb

    invoke-virtual {v2, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v2, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v2, p0, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Ly3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ly3;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    invoke-virtual {v1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;->setOnDaySelectedListener(Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker$a;)V

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->d:Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, La4;

    invoke-direct {v1, p0}, La4;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelMinutePicker;->q0:La4;

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->e:Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, La4;

    invoke-direct {v1, p0}, La4;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelHourPicker;->r0:La4;

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->k:Ljava/util/Date;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b:Lm92;

    invoke-virtual {v1}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->k:Ljava/util/Date;

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v1, v0}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setDefaultDate(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setMaxDate(Ljava/util/Date;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b:Lm92;

    invoke-virtual {v1}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->j:Ljava/util/Date;

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->g(Ljava/util/Date;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setMaxAvailableItemPosition(I)V

    return-void
.end method

.method public final setMinDate(Ljava/util/Date;)V
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b:Lm92;

    invoke-virtual {v1}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->i:Ljava/util/Date;

    return-void
.end method

.method public final setMustBeOnFuture(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->c:Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setShowOnlyFutureDate(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->b:Lm92;

    invoke-virtual {v0}, Lm92;->b()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->i:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/calendarspinner/DateTimePickerSpinner;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/calendarspinner/widgets/WheelPicker;->setItemTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
