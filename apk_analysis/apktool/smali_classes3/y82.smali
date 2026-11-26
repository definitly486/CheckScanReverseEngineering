.class public final enum Ly82;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly82;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ly82;

.field public static final enum DATA_DISK_CACHE:Ly82;

.field public static final enum LOCAL:Ly82;

.field public static final enum MEMORY_CACHE:Ly82;

.field public static final enum REMOTE:Ly82;

.field public static final enum RESOURCE_DISK_CACHE:Ly82;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ly82;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly82;->LOCAL:Ly82;

    new-instance v1, Ly82;

    const-string v2, "REMOTE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly82;->REMOTE:Ly82;

    new-instance v2, Ly82;

    const-string v3, "DATA_DISK_CACHE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ly82;->DATA_DISK_CACHE:Ly82;

    new-instance v3, Ly82;

    const-string v4, "RESOURCE_DISK_CACHE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly82;->RESOURCE_DISK_CACHE:Ly82;

    new-instance v4, Ly82;

    const-string v5, "MEMORY_CACHE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ly82;->MEMORY_CACHE:Ly82;

    filled-new-array {v0, v1, v2, v3, v4}, [Ly82;

    move-result-object v0

    sput-object v0, Ly82;->$VALUES:[Ly82;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ly82;
    .locals 1

    const-class v0, Ly82;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly82;

    return-object p0
.end method

.method public static values()[Ly82;
    .locals 1

    sget-object v0, Ly82;->$VALUES:[Ly82;

    invoke-virtual {v0}, [Ly82;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly82;

    return-object v0
.end method
