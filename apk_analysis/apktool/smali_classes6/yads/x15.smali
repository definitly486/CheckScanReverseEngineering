.class public final Lyads/x15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/g14;


# instance fields
.field public final a:Lyads/vc0;

.field public final b:Lyads/q15;

.field public c:Lyads/sk0;

.field public final d:Lyads/ll0;

.field public final e:I


# direct methods
.method public constructor <init>(Lyads/vc0;Lyads/zk0;)V
    .locals 2

    new-instance v0, Lvp0;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Lvp0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lyads/sk0;

    invoke-direct {p2}, Lyads/sk0;-><init>()V

    new-instance v1, Lyads/ll0;

    invoke-direct {v1}, Lyads/ll0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/x15;->a:Lyads/vc0;

    iput-object v0, p0, Lyads/x15;->b:Lyads/q15;

    iput-object p2, p0, Lyads/x15;->c:Lyads/sk0;

    iput-object v1, p0, Lyads/x15;->d:Lyads/ll0;

    const/high16 p1, 0x100000

    iput p1, p0, Lyads/x15;->e:I

    return-void
.end method

.method public static synthetic a(Lyads/bt2;Lyads/rw4;)Lyads/ov;
    .locals 0

    .line 33
    new-instance p1, Lyads/ov;

    invoke-direct {p1, p0}, Lyads/ov;-><init>(Lyads/bt2;)V

    return-object p1
.end method


# virtual methods
.method public final a(Lyads/p04;)Lyads/cs;
    .locals 8

    iget-object v0, p1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/y15;

    iget-object v3, p0, Lyads/x15;->a:Lyads/vc0;

    iget-object v4, p0, Lyads/x15;->b:Lyads/q15;

    iget-object v0, p0, Lyads/x15;->c:Lyads/sk0;

    invoke-virtual {v0, p1}, Lyads/sk0;->a(Lyads/p04;)Lyads/xl2;

    move-result-object v5

    iget-object v6, p0, Lyads/x15;->d:Lyads/ll0;

    iget v7, p0, Lyads/x15;->e:I

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lyads/y15;-><init>(Lyads/p04;Lyads/vc0;Lyads/q15;Lyads/xl2;Lyads/ll0;I)V

    return-object v1
.end method

.method public final a(Lyads/sk0;)Lyads/g14;
    .locals 0

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lyads/x15;->c:Lyads/sk0;

    return-object p0

    .line 32
    :cond_0
    const-string p0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
