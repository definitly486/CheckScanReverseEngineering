.class public final Ldw0;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldw0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lew0;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Lcw0;->c:Lcw0;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ldw0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lew0;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;

    check-cast p2, Lew0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lbw0;

    invoke-direct {v1, p0, p1}, Lbw0;-><init>(Ldw0;Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
