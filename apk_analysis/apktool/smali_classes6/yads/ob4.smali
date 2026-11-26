.class public final enum Lyads/ob4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/nb4;

.field public static final enum d:Lyads/ob4;

.field public static final synthetic e:[Lyads/ob4;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lyads/ob4;

    const/4 v1, 0x0

    const-string v2, "advideocomplete"

    const-string v3, "AD_VIDEO_COMPLETE"

    invoke-direct {v0, v3, v1, v2}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/ob4;

    const/4 v2, 0x1

    const-string v3, "impressionTrackingStart"

    const-string v4, "IMPRESSION_TRACKING_START"

    invoke-direct {v1, v4, v2, v3}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/ob4;

    const/4 v3, 0x2

    const-string v4, "impressionTrackingSuccess"

    const-string v5, "IMPRESSION_TRACKING_SUCCESS"

    invoke-direct {v2, v5, v3, v4}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lyads/ob4;

    const/4 v4, 0x3

    const-string v5, "close"

    const-string v6, "CLOSE"

    invoke-direct {v3, v6, v4, v5}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lyads/ob4;

    const/4 v5, 0x4

    const-string v6, "open"

    const-string v7, "OPEN"

    invoke-direct {v4, v7, v5, v6}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lyads/ob4;

    const/4 v6, 0x5

    const-string v7, "rewardedAdComplete"

    const-string v8, "REWARDED_AD_COMPLETE"

    invoke-direct {v5, v8, v6, v7}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lyads/ob4;

    const/4 v7, 0x6

    const-string v8, "usecustomclose"

    const-string v9, "USE_CUSTOM_CLOSE"

    invoke-direct {v6, v9, v7, v8}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lyads/ob4;

    const/4 v8, 0x7

    const-string v9, ""

    const-string v10, "UNSPECIFIED"

    invoke-direct {v7, v10, v8, v9}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lyads/ob4;->d:Lyads/ob4;

    new-instance v8, Lyads/ob4;

    const/16 v9, 0x8

    const-string v10, "adRendered"

    const-string v11, "AD_RENDERED"

    invoke-direct {v8, v11, v9, v10}, Lyads/ob4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v8}, [Lyads/ob4;

    move-result-object v0

    sput-object v0, Lyads/ob4;->e:[Lyads/ob4;

    new-instance v0, Lyads/nb4;

    invoke-direct {v0}, Lyads/nb4;-><init>()V

    sput-object v0, Lyads/ob4;->c:Lyads/nb4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/ob4;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ob4;
    .locals 1

    const-class v0, Lyads/ob4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ob4;

    return-object p0
.end method

.method public static values()[Lyads/ob4;
    .locals 1

    sget-object v0, Lyads/ob4;->e:[Lyads/ob4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ob4;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/ob4;->b:Ljava/lang/String;

    return-object p0
.end method
