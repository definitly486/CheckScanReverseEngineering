.class public final Lf93$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf93;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lf93$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf93$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf93$a;->a:Lf93$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lf93$b;->b(Lf93;Ljava/util/List;Ljava/lang/String;Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/util/List;Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf93$b;->a(Lf93;Ljava/util/List;Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V

    return-void
.end method

.method public final c(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V
    .locals 0

    invoke-interface {p1, p2}, Lf93$c;->showBlankDateError(Z)V

    return-void
.end method

.method public final d(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Z)V
    .locals 0

    return-void
.end method
