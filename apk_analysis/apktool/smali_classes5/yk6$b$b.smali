.class public final enum Lyk6$b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk6$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyk6$b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyk6$b$b;

.field public static final enum CONFIRMED:Lyk6$b$b;
    .annotation runtime Lbq7;
        value = "CONFIRMED"
    .end annotation
.end field

.field public static final enum NOT_SET:Lyk6$b$b;
    .annotation runtime Lbq7;
        value = "NOT_SET"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyk6$b$b;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyk6$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk6$b$b;->NOT_SET:Lyk6$b$b;

    new-instance v1, Lyk6$b$b;

    const-string v2, "CONFIRMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyk6$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyk6$b$b;->CONFIRMED:Lyk6$b$b;

    filled-new-array {v0, v1}, [Lyk6$b$b;

    move-result-object v0

    sput-object v0, Lyk6$b$b;->$VALUES:[Lyk6$b$b;

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

.method public static valueOf(Ljava/lang/String;)Lyk6$b$b;
    .locals 1

    const-class v0, Lyk6$b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyk6$b$b;

    return-object p0
.end method

.method public static values()[Lyk6$b$b;
    .locals 1

    sget-object v0, Lyk6$b$b;->$VALUES:[Lyk6$b$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyk6$b$b;

    return-object v0
.end method
