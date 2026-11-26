.class public final Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->showPoll(Lz96;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lz96$a;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Ljava/util/List<",
            "Lz96$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic h:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

.field public final synthetic i:Lz96;


# direct methods
.method public constructor <init>(Lr07;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Lz96;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Ljava/util/List<",
            "Lz96$a;",
            ">;>;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;",
            "Lz96;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;->f:Lr07;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;->g:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;->h:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;->i:Lz96;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lz96$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;->f:Lr07;

    iget-object v1, v0, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz96$a;

    iput-boolean v3, v2, Lz96$a;->d:Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lz96$a;

    iget-object v2, v2, Lz96$a;->c:Ljava/lang/String;

    iget-object v4, p1, Lz96$a;->c:Ljava/lang/String;

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move-object v9, v1

    check-cast v9, Lz96$a;

    if-eqz v9, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, v9, Lz96$a;->d:Z

    sget-object p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    iget-object v8, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;->h:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {v8}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p1

    iget-object v7, p1, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->viewPoll:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    iget-object v6, v7, Lcom/warefly/checkscan/databinding/ItemPollBinding;->btnComplete:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Llb7;

    new-instance v4, Luh1;

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;->i:Lz96;

    invoke-direct/range {v4 .. v9}, Luh1;-><init>(Lz96;Landroid/widget/TextView;Lcom/warefly/checkscan/databinding/ItemPollBinding;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Lz96$a;)V

    invoke-direct {p1, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
