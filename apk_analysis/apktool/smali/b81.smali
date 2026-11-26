.class public final Lb81;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ll81;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, La81;->c:La81;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lb81;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ll81;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;

    check-cast p2, Ll81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    iget v0, p2, Ll81;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Ll81;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;->ivPlaceholder:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Ll81;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh37;->P(Lqs2;)Lh37;

    move-result-object p0

    invoke-virtual {p0}, Lee0;->i()Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;->ivPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lz71;

    invoke-direct {v1, p0, p1}, Lz71;-><init>(Lb81;Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
