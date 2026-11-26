.class public final enum Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPMETRICA_PUSH_SERVICE:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

.field public static final Companion:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;

.field public static final enum PROVIDER_SERVICE:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

.field public static final enum UNKNOWN:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

.field private static final synthetic b:[Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

.field private static final synthetic c:Lg03;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    const-string v1, "PROVIDER_SERVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->PROVIDER_SERVICE:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    new-instance v1, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    const-string v2, "APPMETRICA_PUSH_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->APPMETRICA_PUSH_SERVICE:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    new-instance v2, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    const/4 v3, 0x2

    const/4 v4, -0x1

    const-string v5, "UNKNOWN"

    invoke-direct {v2, v5, v3, v4}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->UNKNOWN:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    filled-new-array {v0, v1, v2}, [Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->b:[Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->c:Lg03;

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->Companion:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->a:I

    return-void
.end method

.method public static final fromValue(I)Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->Companion:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;->fromValue(I)Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->c:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;
    .locals 1

    const-class v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->b:[Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->a:I

    return p0
.end method
