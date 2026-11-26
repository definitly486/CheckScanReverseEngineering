.class public final Lrr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll46;
.implements Lld0$a;
.implements Lpf4;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lox4;

.field public final e:Lyr7;

.field public f:Z

.field public final g:Lpu1;


# direct methods
.method public constructor <init>(Lox4;Lnd0;Lbs7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lrr7;->a:Landroid/graphics/Path;

    new-instance v0, Lpu1;

    invoke-direct {v0}, Lpu1;-><init>()V

    iput-object v0, p0, Lrr7;->g:Lpu1;

    iget-object v0, p3, Lbs7;->a:Ljava/lang/String;

    iput-object v0, p0, Lrr7;->b:Ljava/lang/String;

    iget-boolean v0, p3, Lbs7;->d:Z

    iput-boolean v0, p0, Lrr7;->c:Z

    iput-object p1, p0, Lrr7;->d:Lox4;

    iget-object p1, p3, Lbs7;->c:Ljl;

    new-instance p3, Lyr7;

    iget-object p1, p1, Lu1;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p3, p1}, Lyr7;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lrr7;->e:Lyr7;

    invoke-virtual {p2, p3}, Lnd0;->c(Lld0;)V

    invoke-virtual {p3, p0}, Lld0;->a(Lld0$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lnf4;ILjava/util/ArrayList;Lnf4;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lhb5;->g(Lnf4;ILjava/util/ArrayList;Lnf4;Lpf4;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrr7;->f:Z

    iget-object p0, p0, Lrr7;->d:Lox4;

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    return-void
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsx1;",
            ">;",
            "Ljava/util/List<",
            "Lsx1;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsx1;

    instance-of v2, v1, Lj39;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lj39;

    iget-object v3, v2, Lj39;->c:Lfs7$a;

    sget-object v4, Lfs7$a;->SIMULTANEOUSLY:Lfs7$a;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lrr7;->g:Lpu1;

    iget-object v1, v1, Lpu1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, Lj39;->a(Lld0$a;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Las7;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Las7;

    invoke-interface {v1, p0}, Las7;->h(Lrr7;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lrr7;->e:Lyr7;

    iput-object p2, p0, Lyr7;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrr7;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 4

    iget-boolean v0, p0, Lrr7;->f:Z

    iget-object v1, p0, Lrr7;->e:Lyr7;

    iget-object v2, p0, Lrr7;->a:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lld0;->e:Lby4;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lrr7;->c:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lrr7;->f:Z

    return-object v2

    :cond_2
    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lrr7;->g:Lpu1;

    invoke-virtual {v0, v2}, Lpu1;->a(Landroid/graphics/Path;)V

    iput-boolean v3, p0, Lrr7;->f:Z

    return-object v2
.end method

.method public final i(Lby4;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lvx4;->N:Landroid/graphics/Path;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lrr7;->e:Lyr7;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    :cond_0
    return-void
.end method
