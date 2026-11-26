.class public final Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ltc5;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
            "TVB;>;"
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
            "TVB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$b;->f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Ltc5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$b;->f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CICERONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lba8;

    invoke-direct {v4, v0}, Lba8;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcg4;->Singleton:Lcg4;

    new-instance v1, Lgi0;

    const-class v0, Llj1;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    sget-object v6, Lbf7;->e:Lba8;

    sget-object v5, Lcom/warefly/checkscan/core/ui/base/architecture/b;->f:Lcom/warefly/checkscan/core/ui/base/architecture/b;

    move-object v2, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    move-object v6, v2

    new-instance v0, Lm08;

    invoke-direct {v0, v1}, Ld64;-><init>(Lgi0;)V

    invoke-virtual {p1, v0}, Ltc5;->a(Ld64;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->n()Lba8;

    move-result-object v8

    new-instance v9, Lcom/warefly/checkscan/core/ui/base/architecture/c;

    invoke-direct {v9, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/c;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;)V

    new-instance v5, Lgi0;

    const-class v0, Luf3;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-direct/range {v5 .. v10}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    new-instance v0, Lm08;

    invoke-direct {v0, v5}, Ld64;-><init>(Lgi0;)V

    invoke-virtual {p1, v0}, Ltc5;->a(Ld64;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAVIGATOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lba8;

    invoke-direct {v8, v0}, Lba8;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/warefly/checkscan/core/ui/base/architecture/d;

    invoke-direct {v9, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/d;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;)V

    new-instance v5, Lgi0;

    const-class p0, Lam5;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-direct/range {v5 .. v10}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v5, p1}, Lu4;->d(Lgi0;Ltc5;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
