.class public final Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;
.super Lcom/warefly/checkscan/ui/AutoCancellableDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/ui/AutoCancellableDialog<",
        "Lcom/warefly/checkscan/databinding/DialogDoneBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Lze4;
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
.field public final e:Z

.field public final f:Lbn2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogDoneBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/ui/AutoCancellableDialog;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;->e:Z

    new-instance p1, Lbn2;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogDoneBinding;

    invoke-direct {p1, p2, p0}, Lbn2;-><init>(Ljava/lang/Class;Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;->f:Lbn2;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/warefly/checkscan/ui/AutoCancellableDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;->f:Lbn2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lbn2;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogDoneBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogDoneBinding;->ivIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;->e:Z

    if-eqz v1, :cond_0

    const v2, 0x7f080216

    goto :goto_0

    :cond_0
    const v2, 0x7f0801fc

    :goto_0
    invoke-static {p1, v2}, Loz1;->b(Landroidx/viewbinding/ViewBinding;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogDoneBinding;->tvTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogDoneBinding;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v1, :cond_1

    const v0, 0x7f140294

    goto :goto_1

    :cond_1
    const v0, 0x7f140293

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
