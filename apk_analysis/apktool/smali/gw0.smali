.class public final Lgw0;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lkw0;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvButtonsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Leu1;


# direct methods
.method public constructor <init>(Leu1;)V
    .locals 1

    sget-object v0, Lgw0$a;->c:Lgw0$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lgw0;->b:Leu1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkw0;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvButtonsBinding;

    check-cast p2, Lkw0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lgw0;->b:Leu1;

    iget-object p1, p2, Lkw0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvButtonsBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvButtonsBinding;->rvButtons:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lgw0;->b:Leu1;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
