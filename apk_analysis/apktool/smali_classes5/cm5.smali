.class public final enum Lcm5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcm5;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm5;

.field public static final enum PLAINTEXT:Lcm5;

.field public static final enum TLS:Lcm5;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcm5;

    const-string v1, "TLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm5;->TLS:Lcm5;

    new-instance v1, Lcm5;

    const-string v2, "PLAINTEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcm5;->PLAINTEXT:Lcm5;

    filled-new-array {v0, v1}, [Lcm5;

    move-result-object v0

    sput-object v0, Lcm5;->$VALUES:[Lcm5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcm5;
    .locals 1

    const-class v0, Lcm5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcm5;

    return-object p0
.end method

.method public static values()[Lcm5;
    .locals 1

    sget-object v0, Lcm5;->$VALUES:[Lcm5;

    invoke-virtual {v0}, [Lcm5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm5;

    return-object v0
.end method
