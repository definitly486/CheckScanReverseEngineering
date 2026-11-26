.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->showInfo(Lsz8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/graphics/Bitmap;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$f;->f:Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$f;->g:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$f;->f:Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$f;->g:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    invoke-virtual {v3, p0, p0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, v3, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
