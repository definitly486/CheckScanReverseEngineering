.class public final Lkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsl<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ldl;

.field public final b:Ldl;


# direct methods
.method public constructor <init>(Ldl;Ldl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl;->a:Ldl;

    iput-object p2, p0, Lkl;->b:Ldl;

    return-void
.end method


# virtual methods
.method public final a()Lld0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lld0<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh68;

    iget-object v1, p0, Lkl;->a:Ldl;

    invoke-virtual {v1}, Ldl;->p()Ltc3;

    move-result-object v1

    iget-object p0, p0, Lkl;->b:Ldl;

    invoke-virtual {p0}, Ldl;->p()Ltc3;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh68;-><init>(Ltc3;Ltc3;)V

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvf4<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lkl;->a:Ldl;

    invoke-virtual {v0}, Lu1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkl;->b:Ldl;

    invoke-virtual {p0}, Lu1;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
