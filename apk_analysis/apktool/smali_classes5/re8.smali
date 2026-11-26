.class public final Lre8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lre8;->b:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lre8;->b:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->o()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->onEmailChanged(Ljava/lang/String;)V

    return-void
.end method
