.class public final Lcom/warefly/checkscan/presentation/Deeplink$d$a;
.super Lcom/warefly/checkscan/presentation/Deeplink$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/warefly/checkscan/presentation/Deeplink$d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$d$a;

    const-string v1, "cobrand-about"

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$d$a;->c:Lcom/warefly/checkscan/presentation/Deeplink$d$a;

    return-void
.end method


# virtual methods
.method public final f(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V
    .locals 0

    invoke-interface {p1}, Lbu3;->handleCobrandAbout()V

    return-void
.end method
