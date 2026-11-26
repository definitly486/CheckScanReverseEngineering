.class public final synthetic Lsb4$g;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsb4;->p()Lvl7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

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
.field public static final c:Lsb4$g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lsb4$g;

    const-string v4, "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lsb4;

    const-string v3, "registerSelectForOnJoin"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lsb4$g;->c:Lsb4$g;

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

    if-nez p3, :cond_1

    sget-object p0, Lj59;->a:Lj59;

    invoke-interface {p2, p0}, Lbm7;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lsb4;->g0(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    new-instance p0, Lsb4$e;

    invoke-direct {p0, p1, p2}, Lsb4$e;-><init>(Lsb4;Lbm7;)V

    invoke-static {p1, p0}, Lqb4;->g(Lmb4;Lrb4;)Lhp2;

    move-result-object p0

    invoke-interface {p2, p0}, Lbm7;->c(Lhp2;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
