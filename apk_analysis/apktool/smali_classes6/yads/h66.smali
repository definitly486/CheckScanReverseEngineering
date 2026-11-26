.class public final enum Lyads/h66;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/h66;

.field public static final enum d:Lyads/h66;

.field public static final enum e:Lyads/h66;

.field public static final enum f:Lyads/h66;

.field public static final synthetic g:[Lyads/h66;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/h66;

    const/4 v1, 0x0

    const-string v2, "inconsistent_asset_value"

    const-string v3, "INCONSISTENT_ASSET_VALUE"

    invoke-direct {v0, v3, v1, v2}, Lyads/h66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/h66;->c:Lyads/h66;

    new-instance v1, Lyads/h66;

    const/4 v2, 0x1

    const-string v3, "no_visible_sponsored_asset"

    const-string v4, "NO_VISIBLE_SPONSORED_ASSET"

    invoke-direct {v1, v4, v2, v3}, Lyads/h66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/h66;->d:Lyads/h66;

    new-instance v2, Lyads/h66;

    const/4 v3, 0x2

    const-string v4, "no_visible_required_assets"

    const-string v5, "NO_VISIBLE_REQUIRED_ASSETS"

    invoke-direct {v2, v5, v3, v4}, Lyads/h66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/h66;->e:Lyads/h66;

    new-instance v3, Lyads/h66;

    const/4 v4, 0x3

    const-string v5, "overlapped_by_view"

    const-string v6, "OVERLAPPED_BY_VIEW"

    invoke-direct {v3, v6, v4, v5}, Lyads/h66;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/h66;->f:Lyads/h66;

    filled-new-array {v0, v1, v2, v3}, [Lyads/h66;

    move-result-object v0

    sput-object v0, Lyads/h66;->g:[Lyads/h66;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/h66;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/h66;
    .locals 1

    const-class v0, Lyads/h66;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/h66;

    return-object p0
.end method

.method public static values()[Lyads/h66;
    .locals 1

    sget-object v0, Lyads/h66;->g:[Lyads/h66;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/h66;

    return-object v0
.end method
