.class public final Lyads/hp;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/pp;

.field public final synthetic c:Lyads/ef5;


# direct methods
.method public constructor <init>(Lyads/pp;Lyads/ef5;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/hp;->b:Lyads/pp;

    iput-object p2, p0, Lyads/hp;->c:Lyads/ef5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/hp;

    iget-object v0, p0, Lyads/hp;->b:Lyads/pp;

    iget-object p0, p0, Lyads/hp;->c:Lyads/ef5;

    invoke-direct {p1, v0, p0, p2}, Lyads/hp;-><init>(Lyads/pp;Lyads/ef5;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/hp;

    iget-object v0, p0, Lyads/hp;->b:Lyads/pp;

    iget-object p0, p0, Lyads/hp;->c:Lyads/ef5;

    invoke-direct {p1, v0, p0, p2}, Lyads/hp;-><init>(Lyads/pp;Lyads/ef5;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/hp;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/hp;->b:Lyads/pp;

    iget-object p0, p0, Lyads/hp;->c:Lyads/ef5;

    iget-object p0, p0, Lyads/ef5;->a:Lyads/m4;

    invoke-virtual {p1, p0}, Lyads/pp;->b(Lyads/m4;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
