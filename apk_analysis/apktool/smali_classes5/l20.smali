.class public final enum Ll20;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll20;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ll20;

.field public static final enum FAIL:Ll20;
    .annotation runtime Lbq7;
        value = "FAIL"
    .end annotation
.end field

.field public static final enum SUCCESS:Ll20;
    .annotation runtime Lbq7;
        value = "SUCCESS"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ll20;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll20;->FAIL:Ll20;

    new-instance v1, Ll20;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ll20;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll20;->SUCCESS:Ll20;

    filled-new-array {v0, v1}, [Ll20;

    move-result-object v0

    sput-object v0, Ll20;->$VALUES:[Ll20;

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

.method public static valueOf(Ljava/lang/String;)Ll20;
    .locals 1

    const-class v0, Ll20;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll20;

    return-object p0
.end method

.method public static values()[Ll20;
    .locals 1

    sget-object v0, Ll20;->$VALUES:[Ll20;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll20;

    return-object v0
.end method
