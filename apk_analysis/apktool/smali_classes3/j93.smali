.class public final Lj93;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj93;

.field public static final b:Ljava/io/File;

.field public static c:I

.field public static d:J

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj93;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj93;->a:Lj93;

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj93;->b:Ljava/io/File;

    const/16 v0, 0x1e

    sput v0, Lj93;->c:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lj93;->d:J

    const/4 v0, 0x1

    sput-boolean v0, Lj93;->e:Z

    return-void
.end method
