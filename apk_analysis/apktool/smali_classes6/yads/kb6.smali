.class public final Lyads/kb6;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/mb6;


# direct methods
.method public constructor <init>(Lyads/mb6;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/kb6;->b:Lyads/mb6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/kb6;

    iget-object p0, p0, Lyads/kb6;->b:Lyads/mb6;

    invoke-direct {p1, p0, p2}, Lyads/kb6;-><init>(Lyads/mb6;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/cc6;

    check-cast p2, Le02;

    new-instance p1, Lyads/kb6;

    iget-object p0, p0, Lyads/kb6;->b:Lyads/mb6;

    invoke-direct {p1, p0, p2}, Lyads/kb6;-><init>(Lyads/mb6;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/kb6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/kb6;->b:Lyads/mb6;

    iget-object p0, p0, Lyads/mb6;->a:Lyads/ec6;

    sget-object p1, Lyads/cc6;->d:Lyads/cc6;

    iget-object p0, p0, Lyads/ec6;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
