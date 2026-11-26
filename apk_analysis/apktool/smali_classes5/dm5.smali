.class public final synthetic Ldm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lem5;

.field public final synthetic c:I

.field public final synthetic d:Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;

.field public final synthetic e:Lr07;


# direct methods
.method public synthetic constructor <init>(Lem5;ILcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;Lr07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm5;->b:Lem5;

    iput p2, p0, Ldm5;->c:I

    iput-object p3, p0, Ldm5;->d:Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;

    iput-object p4, p0, Ldm5;->e:Lr07;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Ldm5;->b:Lem5;

    iget-object v0, p1, Lem5;->i:Ljava/util/List;

    iget-object v1, p1, Lem5;->u:Lnl3;

    iget-object v2, p1, Lem5;->t:Lnl3;

    iget v3, p0, Ldm5;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg81;

    iget-boolean v4, v4, Lg81;->b:Z

    iget-object v5, p1, Lem5;->v:Lnl3;

    iget-object v6, p0, Ldm5;->d:Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;

    iget-object p0, p0, Ldm5;->e:Lr07;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v4, :cond_3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg81;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lg81;->b:Z

    iget-object v4, v6, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->cbCategory:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-array v4, v5, [Lg81;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lu96;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lem5;

    if-eqz p0, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg81;

    iget-object p1, p1, Lg81;->a:Lf81;

    invoke-virtual {p1}, Lf81;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf81;

    new-instance v5, Lg81;

    invoke-direct {v5, v4}, Lg81;-><init>(Lf81;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg81;

    iget-object p0, p0, Lg81;->a:Lf81;

    invoke-virtual {p0}, Lf81;->c()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg81;

    iget-object p0, p0, Lg81;->a:Lf81;

    invoke-interface {v2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg81;

    iput-boolean v8, v3, Lg81;->b:Z

    iget-object v3, v6, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->cbCategory:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lem5;

    if-eqz p0, :cond_4

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    :cond_4
    invoke-interface {v2, v7}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
