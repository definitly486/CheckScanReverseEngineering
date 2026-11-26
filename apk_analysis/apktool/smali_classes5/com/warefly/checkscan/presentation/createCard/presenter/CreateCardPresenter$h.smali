.class public final Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->onIssueClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Boolean;",
        "Lc41;",
        "Lb36<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Lc41;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$h;->f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$h;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lc41;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lb36;

    invoke-direct {p0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
