.class public final Lcom/warefly/checkscan/core/ui/base/architecture/d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Lam5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
            "Landroidx/viewbinding/ViewBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
            "Landroidx/viewbinding/ViewBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/d;->f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/d;->f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CICERONE"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lba8;

    invoke-direct {p2, p0}, Lba8;-><init>(Ljava/lang/String;)V

    const-class p0, Llj1;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llj1;

    iget-object p0, p0, Llj1;->a:Lo87;

    iget-object p0, p0, Lo87;->a:Lto1;

    return-object p0
.end method
