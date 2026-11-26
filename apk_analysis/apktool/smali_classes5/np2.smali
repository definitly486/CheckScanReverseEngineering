.class public final Lnp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhd3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhd3;Lnl3;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "+TT;>;",
            "Lnl3<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lbm3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp2;->b:Lhd3;

    iput-object p2, p0, Lnp2;->c:Lnl3;

    iput-object p3, p0, Lnp2;->d:Lbm3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    sget-object v1, Laq5;->b:Lbh8;

    iput-object v1, v0, Lr07;->b:Ljava/lang/Object;

    new-instance v1, Lnp2$a;

    invoke-direct {v1, p0, v0, p1}, Lnp2$a;-><init>(Lnp2;Lr07;Lid3;)V

    iget-object p0, p0, Lnp2;->b:Lhd3;

    invoke-interface {p0, v1, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
