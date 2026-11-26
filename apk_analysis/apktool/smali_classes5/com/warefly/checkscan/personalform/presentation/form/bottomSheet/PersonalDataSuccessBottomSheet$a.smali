.class public final Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet$a;->f:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet$a;->f:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;

    iget-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->e:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$f;

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->d:Lu66;

    iget-object v0, v0, Lu66;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
