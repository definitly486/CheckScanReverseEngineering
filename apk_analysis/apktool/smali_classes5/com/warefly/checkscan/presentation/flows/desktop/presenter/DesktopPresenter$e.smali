.class public final synthetic Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$e;
.super Lk8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk8;",
        "Ldm3<",
        "Led3;",
        "Lri8;",
        "Le02<",
        "-",
        "Lb36<",
        "+",
        "Led3;",
        "+",
        "Lri8;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$e;

    const-string v4, "<init>(Ljava/lang/Object;Ljava/lang/Object;)V"

    const/4 v5, 0x4

    const/4 v1, 0x3

    const-class v2, Lb36;

    const-string v3, "<init>"

    invoke-direct/range {v0 .. v5}, Lk8;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$e;->c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Led3;

    check-cast p2, Lri8;

    check-cast p3, Le02;

    invoke-static {p1, p2, p3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$onFirstViewAttach$lambda$0(Led3;Lri8;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
