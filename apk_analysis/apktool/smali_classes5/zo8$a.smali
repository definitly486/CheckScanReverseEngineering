.class public final enum Lzo8$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzo8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzo8$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzo8$a;

.field public static final enum AVAILABLE:Lzo8$a;
    .annotation runtime Lbq7;
        value = "AVAILABLE"
    .end annotation
.end field

.field public static final enum COMPLETED:Lzo8$a;
    .annotation runtime Lbq7;
        value = "COMPLETED"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lzo8$a;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzo8$a;->AVAILABLE:Lzo8$a;

    new-instance v1, Lzo8$a;

    const-string v2, "COMPLETED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lzo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzo8$a;->COMPLETED:Lzo8$a;

    filled-new-array {v0, v1}, [Lzo8$a;

    move-result-object v0

    sput-object v0, Lzo8$a;->$VALUES:[Lzo8$a;

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

.method public static valueOf(Ljava/lang/String;)Lzo8$a;
    .locals 1

    const-class v0, Lzo8$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzo8$a;

    return-object p0
.end method

.method public static values()[Lzo8$a;
    .locals 1

    sget-object v0, Lzo8$a;->$VALUES:[Lzo8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzo8$a;

    return-object v0
.end method
