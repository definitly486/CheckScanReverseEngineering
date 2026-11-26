.class public Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowMiniBannerCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowMiniBannerCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final img:Ljava/lang/String;

.field public final ordInfo:Lb06;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;Ljava/lang/String;Ljava/lang/String;Lb06;)V
    .locals 1

    const-string p1, "showMiniBanner"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowMiniBannerCommand;->img:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowMiniBannerCommand;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowMiniBannerCommand;->ordInfo:Lb06;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowMiniBannerCommand;->img:Ljava/lang/String;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowMiniBannerCommand;->url:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowMiniBannerCommand;->ordInfo:Lb06;

    invoke-interface {p1, v0, v1, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showMiniBanner(Ljava/lang/String;Ljava/lang/String;Lb06;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowMiniBannerCommand;->apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V

    return-void
.end method
