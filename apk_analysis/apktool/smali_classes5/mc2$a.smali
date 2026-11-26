.class public final Lmc2$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmc2;
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
        "Llc2;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lmc2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmc2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lmc2$a;->f:Lmc2$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance p0, Laj7;

    const-class v0, Llc2;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const-class v1, Llc2$c;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-class v2, Llc2$d;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    const-class v3, Llc2$e;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Lne4;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v3, v5, v2

    new-array v3, v4, [Ldf4;

    sget-object v4, Lrc2;->a:Lrc2;

    aput-object v4, v3, v6

    sget-object v4, Lhd5;->a:Lhd5;

    aput-object v4, v3, v1

    sget-object v1, Lfu8;->a:Lfu8;

    aput-object v1, v3, v2

    const-string v1, "kotlinx.datetime.DateTimeUnit"

    invoke-direct {p0, v1, v0, v5, v3}, Laj7;-><init>(Ljava/lang/String;Lzk1;[Lne4;[Ldf4;)V

    return-object p0
.end method
