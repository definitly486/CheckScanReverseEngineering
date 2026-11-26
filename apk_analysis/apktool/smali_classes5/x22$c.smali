.class public final enum Lx22$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx22$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lx22$c;

.field public static final enum BLOCKING:Lx22$c;

.field public static final enum CPU_ACQUIRED:Lx22$c;

.field public static final enum DORMANT:Lx22$c;

.field public static final enum PARKING:Lx22$c;

.field public static final enum TERMINATED:Lx22$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lx22$c;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx22$c;->CPU_ACQUIRED:Lx22$c;

    new-instance v1, Lx22$c;

    const-string v2, "BLOCKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx22$c;->BLOCKING:Lx22$c;

    new-instance v2, Lx22$c;

    const-string v3, "PARKING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lx22$c;->PARKING:Lx22$c;

    new-instance v3, Lx22$c;

    const-string v4, "DORMANT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lx22$c;->DORMANT:Lx22$c;

    new-instance v4, Lx22$c;

    const-string v5, "TERMINATED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lx22$c;->TERMINATED:Lx22$c;

    filled-new-array {v0, v1, v2, v3, v4}, [Lx22$c;

    move-result-object v0

    sput-object v0, Lx22$c;->$VALUES:[Lx22$c;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lx22$c;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lx22$c;
    .locals 1

    const-class v0, Lx22$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx22$c;

    return-object p0
.end method

.method public static values()[Lx22$c;
    .locals 1

    sget-object v0, Lx22$c;->$VALUES:[Lx22$c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx22$c;

    return-object v0
.end method
