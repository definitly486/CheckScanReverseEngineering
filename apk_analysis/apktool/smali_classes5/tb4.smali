.class public final synthetic Ltb4;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Ldm3<",
        "Lsb4;",
        "Lbm7<",
        "*>;",
        "Ljava/lang/Object;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ltb4;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb4;

    const-string v4, "onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lsb4;

    const-string v3, "onAwaitInternalRegFunc"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ltb4;->c:Ltb4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lsb4;

    check-cast p2, Lbm7;

    sget p0, Lsb4;->d:I

    :cond_0
    invoke-virtual {p1}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    instance-of p3, p0, La44;

    if-nez p3, :cond_2

    instance-of p1, p0, Lyq1;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lvp2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-interface {p2, p0}, Lbm7;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lsb4;->g0(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    new-instance p0, Lsb4$d;

    invoke-direct {p0, p1, p2}, Lsb4$d;-><init>(Lsb4;Lbm7;)V

    invoke-static {p1, p0}, Lqb4;->g(Lmb4;Lrb4;)Lhp2;

    move-result-object p0

    invoke-interface {p2, p0}, Lbm7;->c(Lhp2;)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
