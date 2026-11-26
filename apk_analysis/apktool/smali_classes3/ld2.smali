.class public final enum Lld2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lld2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lld2;

.field public static final DEFAULT:Lld2;

.field public static final enum PREFER_ARGB_8888:Lld2;

.field public static final enum PREFER_RGB_565:Lld2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lld2;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lld2;->PREFER_ARGB_8888:Lld2;

    new-instance v1, Lld2;

    const-string v2, "PREFER_RGB_565"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lld2;->PREFER_RGB_565:Lld2;

    filled-new-array {v0, v1}, [Lld2;

    move-result-object v1

    sput-object v1, Lld2;->$VALUES:[Lld2;

    sput-object v0, Lld2;->DEFAULT:Lld2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lld2;
    .locals 1

    const-class v0, Lld2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lld2;

    return-object p0
.end method

.method public static values()[Lld2;
    .locals 1

    sget-object v0, Lld2;->$VALUES:[Lld2;

    invoke-virtual {v0}, [Lld2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lld2;

    return-object v0
.end method
