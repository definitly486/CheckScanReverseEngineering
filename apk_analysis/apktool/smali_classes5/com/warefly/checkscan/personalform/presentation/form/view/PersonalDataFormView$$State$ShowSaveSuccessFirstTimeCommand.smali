.class public Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State$ShowSaveSuccessFirstTimeCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSaveSuccessFirstTimeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;",
        ">;"
    }
.end annotation


# instance fields
.field public final personalDataSuccess:Lu66;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State;Lu66;)V
    .locals 1

    const-string p1, "showSaveSuccessFirstTime"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State$ShowSaveSuccessFirstTimeCommand;->personalDataSuccess:Lu66;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State$ShowSaveSuccessFirstTimeCommand;->personalDataSuccess:Lu66;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;->showSaveSuccessFirstTime(Lu66;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State$ShowSaveSuccessFirstTimeCommand;->apply(Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;)V

    return-void
.end method
