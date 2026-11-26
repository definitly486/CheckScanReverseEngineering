.class public final Lx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V
    .locals 0

    iput p2, p0, Lx8;->b:I

    iput-object p1, p0, Lx8;->c:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method private final c(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method private final d(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget p0, p0, Lx8;->b:I

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p0, p0, Lx8;->b:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p2, p0, Lx8;->b:I

    iget-object p0, p0, Lx8;->c:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    packed-switch p2, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->o()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->onDescriptionChanged(Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->onEmailChanged(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
