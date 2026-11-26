.class public final Lyads/ys3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/ct3;


# direct methods
.method public constructor <init>(Lyads/ct3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ys3;->b:Lyads/ct3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/ys3;

    iget-object p0, p0, Lyads/ys3;->b:Lyads/ct3;

    invoke-direct {p1, p0, p2}, Lyads/ys3;-><init>(Lyads/ct3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/ys3;

    iget-object p0, p0, Lyads/ys3;->b:Lyads/ct3;

    invoke-direct {p1, p0, p2}, Lyads/ys3;-><init>(Lyads/ct3;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/ys3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/ys3;->b:Lyads/ct3;

    iget-object p0, p0, Lyads/ct3;->b:Lyads/zu3;

    check-cast p0, Lyads/av3;

    const-string p1, "LightBundleScriptUrl"

    invoke-virtual {p0, p1}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
