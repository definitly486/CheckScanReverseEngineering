.class public final Lyads/lf5;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/rf5;


# direct methods
.method public constructor <init>(Lyads/rf5;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/lf5;->b:Lyads/rf5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/lf5;

    iget-object p0, p0, Lyads/lf5;->b:Lyads/rf5;

    invoke-direct {p1, p0, p2}, Lyads/lf5;-><init>(Lyads/rf5;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/lf5;

    iget-object p0, p0, Lyads/lf5;->b:Lyads/rf5;

    invoke-direct {p1, p0, p2}, Lyads/lf5;-><init>(Lyads/rf5;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/lf5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/lf5;->b:Lyads/rf5;

    iget-object p0, p0, Lyads/rf5;->h:Landroid/content/Context;

    const-string p1, "YadPreferenceFile"

    invoke-static {p0, p1}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object p0

    check-cast p0, Lyads/av3;

    iget-object p0, p0, Lyads/av3;->d:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
