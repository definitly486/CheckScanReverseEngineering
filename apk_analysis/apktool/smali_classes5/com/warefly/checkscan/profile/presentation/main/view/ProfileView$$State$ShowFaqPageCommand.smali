.class public Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView$$State$ShowFaqPageCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowFaqPageCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final faqUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView$$State;Ljava/lang/String;)V
    .locals 1

    const-string p1, "showFaqPage"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView$$State$ShowFaqPageCommand;->faqUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView$$State$ShowFaqPageCommand;->faqUrl:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->showFaqPage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView$$State$ShowFaqPageCommand;->apply(Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;)V

    return-void
.end method
