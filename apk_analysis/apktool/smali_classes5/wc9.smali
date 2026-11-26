.class public final enum Lwc9;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwc9;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwc9;

.field public static final enum NewerAvailable:Lwc9;

.field public static final enum Supported:Lwc9;

.field public static final enum Unsupported:Lwc9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lwc9;

    const-string v1, "Supported"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwc9;->Supported:Lwc9;

    new-instance v1, Lwc9;

    const-string v2, "NewerAvailable"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lwc9;->NewerAvailable:Lwc9;

    new-instance v2, Lwc9;

    const-string v3, "Unsupported"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lwc9;->Unsupported:Lwc9;

    filled-new-array {v0, v1, v2}, [Lwc9;

    move-result-object v0

    sput-object v0, Lwc9;->$VALUES:[Lwc9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwc9;
    .locals 1

    const-class v0, Lwc9;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwc9;

    return-object p0
.end method

.method public static values()[Lwc9;
    .locals 1

    sget-object v0, Lwc9;->$VALUES:[Lwc9;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwc9;

    return-object v0
.end method
