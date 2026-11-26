.class public final Lyads/op;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/pp;


# direct methods
.method public constructor <init>(Lyads/pp;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/op;->b:Lyads/pp;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/op;

    iget-object p0, p0, Lyads/op;->b:Lyads/pp;

    invoke-direct {p1, p0, p2}, Lyads/op;-><init>(Lyads/pp;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/op;

    iget-object p0, p0, Lyads/op;->b:Lyads/pp;

    invoke-direct {p1, p0, p2}, Lyads/op;-><init>(Lyads/pp;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/op;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/op;->b:Lyads/pp;

    sget-object p1, Lyads/o8;->f:Lyads/m4;

    invoke-virtual {p0, p1}, Lyads/pp;->b(Lyads/m4;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
