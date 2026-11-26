.class public final Lyads/v8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Lyads/am0;
    .locals 1

    sget-object p0, Lyads/zg5;->l:Lyads/zg5;

    if-nez p0, :cond_1

    sget-object p0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    move-object p0, v0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lyads/fe5;->M:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    new-instance p1, Lyads/am0;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, p0}, Lyads/am0;-><init>(IFI)V

    return-object p1
.end method
