.class public final Lnd7;
.super Lwf4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwf4<",
        "Lod7;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lod7;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvf4<",
            "Lod7;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lld0;-><init>(Ljava/util/List;)V

    new-instance p1, Lod7;

    invoke-direct {p1}, Lod7;-><init>()V

    iput-object p1, p0, Lnd7;->i:Lod7;

    return-void
.end method


# virtual methods
.method public final g(Lvf4;F)Ljava/lang/Object;
    .locals 10

    iget-object v0, p1, Lvf4;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lvf4;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    move-object v5, v0

    check-cast v5, Lod7;

    move-object v6, v1

    check-cast v6, Lod7;

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

    check-cast p1, Lod7;

    if-eqz p1, :cond_1

    return-object p1

    :cond_0
    move v7, p2

    :cond_1
    iget p1, v5, Lod7;->a:F

    iget p2, v6, Lod7;->a:F

    invoke-static {p1, p2, v7}, Lhb5;->f(FFF)F

    move-result p1

    iget p2, v5, Lod7;->b:F

    iget v0, v6, Lod7;->b:F

    invoke-static {p2, v0, v7}, Lhb5;->f(FFF)F

    move-result p2

    iget-object p0, p0, Lnd7;->i:Lod7;

    iput p1, p0, Lod7;->a:F

    iput p2, p0, Lod7;->b:F

    return-object p0

    :cond_2
    const-string p0, "Missing values for keyframe."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
