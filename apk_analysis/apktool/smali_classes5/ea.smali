.class public final synthetic Lea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw08;
.implements Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnPreparedListener;
.implements Lem3;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Lyads/tt3;
.implements Lyads/ni0;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lea;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lea;->b:Ljava/lang/Object;

    check-cast p0, Ldm3;

    invoke-static {p0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->h(Ldm3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public c(Loz7$a;)V
    .locals 5

    iget-object p0, p0, Lea;->b:Ljava/lang/Object;

    check-cast p0, La57;

    iget-object v0, p0, La57;->a:Lz47;

    iget v0, v0, Lz47;->e:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 p0, 0x194

    if-eq v0, p0, :cond_1

    const/16 p0, 0x1a6

    if-eq v0, p0, :cond_0

    sget-object p0, Lbh6$b;->a:Lbh6$b;

    invoke-virtual {p1, p0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Lbh6$e;->a:Lbh6$e;

    invoke-virtual {p1, p0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p0, Lbh6$d;->a:Lbh6$d;

    invoke-virtual {p1, p0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p0, p0, La57;->b:Ljava/lang/Object;

    check-cast p0, Lah6;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lah6;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lah6;->c()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lah6;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v0, Lbh6$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lah6;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lbh6$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    sget-object v0, Lj59;->a:Lj59;

    :cond_3
    if-nez v0, :cond_5

    sget-object p0, Lbh6$b;->a:Lbh6$b;

    invoke-virtual {p1, p0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lbh6$c;

    invoke-virtual {p0}, Lah6;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lbh6$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    sget-object v0, Lj59;->a:Lj59;

    :cond_6
    if-nez v0, :cond_7

    sget-object p0, Lbh6$b;->a:Lbh6$b;

    invoke-virtual {p1, p0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public invoke(D)D
    .locals 0

    .line 10
    iget-object p0, p0, Lea;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->h(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lea;->b:Ljava/lang/Object;

    check-cast p0, Lyads/yn0;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/bq2;->a(Lyads/yn0;Lyads/iw4;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/common/Timeline;)V
    .locals 0

    iget-object p0, p0, Lea;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/MetadataRetrieverInternal;->a(Landroidx/media3/exoplayer/MetadataRetrieverInternal;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/common/Timeline;)V

    return-void
.end method
