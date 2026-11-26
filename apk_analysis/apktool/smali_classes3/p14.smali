.class public final synthetic Lp14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lp14;->b:I

    iput-object p1, p0, Lp14;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lp14;->b:I

    iget-object p0, p0, Lp14;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/animation/core/Transition;

    invoke-static {p0}, Landroidx/compose/animation/core/Transition;->c(Landroidx/compose/animation/core/Transition;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->b(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)Landroid/os/Handler;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/ScrollState;

    invoke-static {p0}, Landroidx/compose/foundation/ScrollState;->a(Landroidx/compose/foundation/ScrollState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lnb6;

    new-instance v0, Lwd6;

    invoke-direct {v0, p0}, Lwd6;-><init>(Lnb6;)V

    return-object v0

    :pswitch_3
    check-cast p0, Lr14$a;

    new-instance v0, Lo95$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lr14$a;->a:Landroid/content/Context;

    const-wide v1, 0x3fc999999999999aL    # 0.2

    :try_start_0
    const-class v3, Landroid/app/ActivityManager;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const-wide v1, 0x3fc3333333333333L    # 0.15

    :catch_0
    :cond_0
    const-wide/16 v3, 0x0

    cmpg-double v3, v3, v1

    const/4 v4, 0x0

    if-gtz v3, :cond_2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v5

    if-gtz v3, :cond_2

    new-instance v3, Ln95;

    invoke-direct {v3, v1, v2, p0}, Ln95;-><init>(DLandroid/content/Context;)V

    iput-object v3, v0, Lo95$a;->a:Ln95;

    new-instance p0, Llz6;

    invoke-direct {p0}, Llz6;-><init>()V

    iget-object v0, v0, Lo95$a;->a:Ln95;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln95;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance v2, Ljz6;

    invoke-direct {v2, v0, v1, p0}, Ljz6;-><init>(JLrf9;)V

    new-instance v4, Lgz6;

    invoke-direct {v4, v2, p0}, Lgz6;-><init>(Lab8;Lrf9;)V

    goto :goto_0

    :cond_1
    const-string p0, "maxSizeBytesFactory == null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "percent must be in the range [0.0, 1.0]."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :goto_0
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
