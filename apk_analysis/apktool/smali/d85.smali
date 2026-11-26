.class public final synthetic Ld85;
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

    iput p1, p0, Ld85;->b:I

    iput-object p2, p0, Ld85;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld85;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ld85;->b:I

    iget-object v1, p0, Ld85;->d:Ljava/lang/Object;

    iget-object p0, p0, Ld85;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    check-cast v1, Ly22;

    invoke-static {p0, v1}, Landroidx/compose/foundation/pager/PagerKt;->d(Landroidx/compose/foundation/pager/PagerState;Ly22;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;

    check-cast v1, Landroid/media/MediaFormat;

    invoke-static {p0, v1}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->c(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;Landroid/media/MediaFormat;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
