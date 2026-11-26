.class public final Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic f:Lq6$a;

.field public final synthetic g:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;


# direct methods
.method public constructor <init>(Lq6$a;Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$a;->f:Lq6$a;

    iput-object p2, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$a;->g:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$a;->f:Lq6$a;

    iget-object p1, p1, Lq6$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$a;->g:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->openUrl(Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->d:Z

    if-eqz p1, :cond_1

    sget-object p1, Lkd$a$j$b;->e:Lkd$a$j$b;

    invoke-virtual {p1}, Lkd;->a()V

    goto :goto_0

    :cond_1
    sget-object p1, Lkd$a$f$b;->e:Lkd$a$f$b;

    invoke-virtual {p1}, Lkd;->a()V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
