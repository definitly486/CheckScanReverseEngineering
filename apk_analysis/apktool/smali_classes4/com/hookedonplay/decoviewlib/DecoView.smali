.class public Lcom/hookedonplay/decoviewlib/DecoView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hookedonplay/decoviewlib/DecoView$c;,
        Lcom/hookedonplay/decoviewlib/DecoView$d;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Lcom/hookedonplay/decoviewlib/DecoView$d;

.field public d:Lcom/hookedonplay/decoviewlib/DecoView$c;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lka1;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:Landroid/graphics/RectF;

.field public final i:F

.field public final j:I

.field public final k:I

.field public l:Lkd2;

.field public m:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->b:Ljava/lang/String;

    .line 168
    sget-object p1, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$d;

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->c:Lcom/hookedonplay/decoviewlib/DecoView$d;

    .line 169
    sget-object p1, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$c;

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->d:Lcom/hookedonplay/decoviewlib/DecoView$c;

    const/4 p1, -0x1

    .line 170
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->f:I

    .line 171
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->g:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 172
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->i:F

    const/16 p1, 0x168

    .line 173
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    .line 174
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->b:Ljava/lang/String;

    sget-object v0, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$d;

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->c:Lcom/hookedonplay/decoviewlib/DecoView$d;

    sget-object v1, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$c;

    iput-object v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->d:Lcom/hookedonplay/decoviewlib/DecoView$c;

    const/4 v2, -0x1

    iput v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->f:I

    iput v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->g:I

    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->i:F

    const/16 v3, 0x168

    iput v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v4, Luw6;->a:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->i:F

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    invoke-static {}, Lcom/hookedonplay/decoviewlib/DecoView$d;->values()[Lcom/hookedonplay/decoviewlib/DecoView$d;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v6, 0x1

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->c:Lcom/hookedonplay/decoviewlib/DecoView$d;

    invoke-static {}, Lcom/hookedonplay/decoviewlib/DecoView$c;->values()[Lcom/hookedonplay/decoviewlib/DecoView$c;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->d:Lcom/hookedonplay/decoviewlib/DecoView$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    if-lez p1, :cond_2

    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    add-int/lit16 v0, v2, 0x10e

    rem-int/2addr v0, v3

    iput v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->j:I

    if-ge p1, v3, :cond_0

    rsub-int p1, p1, 0x168

    div-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x5a

    add-int/2addr p1, v2

    rem-int/2addr p1, v3

    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->j:I

    :cond_0
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lka1;

    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    iget v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->j:I

    invoke-virtual {p2, v0, v1}, Lka1;->e(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->c()V

    return-void

    :cond_2
    const-string p0, "Total angle of the arc must be > 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->b:Ljava/lang/String;

    .line 177
    sget-object p1, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$d;

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->c:Lcom/hookedonplay/decoviewlib/DecoView$d;

    .line 178
    sget-object p1, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$c;

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->d:Lcom/hookedonplay/decoviewlib/DecoView$c;

    const/4 p1, -0x1

    .line 179
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->f:I

    .line 180
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->g:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 181
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->i:F

    const/16 p1, 0x168

    .line 182
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    .line 183
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->c()V

    return-void
.end method

.method private getEventManager()Lkd2;
    .locals 1

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->l:Lkd2;

    if-nez v0, :cond_0

    new-instance v0, Lkd2;

    invoke-direct {v0, p0}, Lkd2;-><init>(Lcom/hookedonplay/decoviewlib/DecoView;)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->l:Lkd2;

    :cond_0
    return-object v0
.end method

.method private getWidestLine()F
    .locals 2

    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lka1;

    iget-object v1, v1, Lka1;->b:Lpq7;

    iget v1, v1, Lpq7;->c:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Lid2;)V
    .locals 5

    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getEventManager()Lkd2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lid2;->a:Lid2$b;

    sget-object v1, Lid2$b;->EVENT_SHOW:Lid2$b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lhd2;->EFFECT_SPIRAL_OUT:Lhd2;

    if-eqz v1, :cond_1

    sget-object v1, Lhd2;->EFFECT_SPIRAL_OUT_FILL:Lhd2;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    sget-object v4, Lid2$b;->EVENT_MOVE:Lid2$b;

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iget-object v0, p0, Lkd2;->a:Landroid/os/Handler;

    new-instance v3, Ljd2;

    invoke-direct {v3, p0, v1, p1, v2}, Ljd2;-><init>(Lkd2;ZLid2;Z)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Lpq7;)I
    .locals 5

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Lcom/hookedonplay/decoviewlib/DecoView$a;

    invoke-direct {v0, p0}, Lcom/hookedonplay/decoviewlib/DecoView$a;-><init>(Lcom/hookedonplay/decoviewlib/DecoView;)V

    iget-object v1, p1, Lpq7;->j:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lpq7;->j:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lpq7;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->i:F

    iput v0, p1, Lpq7;->c:F

    :cond_2
    sget-object v0, Lcom/hookedonplay/decoviewlib/DecoView$b;->a:[I

    iget-object v1, p1, Lpq7;->h:Lpq7$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->j:I

    iget v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "Chart Style not implemented"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->b:Ljava/lang/String;

    const-string v4, "STYLE_LINE_* is currently experimental"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Leq4;

    invoke-direct {v0, p1, v2, v1}, Leq4;-><init>(Lpq7;II)V

    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->d:Lcom/hookedonplay/decoviewlib/DecoView$c;

    iput-object p1, v0, Leq4;->r:Lcom/hookedonplay/decoviewlib/DecoView$c;

    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->c:Lcom/hookedonplay/decoviewlib/DecoView$d;

    iput-object p1, v0, Leq4;->s:Lcom/hookedonplay/decoviewlib/DecoView$d;

    goto :goto_1

    :cond_5
    new-instance v0, Ln86;

    invoke-direct {v0, p1, v2, v1}, Lka1;-><init>(Lpq7;II)V

    goto :goto_1

    :cond_6
    new-instance v0, Ldq4;

    invoke-direct {v0, p1, v2, v1}, Lka1;-><init>(Lpq7;II)V

    :goto_1
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->m:[F

    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->d()V

    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v3

    return p0
.end method

.method public final c()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lpq7$a;

    const/16 v1, 0xff

    const/16 v2, 0xda

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v0, v2}, Lpq7$a;-><init>(I)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v2, v2}, Lpq7$a;->a(FF)V

    iget v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->i:F

    iput v3, v0, Lpq7$a;->c:F

    new-instance v4, Lpq7;

    invoke-direct {v4, v0}, Lpq7;-><init>(Lpq7$a;)V

    invoke-virtual {p0, v4}, Lcom/hookedonplay/decoviewlib/DecoView;->b(Lpq7;)I

    new-instance v0, Lpq7$a;

    const/16 v4, 0x40

    invoke-static {v1, v1, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Lpq7$a;-><init>(I)V

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v2, v1}, Lpq7$a;->a(FF)V

    iput v3, v0, Lpq7$a;->c:F

    new-instance v1, Lpq7;

    invoke-direct {v1, v0}, Lpq7;-><init>(Lpq7$a;)V

    invoke-virtual {p0, v1}, Lcom/hookedonplay/decoviewlib/DecoView;->b(Lpq7;)I

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 10

    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->f:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->g:I

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getWidestLine()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->f:I

    iget v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->g:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    if-le v1, v2, :cond_1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move v2, v3

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->c:Lcom/hookedonplay/decoviewlib/DecoView$d;

    sget-object v5, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_FILL:Lcom/hookedonplay/decoviewlib/DecoView$d;

    if-ne v4, v5, :cond_3

    move v2, v3

    :cond_3
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->d:Lcom/hookedonplay/decoviewlib/DecoView$c;

    sget-object v5, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_FILL:Lcom/hookedonplay/decoviewlib/DecoView$c;

    if-ne v4, v5, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    new-instance v8, Landroid/graphics/RectF;

    add-float/2addr v4, v0

    add-float/2addr v5, v0

    iget v9, p0, Lcom/hookedonplay/decoviewlib/DecoView;->f:I

    int-to-float v9, v9

    sub-float/2addr v9, v0

    sub-float/2addr v9, v6

    iget v6, p0, Lcom/hookedonplay/decoviewlib/DecoView;->g:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    sub-float/2addr v6, v7

    invoke-direct {v8, v4, v5, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/hookedonplay/decoviewlib/DecoView;->h:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->c:Lcom/hookedonplay/decoviewlib/DecoView$d;

    sget-object v4, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_TOP:Lcom/hookedonplay/decoviewlib/DecoView$d;

    if-ne v0, v4, :cond_5

    neg-float v0, v2

    invoke-virtual {v8, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_BOTTOM:Lcom/hookedonplay/decoviewlib/DecoView$d;

    if-ne v0, v4, :cond_6

    invoke-virtual {v8, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->d:Lcom/hookedonplay/decoviewlib/DecoView$c;

    sget-object v2, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_LEFT:Lcom/hookedonplay/decoviewlib/DecoView$c;

    if-ne v0, v2, :cond_7

    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->h:Landroid/graphics/RectF;

    neg-float v0, v1

    invoke-virtual {p0, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    return-void

    :cond_7
    sget-object v2, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_RIGHT:Lcom/hookedonplay/decoviewlib/DecoView$c;

    if-ne v0, v2, :cond_8

    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->h:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->l:Lkd2;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lkd2;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->h:Landroid/graphics/RectF;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lka1;

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, v4}, Lka1;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->m:[F

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lka1;

    add-int/lit8 v5, v1, 0x1

    move v6, v5

    :goto_1
    iget-object v7, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lka1;

    iget-boolean v8, v7, Lka1;->m:Z

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lka1;->d()F

    move-result v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_1

    invoke-virtual {v7}, Lka1;->d()F

    move-result v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lka1;->d()F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    invoke-virtual {v4}, Lka1;->d()F

    move-result v4

    add-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    iget v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->k:I

    int-to-float v3, v3

    const/high16 v6, 0x43b40000    # 360.0f

    div-float/2addr v3, v6

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->j:I

    int-to-float v4, v4

    const/high16 v7, 0x42b40000    # 90.0f

    add-float/2addr v4, v7

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v3

    if-lez v6, :cond_4

    sub-float/2addr v4, v3

    goto :goto_2

    :cond_3
    const/high16 v4, -0x40800000    # -1.0f

    :cond_4
    aput v4, v2, v1

    move v1, v5

    goto :goto_0

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->m:[F

    array-length v1, p1

    if-ge v0, v1, :cond_9

    aget p1, p1, v0

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_8

    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lka1;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->m:[F

    aget v2, v2, v0

    iget-boolean p1, p1, Lka1;->m:Z

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const-string p0, "Drawing bounds can not be null or empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->f:I

    iput p2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->g:I

    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->d()V

    return-void
.end method

.method public setHorizGravity(Lcom/hookedonplay/decoviewlib/DecoView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->d:Lcom/hookedonplay/decoviewlib/DecoView$c;

    return-void
.end method

.method public setVertGravity(Lcom/hookedonplay/decoviewlib/DecoView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->c:Lcom/hookedonplay/decoviewlib/DecoView$d;

    return-void
.end method
