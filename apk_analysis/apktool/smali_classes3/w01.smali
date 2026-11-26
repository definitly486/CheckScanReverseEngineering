.class public final enum Lw01;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw01;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw01;

.field public static final enum BACK:Lw01;

.field public static final enum FRONT:Lw01;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw01;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw01;->BACK:Lw01;

    new-instance v1, Lw01;

    const-string v2, "FRONT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw01;->FRONT:Lw01;

    filled-new-array {v0, v1}, [Lw01;

    move-result-object v0

    sput-object v0, Lw01;->$VALUES:[Lw01;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lw01;
    .locals 1

    const-class v0, Lw01;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw01;

    return-object p0
.end method

.method public static values()[Lw01;
    .locals 1

    sget-object v0, Lw01;->$VALUES:[Lw01;

    invoke-virtual {v0}, [Lw01;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw01;

    return-object v0
.end method
