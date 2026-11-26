.class public Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView$$State$ShowPromocodeSuccessBottomSheetCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowPromocodeSuccessBottomSheetCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;",
        ">;"
    }
.end annotation


# instance fields
.field public final success:Lq6;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView$$State;Lq6;)V
    .locals 1

    const-string p1, "showPromocodeSuccessBottomSheet"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView$$State$ShowPromocodeSuccessBottomSheetCommand;->success:Lq6;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView$$State$ShowPromocodeSuccessBottomSheetCommand;->success:Lq6;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showPromocodeSuccessBottomSheet(Lq6;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView$$State$ShowPromocodeSuccessBottomSheetCommand;->apply(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;)V

    return-void
.end method
