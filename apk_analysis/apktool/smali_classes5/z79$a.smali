.class public final enum Lz79$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz79;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz79$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lz79$a;

.field public static final enum Error:Lz79$a;

.field public static final enum Forbidden:Lz79$a;

.field public static final enum Success:Lz79$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lz79$a;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz79$a;->Success:Lz79$a;

    new-instance v1, Lz79$a;

    const-string v2, "Forbidden"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz79$a;->Forbidden:Lz79$a;

    new-instance v2, Lz79$a;

    const-string v3, "Error"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lz79$a;->Error:Lz79$a;

    filled-new-array {v0, v1, v2}, [Lz79$a;

    move-result-object v0

    sput-object v0, Lz79$a;->$VALUES:[Lz79$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lz79$a;
    .locals 1

    const-class v0, Lz79$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz79$a;

    return-object p0
.end method

.method public static values()[Lz79$a;
    .locals 1

    sget-object v0, Lz79$a;->$VALUES:[Lz79$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz79$a;

    return-object v0
.end method
