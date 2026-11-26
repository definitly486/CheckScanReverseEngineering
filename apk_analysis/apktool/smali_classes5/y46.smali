.class public final Ly46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld76;


# instance fields
.field public final a:Lp61;

.field public final b:Lbx5;

.field public final c:Ltq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltq5<",
            "Ldu4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp61;Lbx5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly46;->a:Lp61;

    iput-object p2, p0, Ly46;->b:Lbx5;

    iget-object p1, p1, Lp61;->h:Lfh8;

    invoke-virtual {p1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltq5;

    iput-object p1, p0, Ly46;->c:Ltq5;

    return-void
.end method


# virtual methods
.method public final a()Lp08;
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Ly46;->a:Lp61;

    invoke-virtual {p0, v0}, Lp61;->a(Ldu4;)Lp08;

    move-result-object p0

    new-instance v0, Lq3;

    const/4 v1, 0x3

    sget-object v2, Lx46;->g:Lx46;

    invoke-direct {v0, v2, v1}, Lq3;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lp08;

    invoke-direct {v1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v1
.end method

.method public final b()V
    .locals 3

    iget-object p0, p0, Ly46;->b:Lbx5;

    iget-object v0, p0, Lbx5;->c:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lbx5;->b:Lz68;

    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_0
    return-void
.end method

.method public final c()Ltq5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltq5<",
            "Ldu4;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ly46;->c:Ltq5;

    return-object p0
.end method
