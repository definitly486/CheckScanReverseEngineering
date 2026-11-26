.class public final Lb62;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V
    .locals 0

    iput-object p1, p0, Lb62;->b:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lb62;->b:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->o()Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->editNumberClick()V

    return-void
.end method
