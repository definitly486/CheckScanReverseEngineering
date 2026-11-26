.class public final Lrp9;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Lzu;


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lrp9;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrp9;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls95;

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/my/target/d;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/my/target/d;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lrp9;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls95;

    invoke-virtual {p2, p1}, Lcom/my/target/d;->setData(Ls95;)V

    new-instance p3, Llp9;

    invoke-direct {p3, p0, p1}, Llp9;-><init>(Lrp9;Ls95;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
