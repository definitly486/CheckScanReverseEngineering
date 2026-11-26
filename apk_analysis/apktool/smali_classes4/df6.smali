.class public abstract enum Ldf6;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbf6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldf6;",
        ">;",
        "Lbf6<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldf6;

.field public static final enum ALWAYS_FALSE:Ldf6;

.field public static final enum ALWAYS_TRUE:Ldf6;

.field public static final enum IS_NULL:Ldf6;

.field public static final enum NOT_NULL:Ldf6;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ldf6$a;

    invoke-direct {v0}, Ldf6$a;-><init>()V

    sput-object v0, Ldf6;->ALWAYS_TRUE:Ldf6;

    new-instance v1, Ldf6$b;

    invoke-direct {v1}, Ldf6$b;-><init>()V

    sput-object v1, Ldf6;->ALWAYS_FALSE:Ldf6;

    new-instance v2, Ldf6$c;

    invoke-direct {v2}, Ldf6$c;-><init>()V

    sput-object v2, Ldf6;->IS_NULL:Ldf6;

    new-instance v3, Ldf6$d;

    invoke-direct {v3}, Ldf6$d;-><init>()V

    sput-object v3, Ldf6;->NOT_NULL:Ldf6;

    const/4 v4, 0x4

    new-array v4, v4, [Ldf6;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Ldf6;->$VALUES:[Ldf6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ldf6;
    .locals 1

    const-class v0, Ldf6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldf6;

    return-object p0
.end method

.method public static values()[Ldf6;
    .locals 1

    sget-object v0, Ldf6;->$VALUES:[Ldf6;

    invoke-virtual {v0}, [Ldf6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldf6;

    return-object v0
.end method
