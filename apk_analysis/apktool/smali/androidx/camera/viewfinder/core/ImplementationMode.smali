.class public final enum Landroidx/camera/viewfinder/core/ImplementationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/ImplementationMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/viewfinder/core/ImplementationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Landroidx/camera/viewfinder/core/ImplementationMode;

.field public static final Companion:Landroidx/camera/viewfinder/core/ImplementationMode$Companion;

.field public static final enum EMBEDDED:Landroidx/camera/viewfinder/core/ImplementationMode;

.field public static final enum EXTERNAL:Landroidx/camera/viewfinder/core/ImplementationMode;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Landroidx/camera/viewfinder/core/ImplementationMode;
    .locals 2

    sget-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->EXTERNAL:Landroidx/camera/viewfinder/core/ImplementationMode;

    sget-object v1, Landroidx/camera/viewfinder/core/ImplementationMode;->EMBEDDED:Landroidx/camera/viewfinder/core/ImplementationMode;

    filled-new-array {v0, v1}, [Landroidx/camera/viewfinder/core/ImplementationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/viewfinder/core/ImplementationMode;

    const-string v1, "EXTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/viewfinder/core/ImplementationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->EXTERNAL:Landroidx/camera/viewfinder/core/ImplementationMode;

    new-instance v0, Landroidx/camera/viewfinder/core/ImplementationMode;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/viewfinder/core/ImplementationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->EMBEDDED:Landroidx/camera/viewfinder/core/ImplementationMode;

    invoke-static {}, Landroidx/camera/viewfinder/core/ImplementationMode;->$values()[Landroidx/camera/viewfinder/core/ImplementationMode;

    move-result-object v0

    sput-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->$VALUES:[Landroidx/camera/viewfinder/core/ImplementationMode;

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->$ENTRIES:Lg03;

    new-instance v0, Landroidx/camera/viewfinder/core/ImplementationMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/viewfinder/core/ImplementationMode$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->Companion:Landroidx/camera/viewfinder/core/ImplementationMode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/camera/viewfinder/core/ImplementationMode;->id:I

    return-void
.end method

.method public static final synthetic access$getId$p(Landroidx/camera/viewfinder/core/ImplementationMode;)I
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/ImplementationMode;->id:I

    return p0
.end method

.method public static final fromId(I)Landroidx/camera/viewfinder/core/ImplementationMode;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->Companion:Landroidx/camera/viewfinder/core/ImplementationMode$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/viewfinder/core/ImplementationMode$Companion;->fromId(I)Landroidx/camera/viewfinder/core/ImplementationMode;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Landroidx/camera/viewfinder/core/ImplementationMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/viewfinder/core/ImplementationMode;
    .locals 1

    const-class v0, Landroidx/camera/viewfinder/core/ImplementationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/viewfinder/core/ImplementationMode;

    return-object p0
.end method

.method public static values()[Landroidx/camera/viewfinder/core/ImplementationMode;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ImplementationMode;->$VALUES:[Landroidx/camera/viewfinder/core/ImplementationMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/viewfinder/core/ImplementationMode;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/ImplementationMode;->id:I

    return p0
.end method
