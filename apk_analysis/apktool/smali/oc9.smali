.class public final Loc9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;)V
    .locals 0

    iput-object p1, p0, Loc9;->f:Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Loc9;->f:Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->o()Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->onSendCodeAgainAgainClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
