.class public final enum Lr33;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr33;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lr33;

.field public static final enum CONTROL:Lr33;
    .annotation runtime Lbq7;
        value = "CONTROL"
    .end annotation
.end field

.field public static final enum TEST1:Lr33;
    .annotation runtime Lbq7;
        value = "TEST1"
    .end annotation
.end field

.field public static final enum TEST2:Lr33;
    .annotation runtime Lbq7;
        value = "TEST2"
    .end annotation
.end field

.field public static final enum TEST3:Lr33;
    .annotation runtime Lbq7;
        value = "TEST2"
    .end annotation
.end field

.field public static final enum TEST4:Lr33;
    .annotation runtime Lbq7;
        value = "TEST2"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lr33;

    const-string v1, "TEST1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr33;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr33;->TEST1:Lr33;

    new-instance v1, Lr33;

    const-string v2, "TEST2"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lr33;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr33;->TEST2:Lr33;

    new-instance v2, Lr33;

    const-string v3, "TEST3"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lr33;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr33;->TEST3:Lr33;

    new-instance v3, Lr33;

    const-string v4, "TEST4"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lr33;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr33;->TEST4:Lr33;

    new-instance v4, Lr33;

    const-string v5, "CONTROL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lr33;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lr33;->CONTROL:Lr33;

    filled-new-array {v0, v1, v2, v3, v4}, [Lr33;

    move-result-object v0

    sput-object v0, Lr33;->$VALUES:[Lr33;

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

.method public static valueOf(Ljava/lang/String;)Lr33;
    .locals 1

    const-class v0, Lr33;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr33;

    return-object p0
.end method

.method public static values()[Lr33;
    .locals 1

    sget-object v0, Lr33;->$VALUES:[Lr33;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr33;

    return-object v0
.end method
