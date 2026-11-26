.class public final Lcom/warefly/checkscan/util/InfoDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew<",
        "Lcom/warefly/checkscan/databinding/DialogTextBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:[Lze4;
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
.field public final c:Ljava/lang/String;

.field public final d:Lbn2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/util/InfoDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogTextBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/util/InfoDialog;->e:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/warefly/checkscan/util/InfoDialog;->c:Ljava/lang/String;

    new-instance p1, Lbn2;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogTextBinding;

    invoke-direct {p1, p2, p0}, Lbn2;-><init>(Ljava/lang/Class;Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;)V

    iput-object p1, p0, Lcom/warefly/checkscan/util/InfoDialog;->d:Lbn2;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0096

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    sget-object p1, Lcom/warefly/checkscan/util/InfoDialog;->e:[Lze4;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/warefly/checkscan/util/InfoDialog;->d:Lbn2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lbn2;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/warefly/checkscan/databinding/DialogTextBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/DialogTextBinding;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/util/InfoDialog$a;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/util/InfoDialog$a;-><init>(Lcom/warefly/checkscan/util/InfoDialog;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object p1, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lbn2;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogTextBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogTextBinding;->tvText:Landroid/widget/TextView;

    sget v0, Lsx3;->a:I

    iget-object p0, p0, Lcom/warefly/checkscan/util/InfoDialog;->c:Ljava/lang/String;

    invoke-static {p0}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lx61;->a:Lx61;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
