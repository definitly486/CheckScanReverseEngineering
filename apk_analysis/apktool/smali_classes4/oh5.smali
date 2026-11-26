.class public final synthetic Loh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Loh5;->b:I

    iput-object p1, p0, Loh5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Loh5;->b:I

    iget-object p0, p0, Loh5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/c3;

    iget-object v0, p0, Lcom/my/target/c3;->n:Lcom/my/target/c3$a;

    sget-object v1, Lcom/my/target/c3$a;->a:Lcom/my/target/c3$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/my/target/c3$a;->b:Lcom/my/target/c3$a;

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/my/target/c3;->o:J

    const-wide/16 v2, 0xc8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/my/target/c3;->o:J

    :cond_1
    iget-wide v0, p0, Lcom/my/target/c3;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/my/target/c3;->m()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/my/target/c3;->n()V

    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Lyads/wn;

    invoke-static {p0}, Lyads/wn;->d(Lyads/wn;)V

    return-void

    :pswitch_1
    check-cast p0, Lyads/v15;

    invoke-virtual {p0}, Lyads/v15;->e()V

    return-void

    :pswitch_2
    check-cast p0, Lyads/o25;

    invoke-static {p0}, Lyads/o25;->b(Lyads/o25;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/my/target/common/MyTargetContentProvider;

    sget v0, Lcom/my/target/common/MyTargetContentProvider;->c:I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.my.target.autoInitMode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "Start autoinitialization"

    invoke-static {v0}, Ly14;->t(Ljava/lang/String;)V

    invoke-static {p0}, Lrh5;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Autoinitialization failed - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly14;->t(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
