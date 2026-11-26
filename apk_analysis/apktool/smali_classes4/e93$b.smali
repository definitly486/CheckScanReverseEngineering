.class public final enum Le93$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le93$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Le93$b;

.field public static final enum MAP:Le93$b;

.field public static final enum PACKED_VECTOR:Le93$b;

.field public static final enum SCALAR:Le93$b;

.field public static final enum VECTOR:Le93$b;


# instance fields
.field private final isList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Le93$b;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le93$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le93$b;->SCALAR:Le93$b;

    new-instance v1, Le93$b;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Le93$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le93$b;->VECTOR:Le93$b;

    new-instance v3, Le93$b;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Le93$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le93$b;->PACKED_VECTOR:Le93$b;

    new-instance v4, Le93$b;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Le93$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le93$b;->MAP:Le93$b;

    filled-new-array {v0, v1, v3, v4}, [Le93$b;

    move-result-object v0

    sput-object v0, Le93$b;->$VALUES:[Le93$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Le93$b;->isList:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le93$b;
    .locals 1

    const-class v0, Le93$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le93$b;

    return-object p0
.end method

.method public static values()[Le93$b;
    .locals 1

    sget-object v0, Le93$b;->$VALUES:[Le93$b;

    invoke-virtual {v0}, [Le93$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le93$b;

    return-object v0
.end method
