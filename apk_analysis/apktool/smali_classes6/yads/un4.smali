.class public final Lyads/un4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lyads/rn4;

.field public static volatile e:Lyads/un4;


# instance fields
.field public final a:Lyads/vl5;

.field public final b:Lyads/hl2;

.field public final c:Lyads/r46;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/rn4;

    invoke-direct {v0}, Lyads/rn4;-><init>()V

    sput-object v0, Lyads/un4;->d:Lyads/rn4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lyads/zb3;

    invoke-direct {v0}, Lyads/zb3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1400

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v4, v3

    float-to-int v3, v4

    div-int/lit8 v2, v2, 0x8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :catch_0
    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-instance v2, Lyads/tn4;

    invoke-direct {v2, v1}, Lyads/tn4;-><init>(I)V

    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_3

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_2

    new-instance v3, Lyads/zg5;

    invoke-direct {v3}, Lyads/zg5;-><init>()V

    sput-object v3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v1

    move-object v1, v3

    goto :goto_4

    :goto_3
    monitor-exit v1

    throw p0

    :cond_3
    :goto_4
    invoke-virtual {v1, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v1, Lyads/fe5;->w0:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_5
    const/4 v1, 0x4

    :goto_6
    invoke-static {p1, v1}, Lyads/f85;->a(Landroid/content/Context;I)Lyads/e85;

    move-result-object v1

    invoke-virtual {v1}, Lyads/e85;->a()V

    new-instance v3, Lyads/sn4;

    invoke-direct {v3, v2}, Lyads/sn4;-><init>(Lyads/tn4;)V

    new-instance v4, Lyads/r46;

    invoke-direct {v4, v2, v0}, Lyads/r46;-><init>(Lyads/tn4;Lyads/zb3;)V

    iput-object v4, p0, Lyads/un4;->c:Lyads/r46;

    new-instance v2, Lyads/vl5;

    invoke-direct {v2, v1, v3, v0}, Lyads/vl5;-><init>(Lyads/e85;Lyads/sn4;Lyads/zb3;)V

    iput-object v2, p0, Lyads/un4;->a:Lyads/vl5;

    new-instance v0, Lyads/hl2;

    new-instance v3, Lyads/xk2;

    invoke-direct {v3}, Lyads/xk2;-><init>()V

    invoke-direct {v0, v1, p1, v3}, Lyads/hl2;-><init>(Lyads/e85;Landroid/content/Context;Lyads/xk2;)V

    iput-object v0, p0, Lyads/un4;->b:Lyads/hl2;

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-boolean p0, p0, Lyads/fe5;->Z0:Z

    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    const/4 p0, 0x0

    iput p0, v2, Lyads/zc3;->b:I

    :cond_6
    return-void
.end method
