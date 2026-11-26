.class public final Lyads/ws;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/a04;

.field public final b:Lyads/iu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lyads/bo0;

    invoke-direct {v0}, Lyads/bo0;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lyads/bo0;->a(Landroid/content/Context;)Lyads/ao0;

    move-result-object p1

    sget-object v0, Lyads/ao0;->d:Lyads/ao0;

    if-ne v0, p1, :cond_0

    new-instance p1, Lyads/a04;

    const/16 v0, 0x438

    const/16 v1, 0x1a90

    const/16 v2, 0x780

    invoke-direct {p1, v2, v0, v1}, Lyads/a04;-><init>(III)V

    goto :goto_0

    :cond_0
    new-instance p1, Lyads/a04;

    const/16 v0, 0x1e0

    const/16 v1, 0x3e8

    const/16 v2, 0x356

    invoke-direct {p1, v2, v0, v1}, Lyads/a04;-><init>(III)V

    :goto_0
    new-instance v0, Lyads/iu;

    invoke-direct {v0, p1}, Lyads/iu;-><init>(Lyads/a04;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ws;->a:Lyads/a04;

    iput-object v0, p0, Lyads/ws;->b:Lyads/iu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lyads/zz3;
    .locals 13

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/zz3;

    iget-object v4, v3, Lyads/zz3;->d:Ljava/lang/String;

    const-string v5, "video/mp4"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_1

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    goto :goto_1

    :cond_1
    move-wide v7, v5

    :goto_1
    iget-object v4, p0, Lyads/ws;->b:Lyads/iu;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v3, Lyads/zz3;->i:I

    if-nez v9, :cond_2

    iget v9, v3, Lyads/zz3;->h:I

    iget v10, v3, Lyads/zz3;->g:I

    mul-int/2addr v9, v10

    iget-object v4, v4, Lyads/iu;->a:Lyads/a04;

    iget v10, v4, Lyads/a04;->a:I

    iget v11, v4, Lyads/a04;->b:I

    mul-int/2addr v10, v11

    int-to-float v9, v9

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v4, v4, Lyads/a04;->c:I

    int-to-float v4, v4

    mul-float/2addr v9, v4

    float-to-int v9, v9

    :cond_2
    iget-object v4, p0, Lyads/ws;->a:Lyads/a04;

    iget v4, v4, Lyads/a04;->c:I

    int-to-double v9, v9

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-int v9, v9

    const/16 v10, 0x64

    if-ge v9, v10, :cond_3

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    goto :goto_2

    :cond_3
    sub-int v9, v4, v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-int v9, v9

    int-to-double v9, v9

    int-to-double v11, v4

    div-double/2addr v9, v11

    :goto_2
    add-double/2addr v9, v5

    div-double v4, v7, v9

    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    move-object v2, v3

    move-wide v0, v4

    goto :goto_0

    :cond_4
    return-object v2
.end method
