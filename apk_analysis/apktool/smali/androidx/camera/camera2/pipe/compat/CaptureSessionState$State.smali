.class final enum Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/CaptureSessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

.field public static final enum CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

.field public static final enum CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

.field public static final enum CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

.field public static final enum CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

.field public static final enum PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;


# direct methods
.method private static final synthetic $values()[Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
    .locals 5

    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    const-string v1, "CREATING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    const-string v1, "CREATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    const-string v1, "CLOSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->$values()[Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->$VALUES:[Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->$ENTRIES:Lg03;

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

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
    .locals 1

    const-class v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    return-object p0
.end method

.method public static values()[Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->$VALUES:[Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    return-object v0
.end method
