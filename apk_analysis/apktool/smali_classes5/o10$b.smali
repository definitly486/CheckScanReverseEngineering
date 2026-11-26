.class public final Lo10$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lo10$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo10$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo10$b;->a:Lo10$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V
    .locals 0

    invoke-interface {p1}, Lo10$c;->fetchAlfaIdLink()V

    return-void
.end method
