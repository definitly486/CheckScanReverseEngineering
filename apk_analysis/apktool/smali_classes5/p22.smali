.class public final synthetic Lp22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lr07;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp22;->b:Lr07;

    iput-boolean p2, p0, Lp22;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lo22;

    check-cast p2, Lo22$a;

    instance-of v0, p2, Ln02;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lp22;->b:Lr07;

    iget-object v1, v0, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Lo22;

    invoke-interface {p2}, Lo22$a;->getKey()Lo22$b;

    move-result-object v2

    invoke-interface {v1, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v1

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lp22;->c:Z

    if-eqz p0, :cond_1

    check-cast p2, Ln02;

    invoke-interface {p2}, Ln02;->o()Ln02;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p2

    check-cast p0, Ln02;

    :goto_0
    invoke-interface {p1, p0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lo22;

    invoke-interface {p2}, Lo22$a;->getKey()Lo22$b;

    move-result-object v1

    invoke-interface {p0, v1}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p0

    iput-object p0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast p2, Ln02;

    invoke-interface {p2}, Ln02;->Q()Lo22;

    move-result-object p0

    invoke-interface {p1, p0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method
