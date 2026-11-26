.class public final Lyads/af1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lyads/xr2;


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/g12;->e:Lyads/g12;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/af1;->c:Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/as2;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lyads/af1;->a:Lyads/as2;

    .line 12
    iput-object p2, p0, Lyads/af1;->b:Lyads/as2;

    return-void
.end method

.method public constructor <init>(Lyads/xr2;)V
    .locals 1

    sget-object v0, Lyads/af1;->c:Lyads/xr2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/af1;->a:Lyads/as2;

    iput-object p1, p0, Lyads/af1;->b:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/af1;Lyads/fs2;Lyads/fs2;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p0, p1, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
