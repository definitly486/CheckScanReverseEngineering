.class public final Lyads/so1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bo2;


# direct methods
.method public constructor <init>(Lyads/bo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/so1;->a:Lyads/bo2;

    return-void
.end method

.method public static final a(Lyads/so1;Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4}, Lyads/so1;->a(Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V

    .line 233
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/h12;Lyads/fs2;)Ljava/lang/String;
    .locals 2

    .line 226
    iget-object v0, p0, Lyads/h12;->b:Lyads/as2;

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lyads/g12;->c:Lyads/f12;

    iget-object p0, p0, Lyads/h12;->a:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g12;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/f12;->a(Lyads/g12;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/x02;)Lyads/h12;
    .locals 1

    .line 246
    instance-of v0, p0, Lyads/w02;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/w02;

    .line 247
    iget-object p0, p0, Lyads/w02;->a:Lyads/ej2;

    .line 248
    iget-object p0, p0, Lyads/ej2;->b:Lyads/h12;

    return-object p0

    .line 249
    :cond_0
    instance-of v0, p0, Lyads/v02;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/v02;

    .line 250
    iget-object p0, p0, Lyads/v02;->a:Lyads/pp1;

    .line 251
    iget-object p0, p0, Lyads/pp1;->a:Lyads/h12;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V
    .locals 7

    invoke-interface {p1}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v0

    invoke-interface {p1}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-string v1, "height"

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lyads/so1;->a(Lyads/x02;Ljava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/ao2;)V

    invoke-interface {p1}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2, p3, v4, v0}, Lyads/jf2;->a(Lyads/x02;Landroid/util/DisplayMetrics;Lyads/fs2;Landroid/view/ViewGroup$LayoutParams;)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move p2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of v2, p3, Lyads/ro1;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast p3, Lyads/ro1;

    goto :goto_1

    :cond_1
    move-object p3, v3

    :goto_1
    if-nez p3, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v2

    instance-of v5, v2, Lyads/v02;

    if-eqz v5, :cond_3

    check-cast v2, Lyads/v02;

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, v2, Lyads/v02;->a:Lyads/pp1;

    iget-object v2, v2, Lyads/pp1;->c:Lyads/as2;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    double-to-float v2, v5

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget v5, p3, Lyads/ro1;->c:F

    cmpg-float v5, v5, v2

    if-nez v5, :cond_6

    :goto_4
    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    move p2, v1

    goto :goto_6

    :cond_6
    iput v2, p3, Lyads/ro1;->c:F

    :goto_5
    move p2, v0

    :goto_6
    invoke-interface {p1}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object p3

    invoke-static {p3}, Lyads/so1;->b(Lyads/x02;)Lyads/h12;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p3, v2, v4}, Lyads/uq;->a(Lyads/h12;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result p3

    goto :goto_7

    :cond_7
    move p3, v1

    :goto_7
    invoke-interface {p1}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v2

    invoke-static {v2}, Lyads/so1;->a(Lyads/x02;)Lyads/h12;

    move-result-object v2

    const v5, 0x7fffffff

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lyads/uq;->a(Lyads/h12;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v5

    :goto_8
    if-le p3, v2, :cond_9

    move p3, v1

    goto :goto_9

    :cond_9
    move v5, v2

    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    if-eq v2, p3, :cond_a

    invoke-virtual {p0, p3}, Landroid/view/View;->setMinimumHeight(I)V

    move v1, v0

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of v2, p3, Lyads/ro1;

    if-eqz v2, :cond_b

    move-object v3, p3

    check-cast v3, Lyads/ro1;

    :cond_b
    if-nez v3, :cond_c

    goto :goto_a

    :cond_c
    iget p3, v3, Lyads/ro1;->g:I

    if-eq p3, v5, :cond_d

    iput v5, v3, Lyads/ro1;->g:I

    goto :goto_b

    :cond_d
    :goto_a
    move v0, v1

    :goto_b
    if-nez v0, :cond_f

    if-eqz p2, :cond_e

    goto :goto_c

    :cond_e
    return-void

    :cond_f
    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-static {p0, p1, v4}, Lyads/tq;->a(Landroid/view/View;Lyads/p41;Lyads/fs2;)V

    return-void
.end method

.method public static a(Lyads/x02;Ljava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/ao2;)V
    .locals 2

    .line 234
    invoke-static {p0}, Lyads/so1;->b(Lyads/x02;)Lyads/h12;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {p0}, Lyads/so1;->a(Lyads/x02;)Lyads/h12;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    invoke-static {v0, p3, p4}, Lyads/uq;->a(Lyads/h12;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v1

    .line 237
    invoke-static {p0, p3, p4}, Lyads/uq;->a(Lyads/h12;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result p3

    if-gt v1, p3, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 238
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Id: \'%s\', "

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, ""

    .line 239
    :goto_1
    invoke-static {v0, p4}, Lyads/so1;->a(Lyads/h12;Lyads/fs2;)Ljava/lang/String;

    move-result-object p3

    .line 240
    invoke-static {p0, p4}, Lyads/so1;->a(Lyads/h12;Lyads/fs2;)Ljava/lang/String;

    move-result-object p0

    .line 241
    filled-new-array {p1, p2, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Element has incorrect %s constraints (min size is bigger than max size). %sminSize: %s, maxSize: %s."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 242
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 243
    iget-object p0, p5, Lyads/ao2;->b:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p5}, Lyads/ao2;->a()V

    return-void
.end method

.method public static final b(Lyads/so1;Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4}, Lyads/so1;->b(Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V

    .line 227
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static b(Lyads/x02;)Lyads/h12;
    .locals 1

    .line 233
    instance-of v0, p0, Lyads/w02;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/w02;

    .line 234
    iget-object p0, p0, Lyads/w02;->a:Lyads/ej2;

    .line 235
    iget-object p0, p0, Lyads/ej2;->c:Lyads/h12;

    return-object p0

    .line 236
    :cond_0
    instance-of v0, p0, Lyads/v02;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/v02;

    .line 237
    iget-object p0, p0, Lyads/v02;->a:Lyads/pp1;

    .line 238
    iget-object p0, p0, Lyads/pp1;->b:Lyads/h12;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V
    .locals 7

    invoke-interface {p1}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v0

    invoke-interface {p1}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-string v1, "width"

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lyads/so1;->a(Lyads/x02;Ljava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/ao2;)V

    invoke-interface {p1}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2, p3, v4, v0}, Lyads/jf2;->a(Lyads/x02;Landroid/util/DisplayMetrics;Lyads/fs2;Landroid/view/ViewGroup$LayoutParams;)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move p2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of v2, p3, Lyads/ro1;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast p3, Lyads/ro1;

    goto :goto_1

    :cond_1
    move-object p3, v3

    :goto_1
    if-nez p3, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v2

    instance-of v5, v2, Lyads/v02;

    if-eqz v5, :cond_3

    check-cast v2, Lyads/v02;

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, v2, Lyads/v02;->a:Lyads/pp1;

    iget-object v2, v2, Lyads/pp1;->c:Lyads/as2;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    double-to-float v2, v5

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget v5, p3, Lyads/ro1;->d:F

    cmpg-float v5, v5, v2

    if-nez v5, :cond_6

    :goto_4
    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    move p2, v1

    goto :goto_6

    :cond_6
    iput v2, p3, Lyads/ro1;->d:F

    :goto_5
    move p2, v0

    :goto_6
    invoke-interface {p1}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object p3

    invoke-static {p3}, Lyads/so1;->b(Lyads/x02;)Lyads/h12;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p3, v2, v4}, Lyads/uq;->a(Lyads/h12;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result p3

    goto :goto_7

    :cond_7
    move p3, v1

    :goto_7
    invoke-interface {p1}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v2

    invoke-static {v2}, Lyads/so1;->a(Lyads/x02;)Lyads/h12;

    move-result-object v2

    const v5, 0x7fffffff

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lyads/uq;->a(Lyads/h12;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v5

    :goto_8
    if-le p3, v2, :cond_9

    move p3, v1

    goto :goto_9

    :cond_9
    move v5, v2

    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v2

    if-eq v2, p3, :cond_a

    invoke-virtual {p0, p3}, Landroid/view/View;->setMinimumWidth(I)V

    move v1, v0

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of v2, p3, Lyads/ro1;

    if-eqz v2, :cond_b

    move-object v3, p3

    check-cast v3, Lyads/ro1;

    :cond_b
    if-nez v3, :cond_c

    goto :goto_a

    :cond_c
    iget p3, v3, Lyads/ro1;->h:I

    if-eq p3, v5, :cond_d

    iput v5, v3, Lyads/ro1;->h:I

    goto :goto_b

    :cond_d
    :goto_a
    move v0, v1

    :goto_b
    if-nez v0, :cond_f

    if-eqz p2, :cond_e

    goto :goto_c

    :cond_e
    return-void

    :cond_f
    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-static {p0, p1, v4}, Lyads/tq;->a(Landroid/view/View;Lyads/p41;Lyads/fs2;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/p41;Lyads/p41;Lyads/fs2;Lyads/hs2;Lyads/ao2;)V
    .locals 7

    .line 227
    invoke-interface {p2}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lyads/gb1;->a(Lyads/x02;Lyads/x02;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {p2}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v0

    invoke-interface {p2}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-string v1, "height"

    move-object v4, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lyads/so1;->a(Lyads/x02;Ljava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/ao2;)V

    return-void

    .line 229
    :cond_1
    invoke-static {p1, p2, p4, p6}, Lyads/so1;->a(Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V

    .line 230
    invoke-interface {p2}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v0

    invoke-static {v0}, Lyads/gb1;->a(Lyads/x02;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 231
    :cond_2
    invoke-interface {p2}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v6

    new-instance v0, Lm8a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lm8a;-><init>(Lyads/so1;Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V

    move-object v1, v0

    invoke-static {p5, v6, p4, v1}, Lyads/js2;->a(Lyads/hs2;Lyads/x02;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public final b(Landroid/view/View;Lyads/p41;Lyads/p41;Lyads/fs2;Lyads/hs2;Lyads/ao2;)V
    .locals 7

    .line 228
    invoke-interface {p2}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lyads/gb1;->a(Lyads/x02;Lyads/x02;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-interface {p2}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v0

    invoke-interface {p2}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-string v1, "width"

    move-object v4, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lyads/so1;->a(Lyads/x02;Ljava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/ao2;)V

    return-void

    .line 230
    :cond_1
    invoke-static {p1, p2, p4, p6}, Lyads/so1;->b(Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V

    .line 231
    invoke-interface {p2}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v0

    invoke-static {v0}, Lyads/gb1;->a(Lyads/x02;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 232
    :cond_2
    invoke-interface {p2}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v6

    new-instance v0, Ln8a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ln8a;-><init>(Lyads/so1;Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V

    move-object v1, v0

    invoke-static {p5, v6, p4, v1}, Lyads/js2;->a(Lyads/hs2;Lyads/x02;Lyads/fs2;Lnl3;)V

    return-void
.end method
