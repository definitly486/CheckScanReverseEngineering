.class public final synthetic Leq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/warefly/checkscan/ui/DoneDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/warefly/checkscan/ui/DoneDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leq2;->b:Ljava/lang/String;

    iput-object p2, p0, Leq2;->c:Lcom/warefly/checkscan/ui/DoneDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/warefly/checkscan/ui/DoneDialog;->d:Lcom/warefly/checkscan/ui/DoneDialog$a;

    iget-object p1, p0, Leq2;->b:Ljava/lang/String;

    iget-object p0, p0, Leq2;->c:Lcom/warefly/checkscan/ui/DoneDialog;

    if-eqz p1, :cond_0

    new-instance p1, Lb36;

    const-string v0, "DONE_DIALOG_REQUEST_KEY"

    invoke-direct {p1, v0, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
