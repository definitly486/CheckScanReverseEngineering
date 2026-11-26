.class public final Lo82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt82;
.implements Ls82$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt82;",
        "Ls82$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkf4;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmd2<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lt82$a;

.field public e:I

.field public f:Lkf4;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnc5<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public h:I

.field public volatile i:Lnc5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc5$a<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;Lmd2;Lt82$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkf4;",
            ">;",
            "Lmd2<",
            "*>;",
            "Lt82$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo82;->e:I

    iput-object p1, p0, Lo82;->b:Ljava/util/List;

    iput-object p2, p0, Lo82;->c:Lmd2;

    iput-object p3, p0, Lo82;->d:Lt82$a;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lo82;->g:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, p0, Lo82;->h:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lo82;->i:Lnc5$a;

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget v0, p0, Lo82;->h:I

    iget-object v3, p0, Lo82;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lo82;->g:Ljava/util/List;

    iget v3, p0, Lo82;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lo82;->h:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnc5;

    iget-object v3, p0, Lo82;->j:Ljava/io/File;

    iget-object v4, p0, Lo82;->c:Lmd2;

    iget v5, v4, Lmd2;->e:I

    iget v6, v4, Lmd2;->f:I

    iget-object v4, v4, Lmd2;->i:Lxz5;

    invoke-interface {v0, v3, v5, v6, v4}, Lnc5;->a(Ljava/lang/Object;IILxz5;)Lnc5$a;

    move-result-object v0

    iput-object v0, p0, Lo82;->i:Lnc5$a;

    iget-object v0, p0, Lo82;->i:Lnc5$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo82;->c:Lmd2;

    iget-object v3, p0, Lo82;->i:Lnc5$a;

    iget-object v3, v3, Lnc5$a;->c:Ls82;

    invoke-interface {v3}, Ls82;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmd2;->c(Ljava/lang/Class;)Lgs4;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo82;->i:Lnc5$a;

    iget-object v0, v0, Lnc5$a;->c:Ls82;

    iget-object v2, p0, Lo82;->c:Lmd2;

    iget-object v2, v2, Lmd2;->o:Ljg6;

    invoke-interface {v0, v2, p0}, Ls82;->f(Ljg6;Ls82$a;)V

    move v2, v1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    iget v0, p0, Lo82;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lo82;->e:I

    iget-object v1, p0, Lo82;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lo82;->b:Ljava/util/List;

    iget v1, p0, Lo82;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkf4;

    new-instance v1, Lp82;

    iget-object v3, p0, Lo82;->c:Lmd2;

    iget-object v4, v3, Lmd2;->n:Lkf4;

    invoke-direct {v1, v0, v4}, Lp82;-><init>(Lkf4;Lkf4;)V

    iget-object v3, v3, Lmd2;->h:Lod2$d;

    check-cast v3, Lkz2$c;

    invoke-virtual {v3}, Lkz2$c;->a()Lrn2;

    move-result-object v3

    invoke-interface {v3, v1}, Lrn2;->b(Lkf4;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lo82;->j:Ljava/io/File;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lo82;->f:Lkf4;

    iget-object v0, p0, Lo82;->c:Lmd2;

    iget-object v0, v0, Lmd2;->c:Lwq3;

    invoke-virtual {v0}, Lwq3;->a()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/Registry;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo82;->g:Ljava/util/List;

    iput v2, p0, Lo82;->h:I

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lo82;->i:Lnc5$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lnc5$a;->c:Ls82;

    invoke-interface {p0}, Ls82;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo82;->d:Lt82$a;

    iget-object v1, p0, Lo82;->f:Lkf4;

    iget-object v2, p0, Lo82;->i:Lnc5$a;

    iget-object v3, v2, Lnc5$a;->c:Ls82;

    sget-object v4, Ly82;->DATA_DISK_CACHE:Ly82;

    iget-object v5, p0, Lo82;->f:Lkf4;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lt82$a;->c(Lkf4;Ljava/lang/Object;Ls82;Ly82;Lkf4;)V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lo82;->d:Lt82$a;

    iget-object v1, p0, Lo82;->f:Lkf4;

    iget-object p0, p0, Lo82;->i:Lnc5$a;

    iget-object p0, p0, Lnc5$a;->c:Ls82;

    sget-object v2, Ly82;->DATA_DISK_CACHE:Ly82;

    invoke-interface {v0, v1, p1, p0, v2}, Lt82$a;->a(Lkf4;Ljava/lang/Exception;Ls82;Ly82;)V

    return-void
.end method
