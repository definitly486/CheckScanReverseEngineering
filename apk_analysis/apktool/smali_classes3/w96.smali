.class public final Lw96;
.super Lwf4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwf4<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvf4<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lld0;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lw96;->i:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final g(Lvf4;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p2, p2}, Lw96;->m(Lvf4;FFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic h(Lvf4;FFF)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lw96;->m(Lvf4;FFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lvf4;FFF)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvf4<",
            "Landroid/graphics/PointF;",
            ">;FFF)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object v0, p1, Lvf4;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lvf4;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    move-object v5, v0

    check-cast v5, Landroid/graphics/PointF;

    move-object v6, v1

    check-cast v6, Landroid/graphics/PointF;

    iget-object v2, p0, Lld0;->e:Lby4;

    if-eqz v2, :cond_0

    iget v3, p1, Lvf4;->g:F

    iget-object p1, p1, Lvf4;->h:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Lld0;->e()F

    move-result v8

    iget v9, p0, Lld0;->d:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lby4;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget p1, v5, Landroid/graphics/PointF;->x:F

    iget p2, v6, Landroid/graphics/PointF;->x:F

    invoke-static {p2, p1, p3, p1}, Li8;->b(FFFF)F

    move-result p1

    iget p2, v5, Landroid/graphics/PointF;->y:F

    iget p3, v6, Landroid/graphics/PointF;->y:F

    invoke-static {p3, p2, p4, p2}, Li8;->b(FFFF)F

    move-result p2

    iget-object p0, p0, Lw96;->i:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p0

    :cond_1
    const-string p0, "Missing values for keyframe."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
