.class public final Lpw8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpw8$a;,
        Lpw8$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lqw8;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Low8;->c:Low8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lpw8;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lqw8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;

    check-cast p2, Lqw8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    new-instance v0, Lpw8$a;

    iget v1, p2, Lqw8;->a:I

    iget-object v2, p2, Lqw8;->d:Lsq0;

    iget-object v3, p2, Lqw8;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lpw8$a;-><init>(ILsq0;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p2, Lqw8;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lnw8;

    invoke-direct {v1, p1, p0}, Lnw8;-><init>(Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithButtonBinding;Lpw8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
