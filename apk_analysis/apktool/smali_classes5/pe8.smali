.class public final synthetic Lpe8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpe8;->b:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->j:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$a;

    iget-object p0, p0, Lpe8;->b:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->o()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->onBackClicked()V

    return-void
.end method
