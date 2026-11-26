.class public final enum Lrx2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx2;

.field public static final enum NONE:Lrx2;

.field public static final enum SOURCE:Lrx2;

.field public static final enum TRANSFORMED:Lrx2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lrx2;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx2;->SOURCE:Lrx2;

    new-instance v1, Lrx2;

    const-string v2, "TRANSFORMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrx2;->TRANSFORMED:Lrx2;

    new-instance v2, Lrx2;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lrx2;->NONE:Lrx2;

    filled-new-array {v0, v1, v2}, [Lrx2;

    move-result-object v0

    sput-object v0, Lrx2;->$VALUES:[Lrx2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx2;
    .locals 1

    const-class v0, Lrx2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx2;

    return-object p0
.end method

.method public static values()[Lrx2;
    .locals 1

    sget-object v0, Lrx2;->$VALUES:[Lrx2;

    invoke-virtual {v0}, [Lrx2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx2;

    return-object v0
.end method
