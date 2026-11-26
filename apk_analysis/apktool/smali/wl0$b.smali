.class public final Lwl0$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwl0;-><init>(Ltn0;Ljf6;Ln53;Lbo0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/util/List<",
        "+",
        "Lpz3;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lwl0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwl0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwl0$b;->f:Lwl0$b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance p0, Lwf6;

    invoke-direct {p0}, Lwf6;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lpz3;

    sget-object v1, Li71;->a:Li71;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljw0;->a:Ljw0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lu58;->a:Lu58;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p0, v0, v1

    sget-object p0, Lis3;->a:Lis3;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
