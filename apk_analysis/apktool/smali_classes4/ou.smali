.class public final synthetic Lou;
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

    iput p2, p0, Lou;->b:I

    iput-object p1, p0, Lou;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lou;->b:I

    iget-object p0, p0, Lou;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wn;

    invoke-static {p0}, Lyads/wn;->a(Lyads/wn;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/v15;

    invoke-virtual {p0}, Lyads/v15;->f()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/my/target/x0;

    invoke-virtual {p0}, Lcom/my/target/x0;->b()V

    return-void

    :pswitch_2
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroid/view/View;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource;

    invoke-static {p0}, Landroidx/camera/video/internal/audio/AudioSource;->g(Landroidx/camera/video/internal/audio/AudioSource;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
