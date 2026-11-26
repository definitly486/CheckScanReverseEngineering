.class public final enum Lu37;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu37;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu37;

.field public static final enum GET:Lu37;

.field public static final enum POST:Lu37;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lu37;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu37;->POST:Lu37;

    new-instance v1, Lu37;

    const-string v2, "GET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu37;->GET:Lu37;

    filled-new-array {v0, v1}, [Lu37;

    move-result-object v0

    sput-object v0, Lu37;->$VALUES:[Lu37;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lu37;
    .locals 1

    const-class v0, Lu37;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu37;

    return-object p0
.end method

.method public static values()[Lu37;
    .locals 1

    sget-object v0, Lu37;->$VALUES:[Lu37;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu37;

    return-object v0
.end method
