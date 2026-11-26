.class public final enum Lti7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lti7;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lti7;

.field public static final enum Down:Lti7;

.field public static final enum Up:Lti7;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lti7;

    const-string v1, "Up"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti7;->Up:Lti7;

    new-instance v1, Lti7;

    const-string v2, "Down"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lti7;->Down:Lti7;

    filled-new-array {v0, v1}, [Lti7;

    move-result-object v0

    sput-object v0, Lti7;->$VALUES:[Lti7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lti7;
    .locals 1

    const-class v0, Lti7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lti7;

    return-object p0
.end method

.method public static values()[Lti7;
    .locals 1

    sget-object v0, Lti7;->$VALUES:[Lti7;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti7;

    return-object v0
.end method
