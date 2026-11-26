.class public abstract Lyads/fi;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Lyads/xo2;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/xo2;)V
    .locals 3

    invoke-direct {p0}, Lyads/u13;-><init>()V

    iput-object p1, p0, Lyads/fi;->a:Lyads/xo2;

    new-instance p1, Lyads/w13;

    sget-object v0, Lyads/xo2;->k:Lyads/xo2;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v0, Lyads/w13;

    sget-object v2, Lyads/xo2;->c:Lyads/xo2;

    invoke-direct {v0, v2, v1}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {p1, v0}, [Lyads/w13;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/fi;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/fi;->b:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/fi;->a:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
