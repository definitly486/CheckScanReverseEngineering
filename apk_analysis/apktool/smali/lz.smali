.class public final enum Llz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llz;

.field public static final enum BackendError:Llz;

.field public static final enum Error:Llz;

.field public static final enum LargeFile:Llz;

.field public static final enum NewAvatarSent:Llz;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Llz;

    const-string v1, "NewAvatarSent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llz;->NewAvatarSent:Llz;

    new-instance v1, Llz;

    const-string v2, "Error"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Llz;->Error:Llz;

    new-instance v2, Llz;

    const-string v3, "BackendError"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Llz;->BackendError:Llz;

    new-instance v3, Llz;

    const-string v4, "LargeFile"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Llz;->LargeFile:Llz;

    filled-new-array {v0, v1, v2, v3}, [Llz;

    move-result-object v0

    sput-object v0, Llz;->$VALUES:[Llz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Llz;
    .locals 1

    const-class v0, Llz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llz;

    return-object p0
.end method

.method public static values()[Llz;
    .locals 1

    sget-object v0, Llz;->$VALUES:[Llz;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llz;

    return-object v0
.end method
