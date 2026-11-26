.class public final Le13;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbh8;

.field public static final b:Lbh8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbh8;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Le13;->a:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Le13;->b:Lbh8;

    return-void
.end method

.method public static a(I)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, -0x3361d2af

    mul-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x1b873593

    mul-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
