.class public final enum Lxc0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxc0$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lxc0$b;

.field public static final enum ABSENT:Lxc0$b;

.field public static final enum ABSENT_OPTIONAL:Lxc0$b;

.field public static final enum PRESENT:Lxc0$b;

.field public static final enum PRESENT_OPTIONAL:Lxc0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lxc0$b;

    const-string v1, "PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc0$b;->PRESENT:Lxc0$b;

    new-instance v1, Lxc0$b;

    const-string v2, "ABSENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxc0$b;->ABSENT:Lxc0$b;

    new-instance v2, Lxc0$b;

    const-string v3, "PRESENT_OPTIONAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lxc0$b;->PRESENT_OPTIONAL:Lxc0$b;

    new-instance v3, Lxc0$b;

    const-string v4, "ABSENT_OPTIONAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lxc0$b;->ABSENT_OPTIONAL:Lxc0$b;

    filled-new-array {v0, v1, v2, v3}, [Lxc0$b;

    move-result-object v0

    sput-object v0, Lxc0$b;->$VALUES:[Lxc0$b;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lxc0$b;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lxc0$b;
    .locals 1

    const-class v0, Lxc0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxc0$b;

    return-object p0
.end method

.method public static values()[Lxc0$b;
    .locals 1

    sget-object v0, Lxc0$b;->$VALUES:[Lxc0$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxc0$b;

    return-object v0
.end method
