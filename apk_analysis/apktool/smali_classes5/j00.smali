.class public final synthetic Lj00;
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

    iput p2, p0, Lj00;->b:I

    iput-object p1, p0, Lj00;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lj00;->b:I

    iget-object p0, p0, Lj00;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/bp5;

    invoke-virtual {p0}, Lyads/bp5;->a()V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderCallback;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/EncoderCallback;->onEncodeStart()V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->a(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_2
    check-cast p0, Lk00;

    iget-object v0, p0, Lk00;->e:Lch8$c;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lch8$c;->a:Lch8$b;

    iget-boolean v2, v1, Lch8$b;->d:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lch8$b;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lch8$c;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lk00;->d:Lw33;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
