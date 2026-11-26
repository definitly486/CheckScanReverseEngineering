.class public final synthetic Lj76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj76;->b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    sget-object p3, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->j:[Lze4;

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    iget-object p0, p0, Lj76;->b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lle9;->b(Landroid/view/View;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
