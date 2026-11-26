.class public final synthetic Low0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;
.implements Landroidx/arch/core/util/Function;
.implements Lxl3;
.implements Landroidx/camera/core/ImageCapture$ScreenFlashListener;
.implements Lyads/lq;
.implements Lyads/tt3;
.implements Lyads/ut4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Low0;->b:I

    iput-object p1, p0, Low0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lts5;Lms5;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Low0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Low0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Low0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lyads/c62;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 9
    iget-object p0, p0, Low0;->c:Ljava/lang/Object;

    check-cast p0, Lyads/ub6;

    invoke-static {p0}, Lyads/ub6;->a(Lyads/ub6;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Low0;->b:I

    iget-object p0, p0, Low0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lms5;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1a2

    invoke-static {p1}, Lts5;->d(Ljava/lang/String;)Lc57;

    move-result-object p1

    invoke-static {v0, p1}, La57;->a(ILc57;)La57;

    move-result-object p1

    invoke-static {p0, p1}, Lts5;->b(Lms5;La57;)Lus5;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/paging/ItemKeyedDataSource;->g(Lnl3;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Low0;->c:Ljava/lang/Object;

    check-cast p0, Lyads/bw4;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/eq2;->g(Lyads/bw4;Lyads/iw4;)V

    return-void
.end method

.method public onCompleted()V
    .locals 0

    iget-object p0, p0, Low0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/internal/ScreenFlashWrapper;

    invoke-static {p0}, Landroidx/camera/core/internal/ScreenFlashWrapper;->a(Landroidx/camera/core/internal/ScreenFlashWrapper;)V

    return-void
.end method

.method public resolve(Landroid/net/Uri;)[B
    .locals 0

    iget-object p0, p0, Low0;->c:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {p0, p1}, Landroidx/media3/datasource/ByteArrayDataSource;->b([BLandroid/net/Uri;)[B

    move-result-object p0

    return-object p0
.end method
