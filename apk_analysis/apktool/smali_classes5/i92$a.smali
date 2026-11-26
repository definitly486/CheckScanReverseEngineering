.class public final Li92$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Laj7<",
        "Llc2$b;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Li92$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li92$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Li92$a;->f:Li92$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    new-instance p0, Laj7;

    const-class v0, Llc2$b;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const-class v1, Llc2$c;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-class v2, Llc2$d;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Lne4;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    new-array v2, v3, [Ldf4;

    sget-object v3, Lrc2;->a:Lrc2;

    aput-object v3, v2, v5

    sget-object v3, Lhd5;->a:Lhd5;

    aput-object v3, v2, v1

    const-string v1, "kotlinx.datetime.DateTimeUnit.DateBased"

    invoke-direct {p0, v1, v0, v4, v2}, Laj7;-><init>(Ljava/lang/String;Lzk1;[Lne4;[Ldf4;)V

    return-object p0
.end method
