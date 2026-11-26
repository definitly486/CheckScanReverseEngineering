.class public final enum Lvb6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvb6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvb6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lvb6;

.field public static final enum CREATE_ALIAS:Lvb6;

.field public static final Companion:Lvb6$a;

.field public static final enum EXCEPTION:Lvb6;

.field public static final enum FEATURE_FLAG_CALLED:Lvb6;

.field public static final enum FEATURE_INTERACTION:Lvb6;

.field public static final enum FEATURE_VIEW:Lvb6;

.field public static final enum GROUP_IDENTIFY:Lvb6;

.field public static final enum IDENTIFY:Lvb6;

.field public static final enum SCREEN:Lvb6;

.field public static final enum SET:Lvb6;

.field public static final enum SNAPSHOT:Lvb6;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lvb6;

    const/4 v1, 0x0

    const-string v2, "$snapshot"

    const-string v3, "SNAPSHOT"

    invoke-direct {v0, v3, v1, v2}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lvb6;->SNAPSHOT:Lvb6;

    new-instance v1, Lvb6;

    const/4 v2, 0x1

    const-string v3, "$set"

    const-string v4, "SET"

    invoke-direct {v1, v4, v2, v3}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lvb6;->SET:Lvb6;

    new-instance v2, Lvb6;

    const/4 v3, 0x2

    const-string v4, "$identify"

    const-string v5, "IDENTIFY"

    invoke-direct {v2, v5, v3, v4}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lvb6;->IDENTIFY:Lvb6;

    new-instance v3, Lvb6;

    const/4 v4, 0x3

    const-string v5, "$screen"

    const-string v6, "SCREEN"

    invoke-direct {v3, v6, v4, v5}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lvb6;->SCREEN:Lvb6;

    new-instance v4, Lvb6;

    const/4 v5, 0x4

    const-string v6, "$groupidentify"

    const-string v7, "GROUP_IDENTIFY"

    invoke-direct {v4, v7, v5, v6}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lvb6;->GROUP_IDENTIFY:Lvb6;

    new-instance v5, Lvb6;

    const/4 v6, 0x5

    const-string v7, "$create_alias"

    const-string v8, "CREATE_ALIAS"

    invoke-direct {v5, v8, v6, v7}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lvb6;->CREATE_ALIAS:Lvb6;

    new-instance v6, Lvb6;

    const/4 v7, 0x6

    const-string v8, "$feature_flag_called"

    const-string v9, "FEATURE_FLAG_CALLED"

    invoke-direct {v6, v9, v7, v8}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lvb6;->FEATURE_FLAG_CALLED:Lvb6;

    new-instance v7, Lvb6;

    const/4 v8, 0x7

    const-string v9, "$feature_view"

    const-string v10, "FEATURE_VIEW"

    invoke-direct {v7, v10, v8, v9}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lvb6;->FEATURE_VIEW:Lvb6;

    new-instance v8, Lvb6;

    const/16 v9, 0x8

    const-string v10, "$feature_interaction"

    const-string v11, "FEATURE_INTERACTION"

    invoke-direct {v8, v11, v9, v10}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lvb6;->FEATURE_INTERACTION:Lvb6;

    new-instance v9, Lvb6;

    const/16 v10, 0x9

    const-string v11, "$exception"

    const-string v12, "EXCEPTION"

    invoke-direct {v9, v12, v10, v11}, Lvb6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lvb6;->EXCEPTION:Lvb6;

    filled-new-array/range {v0 .. v9}, [Lvb6;

    move-result-object v0

    sput-object v0, Lvb6;->$VALUES:[Lvb6;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lvb6;->$ENTRIES:Lg03;

    new-instance v0, Lvb6$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvb6;->Companion:Lvb6$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lvb6;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvb6;
    .locals 1

    const-class v0, Lvb6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvb6;

    return-object p0
.end method

.method public static values()[Lvb6;
    .locals 1

    sget-object v0, Lvb6;->$VALUES:[Lvb6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvb6;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvb6;->event:Ljava/lang/String;

    return-object p0
.end method
