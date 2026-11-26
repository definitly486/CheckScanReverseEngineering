.class public final Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/update/presenter/UpdateView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentUpdateAppBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/update/presenter/UpdateView;"
    }
.end annotation


# static fields
.field public static final synthetic m:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final j:I

.field public final k:Lol4;

.field public final l:Lcl4;

.field public presenter:Lcom/warefly/checkscan/presentation/update/presenter/UpdatePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentUpdateAppBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;->m:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    const v0, 0x7f0d0100

    iput v0, p0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;->j:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentUpdateAppBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;->k:Lol4;

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$c;-><init>(Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;->l:Lcl4;

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0xf

    invoke-static {v0, p1, p0}, Loi9;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;->j:I

    return p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;->m:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;->k:Lol4;

    invoke-virtual {p2, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/FragmentUpdateAppBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentUpdateAppBinding;->btnUpdate:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$a;-><init>(Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentUpdateAppBinding;->btnFeedback:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment$b;-><init>(Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final openFeedback()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lqx6;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final openMarketUrl()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/update/view/UpdateFragment;->l:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt79;

    invoke-interface {p0, v0}, Lt79;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/update/presenter/UpdatePresenter;
    .locals 0

    new-instance p0, Lcom/warefly/checkscan/presentation/update/presenter/UpdatePresenter;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/update/presenter/UpdatePresenter;-><init>()V

    return-object p0
.end method
