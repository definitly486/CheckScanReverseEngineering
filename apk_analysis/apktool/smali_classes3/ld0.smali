.class public abstract Lld0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lld0$c;,
        Lld0$a;,
        Lld0$b;,
        Lld0$e;,
        Lld0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Lld0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld0$c<",
            "TK;>;"
        }
    .end annotation
.end field

.field public d:F

.field public e:Lby4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lby4<",
            "TA;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lvf4<",
            "TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lld0;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lld0;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lld0;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Lld0;->f:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lld0;->g:F

    iput v0, p0, Lld0;->h:F

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lld0$b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lld0$e;

    invoke-direct {v0, p1}, Lld0$e;-><init>(Ljava/util/List;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lld0$d;

    invoke-direct {v0, p1}, Lld0$d;-><init>(Ljava/util/List;)V

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lld0;->c:Lld0$c;

    return-void
.end method


# virtual methods
.method public final a(Lld0$a;)V
    .locals 0

    iget-object p0, p0, Lld0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lvf4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvf4<",
            "TK;>;"
        }
    .end annotation

    sget-object v0, Lah4;->a:Ldt;

    iget-object p0, p0, Lld0;->c:Lld0$c;

    invoke-interface {p0}, Lld0$c;->a()Lvf4;

    move-result-object p0

    return-object p0
.end method

.method public c()F
    .locals 2

    iget v0, p0, Lld0;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lld0;->c:Lld0$c;

    invoke-interface {v0}, Lld0$c;->e()F

    move-result v0

    iput v0, p0, Lld0;->h:F

    :cond_0
    return v0
.end method

.method public final d()F
    .locals 2

    invoke-virtual {p0}, Lld0;->b()Lvf4;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lvf4;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lvf4;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lld0;->e()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()F
    .locals 2

    iget-boolean v0, p0, Lld0;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lld0;->b()Lvf4;

    move-result-object v0

    invoke-virtual {v0}, Lvf4;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p0, Lld0;->d:F

    invoke-virtual {v0}, Lvf4;->b()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, Lvf4;->a()F

    move-result v1

    invoke-virtual {v0}, Lvf4;->b()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public f()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lld0;->e()F

    move-result v0

    iget-object v1, p0, Lld0;->e:Lby4;

    if-nez v1, :cond_0

    iget-object v1, p0, Lld0;->c:Lld0$c;

    invoke-interface {v1, v0}, Lld0$c;->c(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lld0;->l()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lld0;->f:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lld0;->b()Lvf4;

    move-result-object v1

    iget-object v2, v1, Lvf4;->e:Landroid/view/animation/Interpolator;

    iget-object v3, v1, Lvf4;->f:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lld0;->h(Lvf4;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lld0;->d()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lld0;->g(Lvf4;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lld0;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract g(Lvf4;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvf4<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public h(Lvf4;FFF)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvf4<",
            "TK;>;FFF)TA;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This animation does not support split dimensions!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i()V
    .locals 3

    sget-object v0, Lah4;->a:Ldt;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lld0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld0$a;

    invoke-interface {v1}, Lld0$a;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lah4;->a:Ldt;

    return-void
.end method

.method public j(F)V
    .locals 4

    sget-object v0, Lah4;->a:Ldt;

    iget-object v0, p0, Lld0;->c:Lld0$c;

    invoke-interface {v0}, Lld0$c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lld0;->g:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    invoke-interface {v0}, Lld0$c;->b()F

    move-result v1

    iput v1, p0, Lld0;->g:F

    :cond_1
    move v3, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    cmpl-float p1, v3, v2

    if-nez p1, :cond_2

    invoke-interface {v0}, Lld0$c;->b()F

    move-result p1

    iput p1, p0, Lld0;->g:F

    goto :goto_0

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lld0;->c()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lld0;->c()F

    move-result p1

    :cond_4
    :goto_0
    iget v1, p0, Lld0;->d:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iput p1, p0, Lld0;->d:F

    invoke-interface {v0, p1}, Lld0$c;->d(F)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lld0;->i()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final k(Lby4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lby4<",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lld0;->e:Lby4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iput-object p1, p0, Lld0;->e:Lby4;

    return-void
.end method

.method public l()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
