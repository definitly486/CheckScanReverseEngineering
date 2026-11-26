.class public final Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/databinding/FragmentRebindCardBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Lze4;
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
.field public final c:Lgl4;

.field public presenter:Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentRebindCardBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;->d:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d00e8

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentRebindCardBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;->c:Lgl4;

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;->d:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;->c:Lgl4;

    invoke-virtual {p2, p0, p1}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/FragmentRebindCardBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentRebindCardBinding;->btnClose:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog$a;-><init>(Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentRebindCardBinding;->btnRebind:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog$b;-><init>(Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardDialog;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final openCustomTab(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Lp51;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp51;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;-><init>(Lp51;)V

    return-object v0
.end method
