.class public final synthetic Lns3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lks3;

.field public final synthetic c:Lls3$c;


# direct methods
.method public synthetic constructor <init>(Lks3;Lls3$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lns3;->b:Lks3;

    iput-object p2, p0, Lns3;->c:Lls3$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lns3;->c:Lls3$c;

    iget-object p1, p1, Lls3$c;->l:Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;

    iget-object p0, p0, Lns3;->b:Lks3;

    iget-boolean v0, p0, Lks3;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lks3;->c:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->rvSubcategories:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->ivShowSubcats:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->tvGroupName:Landroid/widget/TextView;

    const v0, 0x7f060029

    invoke-static {p1, v0}, Loz1;->a(Landroidx/viewbinding/ViewBinding;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lks3;->c:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->rvSubcategories:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->ivShowSubcats:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->tvGroupName:Landroid/widget/TextView;

    const v0, 0x7f0604a3

    invoke-static {p1, v0}, Loz1;->a(Landroidx/viewbinding/ViewBinding;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
