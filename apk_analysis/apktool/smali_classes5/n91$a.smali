.class public final enum Ln91$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln91$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln91$a;

.field public static final enum DEBUG:Ln91$a;

.field public static final enum ERROR:Ln91$a;

.field public static final enum INFO:Ln91$a;

.field public static final enum WARNING:Ln91$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ln91$a;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln91$a;->DEBUG:Ln91$a;

    new-instance v1, Ln91$a;

    const-string v2, "INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln91$a;->INFO:Ln91$a;

    new-instance v2, Ln91$a;

    const-string v3, "WARNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ln91$a;->WARNING:Ln91$a;

    new-instance v3, Ln91$a;

    const-string v4, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln91$a;->ERROR:Ln91$a;

    filled-new-array {v0, v1, v2, v3}, [Ln91$a;

    move-result-object v0

    sput-object v0, Ln91$a;->$VALUES:[Ln91$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln91$a;
    .locals 1

    const-class v0, Ln91$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln91$a;

    return-object p0
.end method

.method public static values()[Ln91$a;
    .locals 1

    sget-object v0, Ln91$a;->$VALUES:[Ln91$a;

    invoke-virtual {v0}, [Ln91$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln91$a;

    return-object v0
.end method
