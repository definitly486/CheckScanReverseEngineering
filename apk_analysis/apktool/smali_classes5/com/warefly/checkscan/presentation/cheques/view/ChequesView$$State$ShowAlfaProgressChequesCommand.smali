.class public Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAlfaProgressChequesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final complete:Z

.field public final progress:I

.field public final progressText:Landroid/text/SpannableString;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;Ljava/lang/String;Landroid/text/SpannableString;IZ)V
    .locals 1

    const-string p1, "showAlfaProgressCheques"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->progressText:Landroid/text/SpannableString;

    iput p4, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->progress:I

    iput-boolean p5, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->complete:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->progressText:Landroid/text/SpannableString;

    iget v2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->progress:I

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->complete:Z

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showAlfaProgressCheques(Ljava/lang/String;Landroid/text/SpannableString;IZ)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowAlfaProgressChequesCommand;->apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V

    return-void
.end method
