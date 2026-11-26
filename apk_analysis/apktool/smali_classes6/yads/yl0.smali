.class public final Lyads/yl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/bf5;

.field public final c:Ly22;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yl0;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/yl0;->b:Lyads/bf5;

    iput-object p3, p0, Lyads/yl0;->c:Ly22;

    return-void
.end method

.method public static final a([Lbm3;Lyads/n8;)Lj59;
    .locals 1

    const/4 v0, 0x0

    .line 140
    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    sget-object v0, Lyads/g13;->d:Lyads/g13;

    invoke-interface {p0, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b([Lbm3;Lyads/n8;)Lj59;
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    sget-object v0, Lyads/g13;->e:Lyads/g13;

    invoke-interface {p0, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final c([Lbm3;Lyads/n8;)Lj59;
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    sget-object v0, Lyads/g13;->f:Lyads/g13;

    invoke-interface {p0, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a()Lyads/n13;
    .locals 12

    sget-object v0, Lyads/g1;->d:Lyads/g1;

    if-nez v0, :cond_1

    sget-object v1, Lyads/g1;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyads/g1;->d:Lyads/g1;

    if-nez v0, :cond_0

    new-instance v0, Lyads/g1;

    invoke-direct {v0}, Lyads/g1;-><init>()V

    sput-object v0, Lyads/g1;->d:Lyads/g1;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    sget-object v5, Lyads/g1;->d:Lyads/g1;

    const/4 v0, 0x0

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Lbm3;

    const/4 v8, 0x0

    aput-object v0, v1, v8

    sget-object v0, Lyads/g13;->d:Lyads/g13;

    new-instance v2, Lyads/vp3;

    iget-object v3, p0, Lyads/yl0;->a:Landroid/content/Context;

    iget-object v4, p0, Lyads/yl0;->b:Lyads/bf5;

    iget-object v6, p0, Lyads/yl0;->c:Ly22;

    new-instance v7, Lrh0;

    const/16 v9, 0x8

    invoke-direct {v7, v1, v9}, Lrh0;-><init>(Ljava/lang/Object;I)V

    invoke-direct/range {v2 .. v7}, Lyads/vp3;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/g1;Ly22;Lnl3;)V

    new-instance v9, Lb36;

    invoke-direct {v9, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/g13;->e:Lyads/g13;

    new-instance v2, Lyads/ya5;

    iget-object v3, p0, Lyads/yl0;->a:Landroid/content/Context;

    iget-object v4, p0, Lyads/yl0;->b:Lyads/bf5;

    iget-object v6, p0, Lyads/yl0;->c:Ly22;

    new-instance v7, Lv82;

    const/4 v10, 0x4

    invoke-direct {v7, v1, v10}, Lv82;-><init>(Ljava/lang/Object;I)V

    invoke-direct/range {v2 .. v7}, Lyads/ya5;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/g1;Ly22;Lnl3;)V

    new-instance v11, Lb36;

    invoke-direct {v11, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/g13;->f:Lyads/g13;

    new-instance v2, Lyads/ph;

    iget-object v3, p0, Lyads/yl0;->a:Landroid/content/Context;

    iget-object v4, p0, Lyads/yl0;->b:Lyads/bf5;

    iget-object v6, p0, Lyads/yl0;->c:Ly22;

    new-instance v7, Ldt0;

    invoke-direct {v7, v1, v10}, Ldt0;-><init>(Ljava/lang/Object;I)V

    invoke-direct/range {v2 .. v7}, Lyads/ph;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/g1;Ly22;Lnl3;)V

    new-instance v3, Lb36;

    invoke-direct {v3, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v9, v11, v3}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lyads/n13;

    iget-object p0, p0, Lyads/yl0;->c:Ly22;

    invoke-direct {v2, p0, v0}, Lyads/n13;-><init>(Ly22;Ljava/util/Map;)V

    new-instance p0, Lyads/xl0;

    invoke-direct {p0, v2}, Lyads/xl0;-><init>(Lyads/n13;)V

    aput-object p0, v1, v8

    return-object v2

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0
.end method
