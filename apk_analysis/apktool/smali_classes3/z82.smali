.class public final enum Lz82;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz82;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lz82;

.field public static final enum DISK:Lz82;

.field public static final enum MEMORY:Lz82;

.field public static final enum MEMORY_CACHE:Lz82;

.field public static final enum NETWORK:Lz82;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lz82;

    const-string v1, "MEMORY_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz82;->MEMORY_CACHE:Lz82;

    new-instance v1, Lz82;

    const-string v2, "MEMORY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz82;->MEMORY:Lz82;

    new-instance v2, Lz82;

    const-string v3, "DISK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lz82;->DISK:Lz82;

    new-instance v3, Lz82;

    const-string v4, "NETWORK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz82;->NETWORK:Lz82;

    filled-new-array {v0, v1, v2, v3}, [Lz82;

    move-result-object v0

    sput-object v0, Lz82;->$VALUES:[Lz82;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lz82;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lz82;
    .locals 1

    const-class v0, Lz82;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz82;

    return-object p0
.end method

.method public static values()[Lz82;
    .locals 1

    sget-object v0, Lz82;->$VALUES:[Lz82;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz82;

    return-object v0
.end method
