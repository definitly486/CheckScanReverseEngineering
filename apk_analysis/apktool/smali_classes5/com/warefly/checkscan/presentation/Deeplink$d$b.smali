.class public final Lcom/warefly/checkscan/presentation/Deeplink$d$b;
.super Lcom/warefly/checkscan/presentation/Deeplink$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Lcom/warefly/checkscan/presentation/Deeplink$d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$d$b;

    const-string v1, "cobrand-create-card"

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$d$b;->c:Lcom/warefly/checkscan/presentation/Deeplink$d$b;

    return-void
.end method


# virtual methods
.method public final f(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V
    .locals 0

    invoke-interface {p1}, Lbu3;->handleCreateCard()V

    return-void
.end method
