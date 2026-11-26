.class public final enum Lxk4$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxk4$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lxk4$a;

.field public static final enum IMAGE:Lxk4$a;

.field public static final enum NULL:Lxk4$a;

.field public static final enum PRE_COMP:Lxk4$a;

.field public static final enum SHAPE:Lxk4$a;

.field public static final enum SOLID:Lxk4$a;

.field public static final enum TEXT:Lxk4$a;

.field public static final enum UNKNOWN:Lxk4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lxk4$a;

    const-string v1, "PRE_COMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxk4$a;->PRE_COMP:Lxk4$a;

    new-instance v1, Lxk4$a;

    const-string v2, "SOLID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxk4$a;->SOLID:Lxk4$a;

    new-instance v2, Lxk4$a;

    const-string v3, "IMAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lxk4$a;->IMAGE:Lxk4$a;

    new-instance v3, Lxk4$a;

    const-string v4, "NULL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lxk4$a;->NULL:Lxk4$a;

    new-instance v4, Lxk4$a;

    const-string v5, "SHAPE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lxk4$a;->SHAPE:Lxk4$a;

    new-instance v5, Lxk4$a;

    const-string v6, "TEXT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lxk4$a;->TEXT:Lxk4$a;

    new-instance v6, Lxk4$a;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lxk4$a;->UNKNOWN:Lxk4$a;

    filled-new-array/range {v0 .. v6}, [Lxk4$a;

    move-result-object v0

    sput-object v0, Lxk4$a;->$VALUES:[Lxk4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lxk4$a;
    .locals 1

    const-class v0, Lxk4$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxk4$a;

    return-object p0
.end method

.method public static values()[Lxk4$a;
    .locals 1

    sget-object v0, Lxk4$a;->$VALUES:[Lxk4$a;

    invoke-virtual {v0}, [Lxk4$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxk4$a;

    return-object v0
.end method
