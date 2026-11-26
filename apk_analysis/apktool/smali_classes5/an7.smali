.class public final synthetic Lan7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Len7;

.field public final synthetic c:Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;

.field public final synthetic d:Lzn7;


# direct methods
.method public synthetic constructor <init>(Len7;Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;Lzn7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lan7;->b:Len7;

    iput-object p2, p0, Lan7;->c:Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;

    iput-object p3, p0, Lan7;->d:Lzn7;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lan7;->d:Lzn7;

    iget p1, p1, Lzn7;->a:I

    iget-object v0, p0, Lan7;->c:Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->groupCollapse:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v3

    iget-object v4, v0, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->btnCollapse:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v3

    const v4, 0x7f08020b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v3

    iget-object v4, v0, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->btnCollapse:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lh37;->L(Landroid/widget/ImageView;)V

    :goto_1
    iget-object v0, v0, Lcom/warefly/checkscan/products/databinding/ItemSelectionBinding;->groupCollapse:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p0, p0, Lan7;->b:Len7;

    iget-object p0, p0, Len7;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
