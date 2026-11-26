.class public final Lyads/q94;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lyads/p94;
    .locals 3

    new-instance v0, Lyads/l2;

    invoke-direct {v0}, Lyads/l2;-><init>()V

    new-instance v1, Lyads/cu4;

    new-instance v1, Lyads/mg;

    invoke-direct {v1, p0}, Lyads/mg;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p0}, Lyads/l2;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lyads/vm3; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    invoke-static {p0}, Lyads/cu4;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Lyads/vm3; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v2

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lyads/mg;->a()V
    :try_end_2
    .catch Lyads/vm3; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    filled-new-array {v0, p0, v2}, [Lyads/vm3;

    move-result-object p0

    invoke-static {p0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lyads/o94;

    invoke-direct {v0, p0}, Lyads/o94;-><init>(Ljava/util/List;)V

    goto :goto_3

    :cond_0
    sget-object v0, Lyads/n94;->a:Lyads/n94;

    :goto_3
    return-object v0
.end method
