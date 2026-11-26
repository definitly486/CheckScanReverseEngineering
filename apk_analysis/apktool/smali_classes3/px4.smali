.class public final enum Lpx4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpx4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpx4;

.field public static final enum MergePathsApi19:Lpx4;


# instance fields
.field public final minRequiredSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpx4;

    invoke-direct {v0}, Lpx4;-><init>()V

    sput-object v0, Lpx4;->MergePathsApi19:Lpx4;

    filled-new-array {v0}, [Lpx4;

    move-result-object v0

    sput-object v0, Lpx4;->$VALUES:[Lpx4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "MergePathsApi19"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x13

    iput v0, p0, Lpx4;->minRequiredSdkVersion:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpx4;
    .locals 1

    const-class v0, Lpx4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpx4;

    return-object p0
.end method

.method public static values()[Lpx4;
    .locals 1

    sget-object v0, Lpx4;->$VALUES:[Lpx4;

    invoke-virtual {v0}, [Lpx4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpx4;

    return-object v0
.end method
