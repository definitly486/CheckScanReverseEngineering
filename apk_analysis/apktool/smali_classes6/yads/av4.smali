.class public final Lyads/av4;
.super Lyads/es;
.source "SourceFile"


# static fields
.field public static final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lyads/av4;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyads/ds;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lyads/es;-><init>(Landroid/content/Context;ILjava/lang/String;Lyads/ds;Lyads/w75;)V

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object p0

    invoke-virtual {p0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/fe5;->y0:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lyads/av4;->w:I

    :goto_0
    sget-object p1, Lyads/zg5;->l:Lyads/zg5;

    if-nez p1, :cond_2

    sget-object p1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lyads/zg5;->l:Lyads/zg5;

    if-nez p2, :cond_1

    new-instance p2, Lyads/zg5;

    invoke-direct {p2}, Lyads/zg5;-><init>()V

    sput-object p2, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p1

    move-object p1, p2

    goto :goto_3

    :goto_2
    monitor-exit p1

    throw p0

    :cond_2
    :goto_3
    invoke-virtual {p1, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lyads/fe5;->N:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    :goto_4
    new-instance p2, Lyads/am0;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p2, p0, p3, p1}, Lyads/am0;-><init>(IFI)V

    iput-object p2, v0, Lyads/r75;->o:Lyads/am0;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lyads/r75;->n:Z

    iput-boolean p0, v0, Lyads/r75;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/en4;)Lyads/z85;
    .locals 1

    invoke-static {p1}, Lyads/pa3;->a(Lyads/en4;)Lyads/wv;

    move-result-object p0

    new-instance v0, Lyads/z85;

    invoke-direct {v0, p1, p0}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V

    return-object v0
.end method
