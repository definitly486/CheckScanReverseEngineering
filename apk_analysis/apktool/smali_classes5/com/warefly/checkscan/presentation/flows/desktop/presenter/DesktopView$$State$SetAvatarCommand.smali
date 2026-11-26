.class public Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetAvatarCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetAvatarCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;",
        ">;"
    }
.end annotation


# instance fields
.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Ljava/lang/String;)V
    .locals 1

    const-string p1, "setAvatar"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetAvatarCommand;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetAvatarCommand;->url:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetAvatarCommand;->apply(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;)V

    return-void
.end method
