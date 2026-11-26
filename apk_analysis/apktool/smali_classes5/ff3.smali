.class public final Lff3;
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
.field public final synthetic b:Lhd3;

.field public final synthetic c:Lhd3;

.field public final synthetic d:Ldm3;


# direct methods
.method public constructor <init>(Lhd3;Lhd3;Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lff3;->b:Lhd3;

    iput-object p2, p0, Lff3;->c:Lhd3;

    iput-object p3, p0, Lff3;->d:Ldm3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 7
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

    const/4 v0, 0x2

    new-array v2, v0, [Lhd3;

    const/4 v0, 0x0

    iget-object v1, p0, Lff3;->b:Lhd3;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lff3;->c:Lhd3;

    aput-object v1, v2, v0

    new-instance v4, Lgf3;

    iget-object p0, p0, Lff3;->d:Ldm3;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lgf3;-><init>(Ldm3;Le02;)V

    new-instance v1, Lco1;

    const/4 v6, 0x0

    sget-object v3, Lhf3;->b:Lhf3;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lco1;-><init>([Lhd3;Lll3;Ldm3;Lid3;Le02;)V

    new-instance p0, Lld3;

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Laf7;-><init>(Le02;Lo22;)V

    invoke-static {p0, v0, p0, v1}, Lcn1;->d(Laf7;ZLjava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
