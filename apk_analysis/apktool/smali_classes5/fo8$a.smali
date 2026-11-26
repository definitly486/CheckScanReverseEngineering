.class public final enum Lfo8$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfo8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfo8$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfo8$a;

.field public static final enum CHECKBOX_TASK:Lfo8$a;
    .annotation runtime Lbq7;
        value = "CHECKBOX_TASK"
    .end annotation
.end field

.field public static final enum DETAILED:Lfo8$a;
    .annotation runtime Lbq7;
        value = "DETAILED"
    .end annotation
.end field

.field public static final enum GROUPED_TASKS:Lfo8$a;
    .annotation runtime Lbq7;
        value = "GROUPED_TASKS"
    .end annotation
.end field

.field public static final enum PROMOCODE_TASK:Lfo8$a;
    .annotation runtime Lbq7;
        value = "PROMOCODE_TASK"
    .end annotation
.end field

.field public static final enum SIMPLE:Lfo8$a;
    .annotation runtime Lbq7;
        value = "SIMPLE"
    .end annotation
.end field

.field public static final enum SIMPLE_WITH_CHECKBOX_SUBTASKS:Lfo8$a;
    .annotation runtime Lbq7;
        value = "SIMPLE_WITH_CHECKBOX_SUBTASKS"
    .end annotation
.end field

.field public static final enum SIMPLE_WITH_REWARD_SUBTASKS:Lfo8$a;
    .annotation runtime Lbq7;
        value = "SIMPLE_WITH_REWARD_SUBTASKS"
    .end annotation
.end field

.field public static final enum SIMPLE_WITH_SUBTASKS:Lfo8$a;
    .annotation runtime Lbq7;
        value = "SIMPLE_WITH_SUBTASKS"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lfo8$a;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfo8$a;->SIMPLE:Lfo8$a;

    new-instance v1, Lfo8$a;

    const-string v2, "DETAILED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lfo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfo8$a;->DETAILED:Lfo8$a;

    new-instance v2, Lfo8$a;

    const-string v3, "SIMPLE_WITH_SUBTASKS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lfo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfo8$a;->SIMPLE_WITH_SUBTASKS:Lfo8$a;

    new-instance v3, Lfo8$a;

    const-string v4, "SIMPLE_WITH_REWARD_SUBTASKS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lfo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfo8$a;->SIMPLE_WITH_REWARD_SUBTASKS:Lfo8$a;

    new-instance v4, Lfo8$a;

    const-string v5, "PROMOCODE_TASK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lfo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lfo8$a;->PROMOCODE_TASK:Lfo8$a;

    new-instance v5, Lfo8$a;

    const-string v6, "GROUPED_TASKS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lfo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfo8$a;->GROUPED_TASKS:Lfo8$a;

    new-instance v6, Lfo8$a;

    const-string v7, "CHECKBOX_TASK"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lfo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lfo8$a;->CHECKBOX_TASK:Lfo8$a;

    new-instance v7, Lfo8$a;

    const-string v8, "SIMPLE_WITH_CHECKBOX_SUBTASKS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lfo8$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfo8$a;->SIMPLE_WITH_CHECKBOX_SUBTASKS:Lfo8$a;

    filled-new-array/range {v0 .. v7}, [Lfo8$a;

    move-result-object v0

    sput-object v0, Lfo8$a;->$VALUES:[Lfo8$a;

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

.method public static valueOf(Ljava/lang/String;)Lfo8$a;
    .locals 1

    const-class v0, Lfo8$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfo8$a;

    return-object p0
.end method

.method public static values()[Lfo8$a;
    .locals 1

    sget-object v0, Lfo8$a;->$VALUES:[Lfo8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfo8$a;

    return-object v0
.end method
