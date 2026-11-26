.class public final synthetic Lnh;
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

    iput p2, p0, Lnh;->b:I

    iput-object p1, p0, Lnh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lnh;->b:I

    iget-object p0, p0, Lnh;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/z1;

    iget v0, p0, Lcom/my/target/z1;->h:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/my/target/z1;->t:J

    const-wide/16 v2, 0xc8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/my/target/z1;->t:J

    :cond_1
    iget-wide v0, p0, Lcom/my/target/z1;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/my/target/z1;->t()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/my/target/z1;->w()V

    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->a(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;)V

    return-void

    :pswitch_1
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->a(Lll3;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
