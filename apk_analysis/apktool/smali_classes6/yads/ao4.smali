.class public final Lyads/ao4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/g64;


# direct methods
.method public constructor <init>(Lyads/l34;)V
    .locals 1

    new-instance v0, Lyads/g64;

    invoke-direct {v0, p1}, Lyads/g64;-><init>(Lyads/l34;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ao4;->a:Lyads/g64;

    return-void
.end method

.method public static final a(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Lf02;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p4, Lyads/vn4;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lyads/vn4;

    iget v1, v0, Lyads/vn4;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/vn4;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/vn4;

    invoke-direct {v0, p0, p4}, Lyads/vn4;-><init>(Lyads/ao4;Lf02;)V

    :goto_0
    iget-object p4, v0, Lyads/vn4;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/vn4;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance v5, Lyads/wn4;

    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lyads/wn4;-><init>(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Le02;)V

    iput v4, v0, Lyads/vn4;->d:I

    const-wide/16 p0, 0x3e8

    invoke-static {p0, p1, v5, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p4

    :catchall_0
    return-object v3

    :catch_0
    move-exception v0

    move-object p0, v0

    throw p0
.end method

.method public static a(II)V
    .locals 0

    .line 80
    return-void
.end method
