.class public final Ljo7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Lbh8;

.field public static final c:Lbh8;

.field public static final d:Lbh8;

.field public static final e:Lbh8;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x64

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.semaphore.maxSpinCycles"

    invoke-static {v0, v1, v2}, Lr96;->e(IILjava/lang/String;)I

    move-result v0

    sput v0, Ljo7;->a:I

    new-instance v0, Lbh8;

    const-string v2, "PERMIT"

    invoke-direct {v0, v2}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljo7;->b:Lbh8;

    new-instance v0, Lbh8;

    const-string v2, "TAKEN"

    invoke-direct {v0, v2}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljo7;->c:Lbh8;

    new-instance v0, Lbh8;

    const-string v2, "BROKEN"

    invoke-direct {v0, v2}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljo7;->d:Lbh8;

    new-instance v0, Lbh8;

    const-string v2, "CANCELLED"

    invoke-direct {v0, v2}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljo7;->e:Lbh8;

    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v2, 0x10

    invoke-static {v2, v1, v0}, Lr96;->e(IILjava/lang/String;)I

    move-result v0

    sput v0, Ljo7;->f:I

    return-void
.end method
