.class public final Lcj6;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;)V
    .locals 0

    iput-object p1, p0, Lcj6;->a:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 0

    iget-object p0, p0, Lcj6;->a:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->h:Li58;

    if-eqz p0, :cond_0

    iget-object p0, p0, Li58;->i:Lm8;

    invoke-virtual {p0, p1}, Lm8;->e(I)Lpz3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p1, p0, Lcn;

    if-nez p1, :cond_2

    instance-of p0, p0, Lka3;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x2

    return p0
.end method
