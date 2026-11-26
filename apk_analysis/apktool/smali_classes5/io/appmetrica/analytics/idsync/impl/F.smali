.class public final enum Lio/appmetrica/analytics/idsync/impl/F;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/idsync/impl/E;

.field public static final enum c:Lio/appmetrica/analytics/idsync/impl/F;

.field public static final enum d:Lio/appmetrica/analytics/idsync/impl/F;

.field public static final enum e:Lio/appmetrica/analytics/idsync/impl/F;

.field public static final synthetic f:[Lio/appmetrica/analytics/idsync/impl/F;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/F;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lio/appmetrica/analytics/idsync/impl/F;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/idsync/impl/F;->c:Lio/appmetrica/analytics/idsync/impl/F;

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/F;

    const/4 v2, 0x1

    const-string v3, "success"

    const-string v4, "SUCCESS"

    invoke-direct {v1, v4, v2, v3}, Lio/appmetrica/analytics/idsync/impl/F;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/appmetrica/analytics/idsync/impl/F;->d:Lio/appmetrica/analytics/idsync/impl/F;

    new-instance v2, Lio/appmetrica/analytics/idsync/impl/F;

    const/4 v3, 0x2

    const-string v4, "incompatible_precondition"

    const-string v5, "INCOMPATIBLE_PRECONDITION"

    invoke-direct {v2, v5, v3, v4}, Lio/appmetrica/analytics/idsync/impl/F;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lio/appmetrica/analytics/idsync/impl/F;

    const/4 v4, 0x3

    const-string v5, "failure"

    const-string v6, "FAILURE"

    invoke-direct {v3, v6, v4, v5}, Lio/appmetrica/analytics/idsync/impl/F;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/appmetrica/analytics/idsync/impl/F;->e:Lio/appmetrica/analytics/idsync/impl/F;

    filled-new-array {v0, v1, v2, v3}, [Lio/appmetrica/analytics/idsync/impl/F;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/idsync/impl/F;->f:[Lio/appmetrica/analytics/idsync/impl/F;

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/E;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/E;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/idsync/impl/F;->b:Lio/appmetrica/analytics/idsync/impl/E;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/appmetrica/analytics/idsync/impl/F;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/idsync/impl/F;
    .locals 1

    const-class v0, Lio/appmetrica/analytics/idsync/impl/F;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/idsync/impl/F;

    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/idsync/impl/F;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/idsync/impl/F;->f:[Lio/appmetrica/analytics/idsync/impl/F;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/idsync/impl/F;

    return-object v0
.end method
