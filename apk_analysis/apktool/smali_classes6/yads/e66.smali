.class public final enum Lyads/e66;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/e66;

.field public static final enum d:Lyads/e66;

.field public static final enum e:Lyads/e66;

.field public static final enum f:Lyads/e66;

.field public static final enum g:Lyads/e66;

.field public static final enum h:Lyads/e66;

.field public static final enum i:Lyads/e66;

.field public static final synthetic j:[Lyads/e66;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lyads/e66;

    const/4 v1, 0x0

    const-string v2, "no_ad_view"

    const-string v3, "NO_AD_VIEW"

    invoke-direct {v0, v3, v1, v2}, Lyads/e66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/e66;->c:Lyads/e66;

    new-instance v1, Lyads/e66;

    const/4 v2, 0x1

    const-string v3, "no_visible_ads"

    const-string v4, "NO_VISIBLE_ADS"

    invoke-direct {v1, v4, v2, v3}, Lyads/e66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/e66;->d:Lyads/e66;

    new-instance v2, Lyads/e66;

    const/4 v3, 0x2

    const-string v4, "not_visible_for_percent"

    const-string v5, "NOT_VISIBLE_FOR_PERCENT"

    invoke-direct {v2, v5, v3, v4}, Lyads/e66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/e66;->e:Lyads/e66;

    new-instance v3, Lyads/e66;

    const/4 v4, 0x3

    const-string v5, "required_asset_can_not_be_visible"

    const-string v6, "REQUIRED_ASSET_CAN_NOT_BE_VISIBLE"

    invoke-direct {v3, v6, v4, v5}, Lyads/e66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/e66;->f:Lyads/e66;

    new-instance v4, Lyads/e66;

    const/4 v5, 0x4

    const-string v6, "superview_null"

    const-string v7, "SUPERVIEW_NULL"

    invoke-direct {v4, v7, v5, v6}, Lyads/e66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/e66;->g:Lyads/e66;

    new-instance v5, Lyads/e66;

    const/4 v6, 0x5

    const-string v7, "superview_hidden"

    const-string v8, "SUPERVIEW_HIDDEN"

    invoke-direct {v5, v8, v6, v7}, Lyads/e66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/e66;->h:Lyads/e66;

    new-instance v6, Lyads/e66;

    const/4 v7, 0x6

    const-string v8, "visible_area_too_small"

    const-string v9, "VISIBLE_AREA_TOO_SMALL"

    invoke-direct {v6, v9, v7, v8}, Lyads/e66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lyads/e66;->i:Lyads/e66;

    filled-new-array/range {v0 .. v6}, [Lyads/e66;

    move-result-object v0

    sput-object v0, Lyads/e66;->j:[Lyads/e66;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/e66;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/e66;
    .locals 1

    const-class v0, Lyads/e66;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/e66;

    return-object p0
.end method

.method public static values()[Lyads/e66;
    .locals 1

    sget-object v0, Lyads/e66;->j:[Lyads/e66;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/e66;

    return-object v0
.end method
