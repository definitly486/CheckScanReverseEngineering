.class public final synthetic Ls77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Lyads/ci4;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ls77;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyads/dh4;)Z
    .locals 0

    iget-object p0, p0, Ls77;->b:Ljava/lang/Object;

    check-cast p0, Lyads/ae4;

    invoke-static {p0, p1}, Lyads/ae4;->d(Lyads/ae4;Lyads/dh4;)Z

    move-result p0

    return p0
.end method

.method public invoke(D)D
    .locals 0

    .line 10
    iget-object p0, p0, Ls77;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->e(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ls77;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/bq2;->a(Ljava/util/List;Lyads/iw4;)V

    return-void
.end method
