.class public final enum Ls03;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls03;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ls03;

.field public static final enum BOUNDARY:Ls03;

.field public static final enum END:Ls03;

.field public static final enum IMMEDIATE:Ls03;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ls03;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls03;->IMMEDIATE:Ls03;

    new-instance v1, Ls03;

    const-string v2, "BOUNDARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls03;->BOUNDARY:Ls03;

    new-instance v2, Ls03;

    const-string v3, "END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ls03;->END:Ls03;

    filled-new-array {v0, v1, v2}, [Ls03;

    move-result-object v0

    sput-object v0, Ls03;->$VALUES:[Ls03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ls03;
    .locals 1

    const-class v0, Ls03;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls03;

    return-object p0
.end method

.method public static values()[Ls03;
    .locals 1

    sget-object v0, Ls03;->$VALUES:[Ls03;

    invoke-virtual {v0}, [Ls03;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls03;

    return-object v0
.end method
