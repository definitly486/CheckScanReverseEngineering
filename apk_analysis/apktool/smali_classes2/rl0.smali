.class public final synthetic Lrl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;


# instance fields
.field public final synthetic b:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;)V
    .locals 0

    iput-object p1, p0, Lrl0;->b:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrl0;->b:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public invoke(D)D
    .locals 0

    iget-object p0, p0, Lrl0;->b:Lnl3;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->g(Lnl3;D)D

    move-result-wide p0

    return-wide p0
.end method
