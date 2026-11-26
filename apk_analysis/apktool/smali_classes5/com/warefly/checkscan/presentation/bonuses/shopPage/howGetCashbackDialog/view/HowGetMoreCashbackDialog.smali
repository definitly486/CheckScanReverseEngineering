.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lze4;
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
.field public final d:Lr31;

.field public final e:J

.field public final f:Lud9;

.field public g:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr31;J)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->d:Lr31;

    iput-wide p3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->e:J

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->h:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->f:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->e()Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;->tvDialogHeader:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->d:Lr31;

    iget-object v2, v1, Lr31;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, v1, Lr31;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->e()Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Li50;

    sget-object v2, Lgx3;->c:Lgx3;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Li50;-><init>(Ldm3;I)V

    new-array v2, v3, [Lil2;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Leu1;-><init>([Lil2;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->g:Leu1;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Lc58;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lc58;-><init>(I)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;

    instance-of v1, p0, Log4;

    const-class v2, Ls47;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Log4;

    invoke-interface {v1}, Log4;->getScope()Lze7;

    move-result-object v1

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object v1

    iget-object v1, v1, Lhg4;->c:Lbf7;

    iget-object v1, v1, Lbf7;->d:Lze7;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ls47;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->d:Lr31;

    iget-object v2, v2, Lr31;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->e:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;-><init>(Ls47;Ljava/lang/String;J)V

    return-object v0
.end method

.method public final setTitles(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->e()Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhx3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackDialog;->g:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
