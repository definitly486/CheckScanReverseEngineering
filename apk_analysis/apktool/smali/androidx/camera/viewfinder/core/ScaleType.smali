.class public final enum Landroidx/camera/viewfinder/core/ScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/ScaleType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/viewfinder/core/ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Landroidx/camera/viewfinder/core/ScaleType;

.field public static final Companion:Landroidx/camera/viewfinder/core/ScaleType$Companion;

.field public static final enum FILL_CENTER:Landroidx/camera/viewfinder/core/ScaleType;

.field public static final enum FILL_END:Landroidx/camera/viewfinder/core/ScaleType;

.field public static final enum FILL_START:Landroidx/camera/viewfinder/core/ScaleType;

.field public static final enum FIT_CENTER:Landroidx/camera/viewfinder/core/ScaleType;

.field public static final enum FIT_END:Landroidx/camera/viewfinder/core/ScaleType;

.field public static final enum FIT_START:Landroidx/camera/viewfinder/core/ScaleType;


# instance fields
.field private final alignment:Landroidx/camera/viewfinder/core/impl/Alignment;

.field private final contentScale:Landroidx/camera/viewfinder/core/impl/ContentScale;

.field private final id:I


# direct methods
.method private static final synthetic $values()[Landroidx/camera/viewfinder/core/ScaleType;
    .locals 6

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleType;->FILL_START:Landroidx/camera/viewfinder/core/ScaleType;

    sget-object v1, Landroidx/camera/viewfinder/core/ScaleType;->FILL_CENTER:Landroidx/camera/viewfinder/core/ScaleType;

    sget-object v2, Landroidx/camera/viewfinder/core/ScaleType;->FILL_END:Landroidx/camera/viewfinder/core/ScaleType;

    sget-object v3, Landroidx/camera/viewfinder/core/ScaleType;->FIT_START:Landroidx/camera/viewfinder/core/ScaleType;

    sget-object v4, Landroidx/camera/viewfinder/core/ScaleType;->FIT_CENTER:Landroidx/camera/viewfinder/core/ScaleType;

    sget-object v5, Landroidx/camera/viewfinder/core/ScaleType;->FIT_END:Landroidx/camera/viewfinder/core/ScaleType;

    filled-new-array/range {v0 .. v5}, [Landroidx/camera/viewfinder/core/ScaleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getFill$p()Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;

    move-result-object v4

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getStart$p()Landroidx/camera/viewfinder/core/impl/Alignment;

    move-result-object v5

    const-string v1, "FILL_START"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/viewfinder/core/ScaleType;-><init>(Ljava/lang/String;IILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleType;->FILL_START:Landroidx/camera/viewfinder/core/ScaleType;

    new-instance v1, Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getFill$p()Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;

    move-result-object v5

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getCenter$p()Landroidx/camera/viewfinder/core/impl/Alignment;

    move-result-object v6

    const-string v2, "FILL_CENTER"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Landroidx/camera/viewfinder/core/ScaleType;-><init>(Ljava/lang/String;IILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V

    sput-object v1, Landroidx/camera/viewfinder/core/ScaleType;->FILL_CENTER:Landroidx/camera/viewfinder/core/ScaleType;

    new-instance v2, Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getFill$p()Landroidx/camera/viewfinder/core/ScaleTypeKt$Fill$1;

    move-result-object v6

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getEnd$p()Landroidx/camera/viewfinder/core/impl/Alignment;

    move-result-object v7

    const-string v3, "FILL_END"

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-direct/range {v2 .. v7}, Landroidx/camera/viewfinder/core/ScaleType;-><init>(Ljava/lang/String;IILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V

    sput-object v2, Landroidx/camera/viewfinder/core/ScaleType;->FILL_END:Landroidx/camera/viewfinder/core/ScaleType;

    new-instance v3, Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getFit$p()Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;

    move-result-object v7

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getStart$p()Landroidx/camera/viewfinder/core/impl/Alignment;

    move-result-object v8

    const-string v4, "FIT_START"

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-direct/range {v3 .. v8}, Landroidx/camera/viewfinder/core/ScaleType;-><init>(Ljava/lang/String;IILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V

    sput-object v3, Landroidx/camera/viewfinder/core/ScaleType;->FIT_START:Landroidx/camera/viewfinder/core/ScaleType;

    new-instance v4, Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getFit$p()Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;

    move-result-object v8

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getCenter$p()Landroidx/camera/viewfinder/core/impl/Alignment;

    move-result-object v9

    const-string v5, "FIT_CENTER"

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-direct/range {v4 .. v9}, Landroidx/camera/viewfinder/core/ScaleType;-><init>(Ljava/lang/String;IILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V

    sput-object v4, Landroidx/camera/viewfinder/core/ScaleType;->FIT_CENTER:Landroidx/camera/viewfinder/core/ScaleType;

    new-instance v5, Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getFit$p()Landroidx/camera/viewfinder/core/ScaleTypeKt$Fit$1;

    move-result-object v9

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleTypeKt;->access$getEnd$p()Landroidx/camera/viewfinder/core/impl/Alignment;

    move-result-object v10

    const-string v6, "FIT_END"

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v5 .. v10}, Landroidx/camera/viewfinder/core/ScaleType;-><init>(Ljava/lang/String;IILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V

    sput-object v5, Landroidx/camera/viewfinder/core/ScaleType;->FIT_END:Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {}, Landroidx/camera/viewfinder/core/ScaleType;->$values()[Landroidx/camera/viewfinder/core/ScaleType;

    move-result-object v0

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleType;->$VALUES:[Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleType;->$ENTRIES:Lg03;

    new-instance v0, Landroidx/camera/viewfinder/core/ScaleType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/viewfinder/core/ScaleType$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/viewfinder/core/ScaleType;->Companion:Landroidx/camera/viewfinder/core/ScaleType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroidx/camera/viewfinder/core/impl/ContentScale;Landroidx/camera/viewfinder/core/impl/Alignment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/viewfinder/core/impl/ContentScale;",
            "Landroidx/camera/viewfinder/core/impl/Alignment;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/camera/viewfinder/core/ScaleType;->id:I

    iput-object p4, p0, Landroidx/camera/viewfinder/core/ScaleType;->contentScale:Landroidx/camera/viewfinder/core/impl/ContentScale;

    iput-object p5, p0, Landroidx/camera/viewfinder/core/ScaleType;->alignment:Landroidx/camera/viewfinder/core/impl/Alignment;

    return-void
.end method

.method public static final fromId(I)Landroidx/camera/viewfinder/core/ScaleType;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleType;->Companion:Landroidx/camera/viewfinder/core/ScaleType$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/viewfinder/core/ScaleType$Companion;->fromId(I)Landroidx/camera/viewfinder/core/ScaleType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Landroidx/camera/viewfinder/core/ScaleType;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleType;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/viewfinder/core/ScaleType;
    .locals 1

    const-class v0, Landroidx/camera/viewfinder/core/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/viewfinder/core/ScaleType;

    return-object p0
.end method

.method public static values()[Landroidx/camera/viewfinder/core/ScaleType;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/ScaleType;->$VALUES:[Landroidx/camera/viewfinder/core/ScaleType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/viewfinder/core/ScaleType;

    return-object v0
.end method


# virtual methods
.method public final getAlignment$viewfinder_core_release()Landroidx/camera/viewfinder/core/impl/Alignment;
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/ScaleType;->alignment:Landroidx/camera/viewfinder/core/impl/Alignment;

    return-object p0
.end method

.method public final getContentScale$viewfinder_core_release()Landroidx/camera/viewfinder/core/impl/ContentScale;
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/ScaleType;->contentScale:Landroidx/camera/viewfinder/core/impl/ContentScale;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/ScaleType;->id:I

    return p0
.end method
