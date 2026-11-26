.class public final Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;
    }
.end annotation


# instance fields
.field public final A:Ljava/util/Calendar;

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public final v:Z

.field public w:I

.field public final x:Z

.field public y:Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;

.field public final z:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->b:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->c:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->d:Landroid/graphics/Paint;

    const/4 v7, -0x1

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->g:I

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->h:I

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->i:I

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->j:I

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->k:I

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->l:I

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->m:I

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->n:I

    const/4 v7, 0x1

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->o:I

    const/4 v8, 0x7

    iput v8, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->p:I

    const/16 v9, 0x20

    iput v9, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->s:I

    iput-boolean v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->v:Z

    const/4 v9, 0x6

    iput v9, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->w:I

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->x:Z

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    new-instance v12, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->z:Landroid/text/format/Time;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    iput-object v13, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->A:Ljava/util/Calendar;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f140575

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v11, 0x7f060078

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v1, v7, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->B:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v15, 0x7f060446

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const/4 v15, 0x4

    invoke-virtual {v1, v15, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v7, 0x7f060480

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    const/4 v8, 0x2

    invoke-virtual {v1, v8, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    const/4 v9, 0x5

    invoke-virtual {v1, v9, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->C:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f0604b5

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const/16 v15, 0x8

    invoke-virtual {v1, v15, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->D:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const/4 v15, 0x6

    invoke-virtual {v1, v15, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->E:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x7f0604b4

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const/4 v15, 0x7

    invoke-virtual {v1, v15, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->F:I

    move-object/from16 v16, v12

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v19, v10

    const v10, 0x7f0604b4

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v15, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f0600ba

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/4 v15, 0x3

    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    iput v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->G:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f070ae2

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    const/16 v15, 0xc

    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->H:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f070b69

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/16 v15, 0xd

    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->I:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v18, v10

    const v10, 0x7f070b6a

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/16 v15, 0xe

    invoke-virtual {v1, v15, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v20, v12

    const v12, 0x7f070508

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    const/16 v15, 0xb

    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    iput v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->J:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v21, v12

    const v12, 0x7f070b6e

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/16 v15, 0xf

    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->K:I

    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v3

    const v3, 0x7f070084

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sub-int v1, v1, v21

    const/16 v17, 0x6

    div-int/lit8 v1, v1, 0x6

    iput v1, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->s:I

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v1, v12

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {v14, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v4, v10

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v15, 0x0

    invoke-static {v13, v15}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v4, v20

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    move-object/from16 v2, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x80

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private final getMonthAndYearString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->A:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final setRangeCells(I)V
    .locals 8

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->h:I

    if-eq v2, v1, :cond_8

    iget v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->k:I

    iget v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->l:I

    iget-object v4, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->b:Landroid/graphics/Paint;

    iget v5, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->F:I

    if-eq v1, v3, :cond_4

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    if-gt v6, v7, :cond_0

    if-ge v7, v3, :cond_0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_0
    if-ne v7, v1, :cond_2

    iget v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v6, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->i:I

    if-le v1, v6, :cond_1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_1
    if-ne v1, v6, :cond_2

    if-le p1, v0, :cond_8

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_2
    if-ne v7, v3, :cond_8

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->j:I

    if-ge v0, p0, :cond_3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_3
    if-ne v0, p0, :cond_8

    if-ge p1, v2, :cond_8

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_4
    iget v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->i:I

    add-int/lit8 v3, v1, 0x1

    iget v6, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->j:I

    iget p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    if-gt v3, p0, :cond_5

    if-ge p0, v6, :cond_5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_5
    if-ne p0, v1, :cond_6

    if-ge p0, v6, :cond_6

    if-le p1, v0, :cond_6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_6
    if-ne p0, v1, :cond_7

    if-ne p0, v6, :cond_7

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v2, :cond_7

    if-gt v0, p1, :cond_7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_7
    if-ne p0, v6, :cond_8

    if-eq p0, v1, :cond_8

    if-ge p1, v2, :cond_8

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    return-void
.end method

.method private final setSelectedCell(I)V
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->k:I

    iget v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->i:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->g:I

    if-eq v0, p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->l:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->j:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->h:I

    if-ne v0, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->b:Landroid/graphics/Paint;

    iget p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->D:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(ILandroid/text/format/Time;)Z
    .locals 2

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-lt v0, v1, :cond_2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-lt v0, v1, :cond_2

    :cond_0
    iget p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v0, p2, Landroid/text/format/Time;->month:I

    if-ne p0, v0, :cond_1

    iget p0, p2, Landroid/text/format/Time;->monthDay:I

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->t:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iget v4, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->J:I

    div-int/lit8 v5, v4, 0x2

    iget v6, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->K:I

    div-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-float v2, v2

    int-to-float v6, v6

    iget-object v8, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->s:I

    iget v5, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->I:I

    add-int/2addr v2, v5

    div-int/2addr v2, v3

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    add-int/2addr v2, v4

    iget v4, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->t:I

    div-int/lit8 v4, v4, 0xe

    iget v8, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->q:I

    iget v9, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->o:I

    if-ge v8, v9, :cond_0

    add-int/lit8 v8, v8, 0x7

    :cond_0
    sub-int/2addr v8, v9

    move v9, v6

    :goto_0
    iget v10, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->p:I

    if-gt v9, v10, :cond_9

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v6

    mul-int/2addr v10, v4

    iget v11, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->i:I

    if-ne v11, v12, :cond_1

    iget v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->g:I

    if-ne v12, v9, :cond_1

    iget v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->k:I

    iget v13, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    if-eq v12, v13, :cond_2

    :cond_1
    iget v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->j:I

    if-ne v11, v12, :cond_4

    iget v11, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->h:I

    if-ne v11, v9, :cond_4

    iget v11, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->l:I

    iget v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    if-ne v11, v12, :cond_4

    :cond_2
    iget-boolean v11, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->x:Z

    iget-object v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->d:Landroid/graphics/Paint;

    iget v13, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->H:I

    if-eqz v11, :cond_3

    new-instance v11, Landroid/graphics/RectF;

    sub-int v14, v10, v13

    int-to-float v14, v14

    div-int/lit8 v15, v5, 0x3

    sub-int v15, v2, v15

    move/from16 v16, v3

    sub-int v3, v15, v13

    int-to-float v3, v3

    move/from16 v17, v7

    add-int v7, v10, v13

    int-to-float v7, v7

    add-int/2addr v15, v13

    int-to-float v13, v15

    invoke-direct {v11, v14, v3, v7, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v1, v11, v3, v3, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    move/from16 v16, v3

    move/from16 v17, v7

    int-to-float v3, v10

    div-int/lit8 v7, v5, 0x3

    sub-int v7, v2, v7

    int-to-float v7, v7

    int-to-float v11, v13

    invoke-virtual {v1, v3, v7, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    move/from16 v16, v3

    move/from16 v17, v7

    :goto_1
    iget-boolean v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->e:Z

    iget-object v7, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->b:Landroid/graphics/Paint;

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->n:I

    if-ne v3, v9, :cond_5

    iget v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->B:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_5
    iget-boolean v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->f:Z

    if-eqz v3, :cond_6

    iget v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->m:I

    if-lt v9, v3, :cond_6

    iget v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->G:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static/range {v17 .. v17}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_6
    iget v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->C:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static/range {v17 .. v17}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_2
    invoke-direct {v0, v9}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->setSelectedCell(I)V

    invoke-direct {v0, v9}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->setRangeCells(I)V

    iget-boolean v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->v:Z

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->z:Landroid/text/format/Time;

    invoke-virtual {v0, v9, v3}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->a(ILandroid/text/format/Time;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, v3, Landroid/text/format/Time;->month:I

    iget v12, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    if-ne v11, v12, :cond_7

    iget v3, v3, Landroid/text/format/Time;->year:I

    iget v11, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    if-ne v3, v11, :cond_7

    iget v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->E:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static/range {v16 .. v16}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v11, "%d"

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v10, v10

    int-to-float v11, v2

    invoke-virtual {v1, v3, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x7

    if-ne v8, v3, :cond_8

    iget v3, v0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->s:I

    add-int/2addr v2, v3

    move/from16 v8, v17

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    move/from16 v7, v17

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->s:I

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->w:I

    mul-int/2addr p2, v0

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->J:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->t:I

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/4 v4, 0x0

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->t:I

    int-to-float v3, v3

    cmpl-float v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->J:I

    int-to-float v5, v5

    sub-float/2addr p1, v5

    float-to-int p1, p1

    iget v5, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->s:I

    div-int/2addr p1, v5

    sub-float/2addr v0, v2

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    iget v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->q:I

    iget v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->o:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x7

    :cond_1
    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v0

    iget v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    const/16 v2, 0xb

    if-gt v0, v2, :cond_6

    if-ltz v0, :cond_6

    iget v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    packed-switch v0, :pswitch_data_0

    const-string p0, "Invalid Month"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 v3, 0x1e

    goto :goto_0

    :pswitch_1
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_2

    rem-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_3

    :cond_2
    rem-int/lit16 v3, v2, 0x190

    if-nez v3, :cond_4

    :cond_3
    const/16 v3, 0x1d

    goto :goto_0

    :cond_4
    const/16 v3, 0x1c

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x1f

    :goto_0
    if-lt v3, p1, :cond_6

    if-ge p1, v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, Ldy0;

    invoke-direct {v4, v2, v0, p1}, Ldy0;-><init>(III)V

    :cond_6
    :goto_1
    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->y:Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;

    if-eqz p1, :cond_8

    iget v0, v4, Ldy0;->c:I

    iget-object p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->z:Landroid/text/format/Time;

    iget v2, p0, Landroid/text/format/Time;->month:I

    if-ne v0, v2, :cond_7

    iget v0, v4, Ldy0;->b:I

    iget v2, p0, Landroid/text/format/Time;->year:I

    if-ne v0, v2, :cond_7

    iget v0, v4, Ldy0;->d:I

    iget p0, p0, Landroid/text/format/Time;->monthDay:I

    if-gt v0, p0, :cond_8

    :cond_7
    invoke-interface {p1, v4}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;->a(Ldy0;)V

    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setMonthParams(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "year"

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "You must specify month and year for this view"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->s:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    iput v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->s:I

    :cond_2
    const-string v1, "selected_begin_day"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->g:I

    :cond_3
    const-string v1, "selected_last_day"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->h:I

    :cond_4
    const-string v1, "selected_begin_month"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->i:I

    :cond_5
    const-string v1, "selected_last_month"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->j:I

    :cond_6
    const-string v1, "selected_begin_year"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->k:I

    :cond_7
    const-string v1, "selected_last_year"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->l:I

    :cond_8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->e:Z

    iput-boolean v0, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->f:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->m:I

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->n:I

    const/4 v2, 0x2

    iget v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget-object v4, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->A:Ljava/util/Calendar;

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget v2, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    const/4 v3, 0x1

    invoke-virtual {v4, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x7

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->q:I

    const-string v5, "week_start"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->o:I

    iget p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v4, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    packed-switch p1, :pswitch_data_0

    const-string p0, "Invalid Month"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/16 p1, 0x1e

    goto :goto_2

    :pswitch_1
    rem-int/lit8 p1, v4, 0x4

    if-nez p1, :cond_a

    rem-int/lit8 p1, v4, 0x64

    if-nez p1, :cond_b

    :cond_a
    rem-int/lit16 v4, v4, 0x190

    if-nez v4, :cond_c

    :cond_b
    const/16 p1, 0x1d

    goto :goto_2

    :cond_c
    const/16 p1, 0x1c

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x1f

    :goto_2
    iput p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->p:I

    move v4, v0

    :goto_3
    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->u:I

    iget-object v7, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->z:Landroid/text/format/Time;

    iget v8, v7, Landroid/text/format/Time;->year:I

    if-ne v6, v8, :cond_d

    iget v9, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v10, v7, Landroid/text/format/Time;->month:I

    if-ne v9, v10, :cond_d

    iget v9, v7, Landroid/text/format/Time;->monthDay:I

    if-ne v5, v9, :cond_d

    iput-boolean v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->e:Z

    iput v5, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->n:I

    :cond_d
    iget v9, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->m:I

    if-ne v9, v1, :cond_e

    if-ne v6, v8, :cond_e

    iget v6, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->r:I

    iget v8, v7, Landroid/text/format/Time;->month:I

    if-ne v6, v8, :cond_e

    iget v6, v7, Landroid/text/format/Time;->monthDay:I

    if-le v5, v6, :cond_e

    iput-boolean v3, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->f:Z

    iput v5, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->m:I

    :cond_e
    invoke-virtual {p0, v5, v7}, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->a(ILandroid/text/format/Time;)Z

    if-eq v4, p1, :cond_f

    move v4, v5

    goto :goto_3

    :cond_f
    iget p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->q:I

    iget v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->o:I

    if-ge p1, v1, :cond_10

    add-int/lit8 p1, p1, 0x7

    :cond_10
    sub-int/2addr p1, v1

    iget v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->p:I

    add-int/2addr p1, v1

    div-int/lit8 v1, p1, 0x7

    rem-int/2addr p1, v2

    if-lez p1, :cond_11

    move v0, v3

    :cond_11
    add-int/2addr v1, v0

    iput v1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->w:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setOnDayClickListener(Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView;->y:Lcom/warefly/checkscan/util/calendar/calendar/SimpleMonthView$a;

    return-void
.end method
