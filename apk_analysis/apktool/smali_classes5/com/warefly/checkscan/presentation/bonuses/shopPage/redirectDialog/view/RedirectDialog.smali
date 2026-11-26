.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew<",
        "Lcom/warefly/checkscan/databinding/DialogRedirectBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;"
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
.field public final c:Lsy8;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lbn2;

.field public g:Landroid/os/CountDownTimer;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsy8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->c:Lsy8;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->e:Ljava/lang/String;

    new-instance p1, Lbn2;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    invoke-direct {p1, p2, p0}, Lbn2;-><init>(Ljava/lang/Class;Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->f:Lbn2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->h:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->f:Lbn2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lbn2;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    return-object p0
.end method

.method public final c()Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->presenter:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final copyShortLink(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/content/ClipboardManager;

    const v1, 0x7f140600

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p1, 0x7f140206

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final hidePreview()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->g:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvDescriptionInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinuePhone:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinueComputer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvOr:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnCloseDialog:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final openGoToLinkInBrowser(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const v2, 0x7f14016a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p1, 0x7f14016b

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final openGoToLinkInCustomTabs(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->g:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;
    .locals 4

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    instance-of v1, p0, Log4;

    const-class v2, Lx9;

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
    check-cast v1, Lx9;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->c:Lsy8;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;-><init>(Lsy8;Lx9;)V

    return-object v0
.end method

.method public final setApp()V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f14055b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Luk7;

    new-instance v3, Ll07;

    invoke-direct {v3, p0, v1}, Ll07;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;Landroid/content/Context;)V

    new-instance v1, Ljy4;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, Ljy4;-><init>(Ljava/lang/Object;I)V

    const/4 v4, 0x5

    invoke-direct {v2, v4, v3, v1}, Luk7;-><init>(ILnl3;Lll3;)V

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->g:Landroid/os/CountDownTimer;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinuePhone:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140551

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$b;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvOr:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinueComputer:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f140552

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;)V

    invoke-direct {v1, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setDesktop()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f14055c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvDescriptionInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140556

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinuePhone:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140552

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setMobile()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f14055c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvDescriptionInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140555

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinuePhone:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140551

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final shareShortLink(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1405fe

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final showCouldntLoadShortLink()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinueComputer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f140205

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final showLoadingShortLink(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->progressBar:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showShortLink(Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinuePhone:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080102

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0604a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnContinuePhone:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvOr:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvTvExpirationLink:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvLinkDescription:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvLink:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvLink:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnCopy:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$f;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->btnShare:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$g;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
