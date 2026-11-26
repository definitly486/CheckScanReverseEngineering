.class public Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView$$State$ShowInfoBottomSheetCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowInfoBottomSheetCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final htmlTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showInfoBottomSheet"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView$$State$ShowInfoBottomSheetCommand;->htmlTexts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView$$State$ShowInfoBottomSheetCommand;->htmlTexts:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;->showInfoBottomSheet(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView$$State$ShowInfoBottomSheetCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;)V

    return-void
.end method
