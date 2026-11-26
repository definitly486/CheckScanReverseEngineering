.class public final Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;->a:Ljava/lang/Long;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;-><init>(Ljava/lang/Long;Ljh2;)V

    return-object v0
.end method

.method public final withStatusChangeTime(Ljava/lang/Long;)Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Builder;->a:Ljava/lang/Long;

    return-object p0
.end method
