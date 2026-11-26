.class public final enum Ll10;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll10;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ll10;

.field public static final enum ADVANCE:Ll10;
    .annotation runtime Lbq7;
        value = "ADVANCE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll10;

    const-string v1, "ADVANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll10;->ADVANCE:Ll10;

    filled-new-array {v0}, [Ll10;

    move-result-object v0

    sput-object v0, Ll10;->$VALUES:[Ll10;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll10;
    .locals 1

    const-class v0, Ll10;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll10;

    return-object p0
.end method

.method public static values()[Ll10;
    .locals 1

    sget-object v0, Ll10;->$VALUES:[Ll10;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll10;

    return-object v0
.end method
