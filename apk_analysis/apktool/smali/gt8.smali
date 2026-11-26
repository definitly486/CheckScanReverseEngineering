.class public final synthetic Lgt8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lgt8;->b:I

    iput-object p2, p0, Lgt8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgt8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lgt8;->b:I

    iget-object v1, p0, Lgt8;->d:Ljava/lang/Object;

    iget-object p0, p0, Lgt8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/hi0;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {p0, v1}, Lyads/hi0;->a(Lyads/hi0;Landroid/graphics/Bitmap;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    check-cast v1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->a(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
