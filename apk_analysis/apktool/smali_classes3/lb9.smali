.class public final synthetic Llb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Llb9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget p0, p0, Llb9;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/jx4;->a()Lyads/ix4;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Lqn2$a;

    invoke-direct {p0}, Lqn2$a;-><init>()V

    sget-object v0, Lw93;->c:Lj46;

    const-string v1, "coil3_disk_cache"

    invoke-virtual {v0, v1}, Lj46;->f(Ljava/lang/String;)Lj46;

    move-result-object v7

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lqn2$a;->b:D

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {v7}, Lj46;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v0, v4

    long-to-double v0, v0

    mul-double/2addr v2, v0

    double-to-long v8, v2

    iget-wide v10, p0, Lqn2$a;->c:J

    iget-wide v12, p0, Lqn2$a;->d:J

    invoke-static/range {v8 .. v13}, Lkx6;->h(JJJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-wide v0, p0, Lqn2$a;->c:J

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v2, Lqy6;

    iget-object v6, p0, Lqn2$a;->a:Lke4;

    iget-object v5, p0, Lqn2$a;->e:Lgx2;

    invoke-direct/range {v2 .. v7}, Lqy6;-><init>(JLo22;Lw93;Lj46;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
