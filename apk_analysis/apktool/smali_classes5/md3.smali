.class public final Lmd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ldm3;


# direct methods
.method public constructor <init>(Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd3;->b:Ldm3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lnd3;

    iget-object p0, p0, Lmd3;->b:Ldm3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnd3;-><init>(Ldm3;Lid3;Le02;)V

    new-instance p0, Lld3;

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Laf7;-><init>(Le02;Lo22;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, p0, v0}, Lcn1;->d(Laf7;ZLjava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
