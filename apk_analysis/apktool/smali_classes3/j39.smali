.class public final Lj39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsx1;
.implements Lld0$a;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:Lfs7$a;

.field public final d:Ltc3;

.field public final e:Ltc3;

.field public final f:Ltc3;


# direct methods
.method public constructor <init>(Lnd0;Lfs7;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj39;->b:Ljava/util/ArrayList;

    iget-boolean v0, p2, Lfs7;->e:Z

    iput-boolean v0, p0, Lj39;->a:Z

    iget-object v0, p2, Lfs7;->a:Lfs7$a;

    iput-object v0, p0, Lj39;->c:Lfs7$a;

    iget-object v0, p2, Lfs7;->b:Ldl;

    invoke-virtual {v0}, Ldl;->p()Ltc3;

    move-result-object v0

    iput-object v0, p0, Lj39;->d:Ltc3;

    iget-object v1, p2, Lfs7;->c:Ldl;

    invoke-virtual {v1}, Ldl;->p()Ltc3;

    move-result-object v1

    iput-object v1, p0, Lj39;->e:Ltc3;

    iget-object p2, p2, Lfs7;->d:Ldl;

    invoke-virtual {p2}, Ldl;->p()Ltc3;

    move-result-object p2

    iput-object p2, p0, Lj39;->f:Ltc3;

    invoke-virtual {p1, v0}, Lnd0;->c(Lld0;)V

    invoke-virtual {p1, v1}, Lnd0;->c(Lld0;)V

    invoke-virtual {p1, p2}, Lnd0;->c(Lld0;)V

    invoke-virtual {v0, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {v1, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lld0$a;)V
    .locals 0

    iget-object p0, p0, Lj39;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj39;->b:Ljava/util/ArrayList;

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
    return-void
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method
