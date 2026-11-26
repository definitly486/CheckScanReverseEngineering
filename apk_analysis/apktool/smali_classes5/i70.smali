.class public final Li70;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lj70;",
        "Lcom/warefly/checkscan/databinding/ItemRvBalanceTitleWithButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V
    .locals 1

    sget-object v0, Lg70;->c:Lg70;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Li70;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lj70;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceTitleWithButtonBinding;

    check-cast p2, Lj70;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceTitleWithButtonBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p2, Lj70;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceTitleWithButtonBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p2, Lj70;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceTitleWithButtonBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceTitleWithButtonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lh70;

    invoke-direct {v1, p0}, Lh70;-><init>(Li70;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
